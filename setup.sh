function delete_labels() {
  REPO=$1
  declare -a labels=("bug" "documentation" "duplicate" "enhancement" "good first issue" "help wanted" "invalid" "question" "wontfix")

  for label in "${labels[@]}"; do
    gh label delete -R "AutoStrike-EIP/$REPO" "$label" --yes 2>/dev/null
  done
}

function create_labels() {
  REPO=$1

  declare -a labels=(
    "wontfix" "This will not be worked on" "#c2e0c6"
    "question" "Further information is requested" "#c2e0c6"
    "help wanted" "Extra attention is needed" "#c2e0c6"
    "invalid" "This doesn't seem right" "#b60205"
    "duplicate" "This issue or pull request already exists" "#b60205"
    "test" "Require additional tests" "#0052cc"
    "refactor" "Refactor some code" "#0052cc"
    "feature" "New feature or request" "#0052cc"
    "documentation" "Improvements or additions to documentation" "#0052cc"
    "bug" "Something isn't working" "#0052cc"
    "agent" "This concern the agent" "#5319e7"
    "server" "This concern the server" "#5319e7"
    "proxy" "This concern the proxy" "#5319e7"
    "dashboard" "This concern the dashboard" "#5319e7"
  )

  size=$((${#labels[@]} - 1))
  for i in $(seq 0 3 $size); do
    name="${labels[$i]}"
    desc="${labels[$(($i + 1))]}"
    color="${labels[$(($i + 2))]}"
    echo "[$i] $name : $desc ($color)"
    gh label create -R "AutoStrike-EIP/$REPO" "${labels[$i]}" -c "${labels[$(($i + 2))]}" --description "${labels[$(($i + 1))]}" 2>/dev/null
  done
}

delete_labels Server
delete_labels Agent
delete_labels Proxy
delete_labels Dashboard

create_labels Server
create_labels Agent
create_labels Proxy
create_labels Dashboard
