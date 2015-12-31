function g() {
    addOut=$(git add .);
    if [[ "$addOut" == *"fatal"* ]]
    then
        commitOut=$(git commit -a -m "$*")
        if [[ "$commitOut" == *"fatal"* ]]
        then
            pushOut=$(git push)
        fi
    fi
}