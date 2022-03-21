# scipy.org

The SciPy website is built on the
[scientific-python-hugo-theme](https://github.com/scientific-python/scientific-python-hugo-theme)
and served using [Hugo](https://gohugo.io).

## Build

After installing Hugo, build locally:

```
git submodule update --init
make html
```

The pages are in `public/`.

To run the development server, which hosts the site and recompiles
automatically on edits:

```
make serve
```

## Team lists

To update the teams, the `team_query.py` provided by the theme is used.
It needs a
[GitHub token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/creating-a-personal-access-token)
with `read:org` permissions. The token has to be exported as `GH_TOKEN`.

```
export GH_TOKEN=xxxxxxxxxx
make teams
```

## Analytics

The service [Plausible.io](https://plausible.io) is used to gather simple
and privacy-friendly analytics for the site. The dashboard can be accessed
[here](https://views.scientific-python.org/scipy.org).
The Scientific-Python community is managing the account.
