# scipy.org

## Build

The website is using [Hugo](https://gohugo.io). Install it to build locally.
Then:

```
git submodule update --init --recursive
make html
```

The pages are in `public/`.

To run the development server, which hosts the site and recompiles
automatically on edits:

```
make serve
```
