#!/bin/zsh

# 1. Setup variables
REPO_DIR="/Users/macbookpro/Documents/GitHub/privaterepo_two"
FILENAME="a_$(date +%u)_$(date +%d).pl"

# 2. Action
cd "$REPO_DIR"
echo "# Sync: $(date)" >> "$FILENAME"

# 3. Push
git add "$FILENAME"
git commit -m "chore: sync $FILENAME [skip ci]"
git push origin master 
