import argparse
from dataclasses import dataclass
from datetime import datetime


@dataclass(frozen=True)
class TableEntry:
    name: str
    type: str
    comment: str


def get_table_entry(curr_line: str) -> TableEntry:
    comment = curr_line.split(" COMMENT ")[-1][:-1].replace("'", "")
    name, data_type = curr_line.split(" COMMENT ")[0].replace(", ", ",").split()
    return TableEntry(name, data_type, comment)


def get_table_from_sql(sql_path: str) -> tuple:
    with open(sql_path, "r", encoding="utf8") as file_opened:
        lines = file_opened.readlines()
    name, cols, comment = None, [], None
    for i in range(len(lines)):
        curr_line = lines[i].strip()
        if i == 0:
            name = curr_line.split("CREATE TABLE IF NOT EXISTS TABLE ")[-1][:-2]
        if 0 < i < len(lines) - 3:
            cols.append(get_table_entry(curr_line))
        if i == len(lines) - 2:
            comment = curr_line.split("=")[-1].replace("'", "")
    cat = sql_path.split(f"_{name}.sql")[0].split("/")[-1]
    return cat, name, cols, comment


def entry_exists(tag: str, lines: list) -> bool:
    for line in lines:
        if line.rstrip() == f"<!--start_{tag}-->":
            return True
    return False


def replace_existing_entry(tag: str, new_entry: str, file_contents: str, lines: list) -> str:
    # get existing str
    existing_str = ""
    started = False
    for line in lines:
        if line.rstrip() == f"<!--start_{tag}-->":
            started = True
        elif line.rstrip() == f"<!--end_{tag}-->":
            started = False
            existing_str += line
        if started:
            existing_str += line
    # replace string
    return file_contents.replace(existing_str, new_entry)


def write_to_readme(readme_path: str, category: str, table_name: str, columns: list, comment: str) -> bool:
    tag = table_name.lower()
    new_entry = f"""<!--start_{tag}-->

### {table_name}
Updated on {datetime.now().date()}, {datetime.now().strftime("%H:%M:%S")}

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
"""
    for col in columns:
        new_entry += f"| `{col.name}` | {col.type} | {col.comment} |\n"

    new_entry += f"""
#### Comment
{comment}

<!--end_{tag}-->
"""
    try:
        with open(readme_path, 'r') as file:
            file_contents = file.read()
        with open(readme_path, 'r') as file:
            lines = file.readlines()
        if entry_exists(tag, lines):
            print(f"Found existing {table_name}. Will replace it.")
            # do replacement
            modified_contents = replace_existing_entry(tag, new_entry, file_contents, lines)
        else:
            # create new entry
            print(f"Haven't found an existing {table_name}. Will create it.")
            new_entry = f"""<!--start_{category}-->\n\n""" + new_entry
            modified_contents = file_contents.replace(f"<!--start_{category}-->", new_entry)
        with open(readme_path, 'w') as file:
            file.write(modified_contents)

        print(f'Successfully updated/added {table_name} in {readme_path}.')

    except FileNotFoundError:
        print(f'Error: File "{readme_path}" not found.')

    except Exception as e:
        print(f'An error occurred while replacing the string: {str(e)}')

    return True


def add_to_readme(sql_path: str, readme_path: str) -> bool:
    cat, name, columns, comment = get_table_from_sql(sql_path=sql_path)
    return write_to_readme(readme_path=readme_path,
                           category=cat,
                           table_name=name,
                           columns=columns,
                           comment=comment)


def main():
    parser = argparse.ArgumentParser(description="Add sql table creation to README.md.")
    parser.add_argument("sql_path", type=str, help="path to the sql file")
    parser.add_argument("readme_path", type=str, help="path to README template")
    args = parser.parse_args()

    res = add_to_readme(sql_path=args.sql_path, readme_path=args.readme_path)
    if res:
        print("Successful.")
    else:
        print("Something went wrong. Please try again.")


if __name__ == "__main__":
    main()
