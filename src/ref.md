---
layout: 'default'
title: 'Site Editing Quickref'
---

<h2 class='page-title'>Developer Reference Card</h2>

### Building/Testing/Releasing

Useful commands:

* `./jeckyll build`
* `./jeckyll build -D`
* `./jeckyll serve -D -w -H 0.0.0.0`
* `./jeckyll release`

`build` and `serve` take the same options. `-D` builds draft posts under
today's date under <http:/blog>. `-w` watches for changes under `src/`
and rebuilds (but does not rebuild when `_config.yml` changes!). You can
also add `-H 0.0.0.0` to listen on the external interface if you need to
show the test site to someone on a different host.

`release` does a clean build and uses [git-commit-filetree] to commit
the new output to the `gh-pages` branch. (This is the branch served by
`github.io` for project pages.) The `src/CNAME` file gives the virtual
host name to which `github.io` should respond.

Remember that after this you still need to push to actuall put the
release on production.

[git-commit-filetree]: https://github.com/cjs-cynic-net/git-commit-filetree


### Jekyll

The [official documentation][jd] is not terribly concise, nor is it
really complete enough to be a serious tutorial. (For that, read the
example sites below.) The short summary is:

* Site is built from the `src/` directory into the
  target directory (`.build/gh-pages`).
* Directories starting with `_` are special, and are not copied (at
  least not directly to target.
* `*.html` HTML files and `*.md` Markdown files with a YAML header are
  compiled using the templates in `_layouts` (which may include fragments
  from `_includes`) to `.html` files in the target. Source files may
  include template code too.
* Everything else (including .md files without a YAML header) is
  copied straight through to the target.

The [Directory structure][jds] documentation page gives an overview of
the special directories. Note that directories such as `_posts` do not
have to be under the root; we use `src/blog/_posts` to have our blog
entry URLs start with `/blog`.

[jd]: http://jekyllrb.com/docs/home/
[jds]: http://jekyllrb.com/docs/structure/


### Markdown

* [Markdown Syntax Reference][msr]
* Jekyll uses [kramdown] to tranform markdown by default. This has some
  nice extensions (e.g.: Footnotes, math, tables...)
* XXX Is [RedCloth] built in? It looked like it from the build. That would
  allow use of Textile...
* GitHub offers extra Markdown stuff like '@cjs-cynic-net' to reference
  a github user, which we don't. Maybe there's a module that would let
  us do that? Do we need it?

[msr]: https://daringfireball.net/projects/markdown/syntax
[RedCloth]: http://redcloth.org
[kramdown]: http://kramdown.gettalong.org/syntax.html


### Templates

* [Liquid](https://github.com/Shopify/liquid/wiki)
  * [Template Reference][lfd] ("for Designers")
    * [Tags](https://docs.shopify.com/themes/liquid-documentation/tags)
    * [Objects](https://docs.shopify.com/themes/liquid-documentation/objects)
    * [Filters](https://docs.shopify.com/themes/liquid-documentation/filters)
  * [Programming][lfp] (extending with filters, etc.)

[lfd]: https://github.com/Shopify/liquid/wiki/Liquid-for-Designers
[lfp]: https://github.com/Shopify/liquid/wiki/Liquid-for-Programmers


### Example Sites

These serve as further documentation and a source of ideas.

* [Example site list](http://jekyllrb.com/docs/sites/) from the Jekyll docs
* The [Jekyll Site source code][jssc] itself. In particular, they way they
  do the docs/`_docs` thing is interesting. (Uses collections? Note the
  side menu defined in a [YAML file under _data][jssc-sm].)

[jssc]: https://github.com/jekyll/jekyll/tree/master/site/
[jssc-sm]: https://github.com/jekyll/jekyll/blob/master/site/_data/docs.yml


### Things to Fix?

* Jekyll doesn't read _plugins for extensions itself; they must be loaded
  before the Jekyll gem. WTF?
