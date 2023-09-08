## Dependencies

- [appleboy/scp-action](https://github.com/appleboy/scp-action)

# Downs Arabian Club Inc.

A side project to replace the previously Wordpress hosted website for The Downs Arabian Club. 

Available to view online at [https://www.downsarabianclub.com.au/](https://www.downsarabianclub.com.au/)

# Local Development
```
flutter run -d chrome --release
```

# Deployment
Github action set to run automatically upon a new Tag, following SemVer

```
git tag v1.5.0
git push origin --tags```