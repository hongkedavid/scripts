# Find symbolic links recrusively from current directory
ls -lR . | grep ^l

# List disk usage of current directory
sudo du --max-depth=1 -lh
