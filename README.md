# Jenkins-Dockerfile

This is my custom Dockerfile for Jenkins setup.

## Heroku
Deploy Jenkins into Heroku
[Document](https://devcenter.heroku.com/articles/container-registry-and-runtime#getting-started)
Create a Heroku App:
```shell
heroku create
```
Build the image and push to Container Registry:
```shell
heroku container:push web -a appName
```
Then release the image to your app:
```shell
heroku container:release web -a appName
```
Now open the app in your browser:
```shell
heroku open -a appName
```
Check logs to find password of admin:
```shell
heroku logs --tail -a appName
```
