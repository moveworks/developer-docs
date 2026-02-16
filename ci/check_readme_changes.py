import os
import subprocess

commit_id = os.getenv("GH_SHA_PR_HEAD")
main_head = os.getenv('GH_SHA_MAIN_HEAD')
print(f"Processing {commit_id} (PR Head) against {main_head}")

# Fetch the PR branch
subprocess.run(
    f"git fetch origin +refs/pull/{os.getenv('GH_PR_NUMBER')}/merge:", shell=True
)
# Check out the FETCH_HEAD as it represents the PR branch
subprocess.run("git checkout FETCH_HEAD", shell=True)
# Get the diff with the main branch
changed_files = subprocess.getoutput(f"git diff --name-only {main_head}")

print("Retrieved the following changed files")
print(changed_files)

env_file = os.getenv("GITHUB_OUTPUT")


comment_message = ""
for file in changed_files.split("\n"):
    if file.endswith("README.md"):
        file_parts = file.split("/")
        # Skip root-level README.md files
        if len(file_parts) < 2:
            continue
        top_directory = file_parts[0] # Keep the plural form (connectors/plugins)
        item_name = file_parts[1]
        comment_message += f"Changes to {file} can be viewed at https://marketplace.moveworks.com/{top_directory}/{item_name}?commit_id={commit_id}; "

print(f"Writing output: '{comment_message}' to {env_file}")
with open(env_file, "a") as f:
    f.write(f"comment_message={comment_message}\n")
