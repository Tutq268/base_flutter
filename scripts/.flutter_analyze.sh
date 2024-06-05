GREEN='\033[1;32m'
RED='\033[0;31m'

echo "${GREEN}========================Flutter Analyze Start======================="
RESULT=""

if hash fvm 2>/dev/null; then
  echo "Using FVM flutter version"
  RESULT=$(fvm dart analyze --fatal-infos --no-fatal-warnings)
else
  echo "Using LOCAL flutter version"
  RESULT=$(dart analyze --fatal-infos --no-fatal-warnings)
fi

if [[ $RESULT == *"info "* ]] || [[ $RESULT == *"warning "* ]]; then
    echo "${RED}----> Some files have linter fatal errors, please check Dart Analysis"
    echo "${RESULT}"
    exit 1
else
    echo "----> All analyzes are good :)"
fi
echo "${GREEN}========================Flutter Analyze Finish======================="
