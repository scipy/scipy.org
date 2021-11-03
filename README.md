# scipy.org

The SciPy website is built on the 
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

## Team lists

To update the teams, run `team_query.py` provided by the theme:

```
python team_query.py --org=scipy --team=scipy-core-team --title=Maintainers > maintainers.md
python team_query.py --org=scipy --team=triage --title=Triage > triage.md
```
