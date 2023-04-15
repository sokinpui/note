# Push a existing directory as repository
From command line using git
```sh
echo "# config" >> README.md
git init
git add README.md
git commit -m "first commit"
git branch -M main
git remote add origin https://github.com/sokinpui/config.git
git push -u origin main
```
Push the current directory into the repository `config.git`.

Use github cli
```sh
gh repo create
```
