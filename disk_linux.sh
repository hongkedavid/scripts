# Find symbolic links recrusively from current directory
# Ref: https://stackoverflow.com/questions/8513133/how-do-i-find-all-of-the-symlinks-in-a-directory-tree
ls -lR . | grep ^l

# List disk usage of current directory
sudo du --max-depth=1 -lh

# List usage of different partitions
df -lh 
