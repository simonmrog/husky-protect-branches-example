# Husky setup to protect branches using git hooks

## Follow these steps every time you download a new project

- "npm install -D husky" to install the Husky package

- Copy the the .husky/ folder in the root directory of the repo you want to work on

- Add these scripts in the package.json scripts:

  - "prepare:husky": "husky install"
  - "prepare:husky-permissions-mac-linux": "sh .husky/config-husky-mac-linux.sh"

- In case you've got any trouble running Husky hooks, run: "npm run prepare:husky-permissions-mac-linux"

- You are ready to go :)
