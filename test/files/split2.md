[newline]
(badlink1.md)
[newline spaces]
    (badlink2.md)
[spaces]       (badlink3.md)
[lots of newlines]


(badlink4.md)
[
lots of newlines but should work
](
badlink5.md
)
[
lots of newlines but should not show a link
]
(
badlink6.md
)

== EXPECTED ==
> test/files/split2.md
test/files/split2.md: Can't find: test/files/badlink5.md
