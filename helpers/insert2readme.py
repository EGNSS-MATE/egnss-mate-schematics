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
    name, data_type = curr_line.split(" COMMENT ")[0].split()
    return TableEntry(name, data_type, comment)


def get_table_from_sql(sql_path: str) -> tuple:
    with open(sql_path, "r", encoding="utf8") as file_opened:
        lines = file_opened.readlines()
    name, cols, comment = None, [], None
    for i in range(len(lines)):
        curr_line = lines[i].strip()
        if i == 0:
            name = curr_line.split("CREATE TABLE IF NOT EXISTS ")[-1]
        if 1 < i < len(lines) - 2:
            cols.append(get_table_entry(curr_line))
        if i == len(lines) - 1:
            comment = curr_line.split("COMMENT = ")[-1].replace("'", "")
    cat = sql_path.split(f"_{name}.sql")[0].split("/")[-1]
    return cat, name, cols, comment


def write_to_readme(readme_path: str, category: str, table_name: str, columns: list, comment: str) -> bool:
    new_entry = f"""<!--start_{category}-->

### {table_name}
Updated on {datetime.now().date()}, {datetime.now().time()}

#### Definition
| Variable | Type | Comment |
| --- | --- | --- |
"""
    for col in columns:
        new_entry += f"| `{col.name}` | {col.type} | {col.comment} |\n"

    new_entry += f"""
#### Comment
{comment}"""
    try:
        with open(readme_path, 'r') as file:
            file_contents = file.read()
        modified_contents = file_contents.replace(f"<!--start_{category}-->", new_entry)
        with open(readme_path, 'w') as file:
            file.write(modified_contents)

        print(f'Successfully replaced "<!--start_{category}-->" in {readme_path}.')

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
        print("Successfully")
    else:
        print("Something went wrong. Please try again.")


if __name__ == "__main__":
    main()
