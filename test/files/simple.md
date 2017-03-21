not a link: \[foo\](foo1.md)
not a link: \[foo\]\(foo2.md\)
not a link: [foo\]\(foo3.md\)
not a link: \[foo]\(foo4.md\)

link to link1 file: [no space](link1.md)

link to link2 file: [space in parens]( link2.md )

link to bmark file: [bmark w/o space](bmark1)

doesn't work yet
link to bookmark bmark1->foo1.com: [bmark1] (bmark1)

doesn't work yet
link to bookmark bmkar2->foo2.com: [bmark2]
(bmark2)    ignored

link to link3 file: [
foo6
](
link3.md
)

not a link: [new line]
(foo.md)

not a link: [space before parens] (foo.md)

not a link: [lots of spaces before parens]      (foo.md)

not a link: [
foo6
]
(
foo.md
)

This is a page with an unclosed ( and an unclosed [
[Kubernetes home page](https://kubernetes.io/).

[bmark1]: http://foo1.com
[bmark2]:http://foo2.com

== EXPECTED ==
Verifying: test/files/simple.md
test/files/simple.md: Can't find: test/files/link1.md
test/files/simple.md: Can't find: test/files/link2.md
test/files/simple.md: Can't find: test/files/bmark1
test/files/simple.md: Can't find: test/files/link3.md
