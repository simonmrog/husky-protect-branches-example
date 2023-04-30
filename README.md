# Husky setup to protect branches using git hooks

## Follow these steps every time you download a new project

- Copy the content of the .husky/ folder on the repo you want to work on
- Run: "npm install" to install the husky dependency
- Add this script in the package.json scripts:
  "prepare:husky": "husky install && sh .husky/config-husky.sh
- Run: "npm run prepare:husky"
- You are ready to go :)
