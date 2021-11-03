# scipy.org

The SciPy organization website is built on the theme 
[scientific-python-hugo-theme](https://github.com/scientific-python/scientific-python-hugo-theme)
and served using [Hugo](https://gohugo.io).

## Build

After installing Hugo, build locally:

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
