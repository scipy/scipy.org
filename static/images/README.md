Add logo with name `logo.svg`.

Create a favicon:

```
inkscape -w 16 -h 16 -o 16.png logo.svg
inkscape -w 32 -h 32 -o 32.png logo.svg
inkscape -w 48 -h 48 -o 48.png logo.svg
convert 16.png 32.png 48.png favicon.ico
```

Then add to your repository:

```
git add logo.svg
git add favicon.ico
git commit
git push
```
