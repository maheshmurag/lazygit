function g() {
    git add .
    git commit -a -m "$*"
    git push
}