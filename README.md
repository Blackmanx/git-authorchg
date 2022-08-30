# Git-authorchg

This bash script uses `git replace` and `git filter-branch`, changing the authorship of a previous commit with the --author on `git commit`.

## Installation

### Clone the repository

Open a terminal and run the following git command:

```
git clone https://github.com/Blackmanx/git-authorchg.git
```

- Now move git-authorchg.sh into your git repository

### Run script
```
bash git-authorchg.sh
```

- Introduce the commit you want to change
- Introduce the author with the format `Author <email@domain.com>`
- Introduce your original branch
- Wait for a while for filter-branch to do its job

**This will force push!**

## Source

https://stackoverflow.com/questions/3042437/how-to-change-the-commit-author-for-a-single-commit
