# Husky setup to protect branches using git hooks

## Follow these steps every time you download a new project

- "npm install -D husky" to install the Husky package

- Add these scripts in the package.json scripts:

  - "prepare:husky": "husky install"
  - "prepare:husky-permissions-mac-linux": "sh .husky/config-husky-mac-linux.sh"

- Run "npm run prepare:husky" to install Husky hooks

- Copy the the .husky/ folder content in the .husky/ folder created by Husky in the repo after the installation

- In case you've got any trouble running Husky hooks on Linux or MacOS, run: "npm run prepare:husky-permissions-mac-linux"

- You are ready to go :)
