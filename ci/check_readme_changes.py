import os
import subprocess

commit_id = os.getenv("GITHUB_SHA")
print(f"Processing {commit_id}")
changed_files = subprocess.getoutput(f"git diff --name-only HEAD~1..HEAD")

print("Retrieved the following changed files")
print(changed_files)

env_file = os.getenv("GITHUB_OUTPUT")


comment_message = ""
for file in changed_files.split("\n"):
    if file.endswith("README.md"):
        file_parts = file.split("/")
        top_directory = file_parts[0][:-1] # First directory, trimming the "s" at the end
        second_directory = file_parts[1]
        comment_message += f"Changes to {file} can be viewed at https://developer.moveworks.com/creator-studio/resources/{top_directory}?id={second_directory}&commit_id={commit_id}\n"

print(f"Writing output: '{comment_message}' to {env_file}")
with open(env_file, "a") as f:
    f.write(f"comment_message={comment_message}\n")
