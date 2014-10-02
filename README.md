Hugo Shortcodes Collection
===============

This is a collection of reusable shortcodes for the static website engine [Hugo](http://gohugo.io/).


## Usage

You can just copy any of the files from `shortcodes/` to your own shortcodes directory and start using it in your markdown files.

See the shortcode files for their documentation.


## Contribute

* Add a shortcode to `shortcodes/`.
* Document it like the other shortcodes.
* Create a file at `content/<name>.md` and add some tests here.
  File should have this header:
```
+++
title = "<name>"
+++
```
* Adjust `spec.html` to your new test cases (it's ordered alphabetically).
* Make sure you habe `hugo` installed.
* Run `./test.sh`
* If tests pass feel free to send a PR.


### Hugo Version

Currently tested with `v0.13-DEV`.
