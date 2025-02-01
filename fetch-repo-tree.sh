# receive owner and repo name as arguments
# validate arguments
if [ $# -ne 2 ]; then
  echo "Usage: $0 <owner> <repo>"
  exit 1
fi

# set variables
owner=$1
repo=$2

gh api \
  -H "Accept: application/vnd.github+json" \
  -H "X-GitHub-Api-Version: 2022-11-28" \
  /repos/$owner/$repo/git/trees/master
