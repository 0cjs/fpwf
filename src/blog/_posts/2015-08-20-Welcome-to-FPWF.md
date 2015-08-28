---
title: Welcome to FPWF
author: Curt Sampson
---

Functional Programming With Friends started out as a few guys who wanted
to get together to play with some Haskell or whatever (much as most of
us had already done individually). But rather than just play, we thought
there might be a few projects toward which we could give a little stab,
and soon it sort of snowballed into making a blog, code available via
Github, and Lord Knows What Else. (Ok, yes, this is still a rather small
snowball.)

Anyway, our attack on [sbt] and its directory structure[^1] (not yet
complete) made us feel we should share our travails (i.e., blog),
perhaps by putting up something on github.io. In the long tradition of
long distractions we reckoned that we could use [Jekyll] and a standard
build system with just One Little Change that would Make Everything
Easy.

Having our own domain name, <http://fpwf.starling-software.com>, lead
to our github.io blog was [easy enough][gh-custdom]. However, we're
a lot more comfortable with building our release ourselves, in case
we want to do anything fancy, rather than just uploading our Jekyll
"source" to [Github](https://github.com/). Given that we were doing a
project site anyway, where the code to be served goes on the `gh-pages`
branch, things seemed simple enough: build on master, and commit the
build results to `gh-pages`.

Well, not as simple as you'd think. (It turns out that understanding git
internals does not mean you understand how to use git plumbing.) But now
[it's easy][git-commit-filetree]. And there's our first contribution
to the world, not even in a functional programming language, but shell
script. (Sigh.)

*C'est la vie.*

One other point we'd like to mention:

By default Jekyll uses [Liquid] templates which it fills with data
from files containing [YAML] and [Markdown]. These sorts of tools
unfortunately do little error checking, so rather than getting a build
error when one, e.g., leaves out the author information, you need
to manually inspect the output to see if it's correct. (I had to do
considerable manual testing of this post.) We have some thoughts on this
that you'll see down the road.


[^1]: A directory structure inspired by [Maven], thus the reason for the attack.

[Jekyll]: http://jekyllrb.com/
[Liquid]: https://github.com/Shopify/liquid/wiki
[Markdown]: https://daringfireball.net/projects/markdown/
[YAML]: http://yaml.org
[gh-custdom]: https://help.github.com/articles/about-custom-domains-for-github-pages-sites
[git-commit-filetree]: https://github.com/cjs-cynic-net/git-commit-filetree
[github.io]: https://help.github.com/categories/github-pages-basics/
[sbt]: http://www.scala-sbt.org/
[Maven]: https://en.wikipedia.org/wiki/Apache_Maven
