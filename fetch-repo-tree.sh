# receive owner, repo and default branch name as arguments
# validate arguments
if [ $# -ne 3 ]; then
  echo "Usage: $0 <owner> <repo> <branch>"
  exit 1
fi

# set variables
owner=$1
repo=$2
branch=$3

gh api \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  /repos/$owner/$repo/git/trees/$branch?recursive=1
