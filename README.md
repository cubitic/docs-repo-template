
The site uses:
- [Hugo](https://gohugo.io/documentation/), a simple static site generator
- [docdock](https://docdock.vjeantet.fr/), a documentation theme for Hugo
- [A docker image of nginx to serve the content](https://hub.docker.com/_/nginx)


## Running locally
You will need to install Hugo:
```
brew install hugo
```

Then package up the site and run with Docker (you will need the Docker daemon running)
```
. ./bin/package.sh
docker run -p 1312:1312 docs-repo-template
```

Then you can see the site at http://localhost:1312/

## How to add content

All content is under the `content/` directory and contained in Markdown files.

The content is organized as a tree. 

Parent pages in the tree are sub-directories, with their content defined in a `_index.md` file.

Leaf pages in the tree are files like `page1.md`

All Markdown files need some simple front-matter for Hugo like:

```
+++
title = "My Page"
description = ""
+++
```
