# Count LOC of a repo
# Ref: https://stackoverflow.com/questions/4822471/count-number-of-lines-in-a-git-repository
git ls-files | xargs wc -l
