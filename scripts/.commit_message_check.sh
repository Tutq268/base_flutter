GREEN='\033[1;32m'
RED='\033[0;31m'

echo "${GREEN}========================Check Commit Message======================="

commitMessageFile=".git/COMMIT_EDITMSG"
commitMessage=""

if [  -e "$commitMessageFile"  ]; then
    commitMessage=$(cat "$commitMessageFile")
fi

if [ -n "$CI_COMMIT_TITLE" ]; then
    commitMessage=$CI_COMMIT_TITLE
fi


isValidCommitMessage() {
    echo "$commitMessage"
    local pattern="^((enhance|cr|feat|fix|chore|docs|style|refactor|perf|test|build|ci|revert)(\(.+\))?:)|(Merge branch)(\(.+\))? .+"
    [[ $1 =~ $pattern ]]
}

if ! isValidCommitMessage "$commitMessage"; then
    echo "${RED}👎 Invalid commit message format."
    echo "${RED}Commit message should follow the Conventional Commits format."
    echo "${RED}========================Check Commit Message Failed======================="
    exit 1
fi

echo "👍 Valid commit message!"
echo "${GREEN}========================Check Commit Message Finish======================="
exit 0

