echo "Starting resync"

# Check if .env file exists and read remote name from it; default to 'upstream'
if [ -f "./ci/.env" ]; then
    # Load the variables in .env
    export $(cat ./ci/.env | grep -v '#' | awk '/=/ {print $1}')
    # Check if remote variable is set, if not default to 'upstream'
    remote="${remote:-upstream}"
    echo "Using remote: $remote"
else
    remote="upstream"
fi

# Use the determined remote for git operations
git checkout main
git pull -r $remote main

./ci/copy_from_notion.sh

# Initialize a counter for the number of attempts
attempt_counter=0

# Run the second script up to 3 times if it fails
for attempt in {1..3}; do
    python -m ci.notion_db_to_plugin_files 2>&1 && break
    echo "--------------------------"
    echo "NotionDB copy attempt $attempt failed. Retrying..."
    ((attempt_counter++)) # Increment the attempt counter
    
    # Check if it has failed 3 times
    if [[ $attempt_counter -eq 3 ]]; then
        echo "Failed to copy from NotionDB after 3 attempts. Exiting..."
        exit 1
    fi
done

python -m ci.validate_v2 --delete-no-pc 2>&1

branch_name="resync_$(date +%Y_%m_%d)"

# Check if the branch exists
if git show-ref --quiet refs/heads/"$branch_name"; then
    # If the branch already exists, delete it first
    echo "Branch $branch_name exists. Deleting the branch before creating a new one."
    git branch -D "$branch_name"
else
    echo "Branch $branch_name does not exist. Creating a new one."
fi
git checkout -b "$branch_name"
git add .
git commit -m "Resync to Notion $branch_name"

# Run git push and capture the output
output=$(git push --set-upstream $remote $branch_name 2>&1)
echo "$output"

# Use grep to find the URL in the output.
pull_request_url=$(echo "$output" | grep -o 'https://github.com[^ ]*pull/new/[^ ]*')

if [ ! -z "$pull_request_url" ]; then
    echo "To open a pull request, visit: $pull_request_url"
    # Depending on the OS, use either `open` (for MacOS) or `xdg-open` (for Linux) to open the URL in the default web browser.
    if [ "$(uname)" == "Darwin" ]; then
        open "$pull_request_url"
    elif [ "$(expr substr $(uname -s) 1 5)" == "Linux" ]; then
        xdg-open "$pull_request_url"
    else
        echo "Automatic opening of URLs is not supported on this platform. Please open the URL manually."
        echo "$pull_request_url"
    fi
else
    echo "Pull request URL not found."
fi