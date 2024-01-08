import os
import sys
from markdown_it import MarkdownIt
from markdown_it.rules_block import StateBlock
from pygments.lexers import get_lexer_by_name, guess_lexer
from typing import List


def find_markdown_files(directory_path):
    markdown_files = []
    for dirpath, _, files in os.walk(directory_path):
        for file_name in files:
            if file_name.endswith(".md"):
                markdown_files.append(os.path.join(dirpath, file_name))
    return markdown_files


def detect_language(code):
    language_keywords = [  # Extends the Lexer if it fails
        # ("*.py", ["def", "import", "print"]), # Example line -- to be updated as needed
    ]
    for ext, keywords in language_keywords:
        if any(keyword in code for keyword in keywords):
            return ext
    try:
        guessed_lexer = guess_lexer(code)
        return guessed_lexer.aliases[0]
    except ValueError:
        return None


def get_language_by_name(name: str):
    if name == "jsx":
        return "*.js"
    else:
        lexer = get_lexer_by_name(name)
        return lexer.filenames[0]


def extract_code_blocks_from_file(file_path: str):
    mdit = MarkdownIt("commonmark")
    code_blocks = []

    with open(file_path, "r") as f:
        md_content = f.read()
        tokens = mdit.parse(md_content)

        for token in tokens:
            if token.type == "fence" and token.content:
                language_extension = detect_language(token.content)
                try:
                    language_extension = get_language_by_name(token.info.strip())
                except ValueError:
                    print(
                        f"Warning: No explicit language defined for code block in {file_path}:\n{token.content}"
                    )

                if language_extension == "text":
                    language_extension = "*.txt"

                code_blocks.append(
                    {
                        "index": len(code_blocks),
                        "file_extension": language_extension,
                        "contents": token.content,
                    }
                )
    return code_blocks


def create_code_files_from_blocks(file_path: str, code_blocks: List[dict]):
    directory = os.path.join(os.path.dirname(file_path), ".codeblocks")
    os.makedirs(directory, exist_ok=True)

    # if we have no code blocks, delete the dir if exists and exit early
    if not code_blocks:
        if os.path.exists(directory) and os.path.isdir(directory):
            os.rmdir(directory)
        return False, []

    original_files = set(os.listdir(directory))  # get all files currently in directory
    newly_created_files = set()  # store the names of created/modified files
    changes_made = False

    for block in code_blocks:
        file_extension = block["file_extension"].lstrip("*")
        filename = f"block_{block['index']}{file_extension}"
        blob_file_path = os.path.join(directory, filename)

        # check if file already exists
        if os.path.exists(blob_file_path):
            with open(blob_file_path, "r") as blob_file:
                existing_data = blob_file.read()
                # check if contents are the same, if not update it
                if existing_data != block["contents"]:
                    changes_made = True
        else:
            changes_made = True

        # Write file
        with open(blob_file_path, "w") as blob_file:
            blob_file.write(block["contents"])
        newly_created_files.add(filename)

    # delete all untouched files
    for old_file in original_files.difference(newly_created_files):
        os.remove(os.path.join(directory, old_file))

    return changes_made, list(newly_created_files)


def main():
    guide_files = find_markdown_files("./authentication-guides")
    guide_files += find_markdown_files("./use-case-guides")
    guide_files += find_markdown_files("./design-patterns")

    changes_made_anywhere = False

    summary = {}

    for f in guide_files:
        code_blocks = extract_code_blocks_from_file(f)
        change_detected, created_files = create_code_files_from_blocks(f, code_blocks)
        summary[f] = len(code_blocks)

        if change_detected:
            print(
                f"Change detected in file '{f}'. Created/modified the following files:"
            )
            print("\n".join(created_files))
            changes_made_anywhere = True
            print("----------------------------")

    if changes_made_anywhere:
        sys.exit(1)
    else:
        print("All code blocks are up to date.")
        for fn, num_blocks in summary.items():
            print(fn, num_blocks)


if __name__ == "__main__":
    main()
