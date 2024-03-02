import os
import subprocess

commit_id = os.getenv("GITHUB_SHA")
changed_files = subprocess.getoutput(f"git diff --name-only HEAD~1..HEAD")

comment_message = ""
for file in changed_files.split("\n"):
    if file.endswith("README.md"):
        file_parts = file.split("/")
        top_directory = file_parts[0][:-1] # First directory, trimming the "s" at the end
        second_directory = file_parts[1]
        comment_message += f"Changes to {file} can be viewed at https://developer.moveworks.com/creator-studio/resources/{top_directory}?id={second_directory}&commit_id={commit_id}\n"

print(f"::set-output name=comment_message::{comment_message}")
