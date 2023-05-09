When I tru to use luke smith st configuration, it comes that I can't not push my
modified version to remote repo.
Report that:
```sh
error: failed to push some refs to 'remote_repo_url'
```
``sh
git remote add old <path-to-old-remote>
git fetch --unshallow old
```
 
Then I can push to my repo now.
