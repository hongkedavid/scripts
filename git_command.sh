# Count LOC of a repo
# Ref: https://stackoverflow.com/questions/4822471/count-number-of-lines-in-a-git-repository
git ls-files | xargs wc -l

# Diff file across branches
# Ref: https://stackoverflow.com/questions/4099742/how-to-compare-files-from-two-different-branches
git diff $branch1 $branch2 -- $file

# Diff file across tags
# Ref: https://stackoverflow.com/questions/3211809/how-to-compare-two-tags-with-git
git diff $tag1 $tag2 -- $file
