---
author: Curt Sampson
---

Functional Programming with Friends is a small group of developers that
gets together (usually on-line, but sometimes in person, when we're in
proximity) once or twice a week to play around with programming ideas,
typically related to functional programming. We are currently:

* Curt J. Sampson <cjs@cynic.net>
* Nishant Rodrigues <nishantjr@gmail.com>
* Karthik Ravikanti <karthik.ravikanti@gmail.com>

Over the past couple of weeks we've been doing some work with Scala,
[sbt] and the Android build system, with the
intention of building some programs and even Android apps in Scala.  We'll
have more to say on that later.

But while we were doing this, we thought we should start a blog to
document some of our observations (and perhaps contribute some of
our tools) to the rest of the world.

The obvious place to put the blog was on [github.io]. But it's nice to
have our own proper domain name. Fortunately, Github makes this
[surprisingly easy][gh-custdom]. So, [Starling Software][ssoft] donated
one and after the usual bit of hacking with [Jekyll] we've got a site up
at the URL you're (probably) looking at now:
<http://fpwf.starling-software.com>.

### Issues

Two things came up as we were doing this.

First, by default Jekyll uses [Liquid] templates which it fills with
data from files containing [YAML] and [Markdown]. These sorts of tools
unfortunately do little error checking, so rather than getting a build
error when one, e.g., leaves out the author information, you need
to manually inspect the output to see if it's correct. (I had to do
considerable manual testing of this post.) We have some thoughts on this
that you'll see down the road.

Second, we had to do a bit of hacking to get our release process working
smoothly, since we build on our `master` branch, but the output of the
build needs to be committed to the `gh-pages` branch. We developed a
little tool, [git-commit-filetree], to help out with this, and we'll be
talking about it more in the next post.


[sbt]: http://www.scala-sbt.org/
[github.io]: https://help.github.com/categories/github-pages-basics/
[ssoft]: http://www.starling-software.com/
[gh-custdom]: https://help.github.com/articles/about-custom-domains-for-github-pages-sites
[Jekyll]: http://jekyllrb.com/
[Liquid]: https://github.com/Shopify/liquid/wiki
[YAML]: http://yaml.org
[Markdown]: https://daringfireball.net/projects/markdown/
[git-commit-filetree]: https://github.com/cjs-cynic-net/git-commit-filetree
