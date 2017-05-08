-- some sections - order matters so do it more than once
Should map to "section"
# section

Should map to "section-1"
# section

Should map to "section-2"
# section

Should map to "section-1-1"
# section 1

Should map to "section-1-2"
# section 1

now make sure we can find all of them:
[ref 1](#section)
[ref 2](#section-1)
[ref 3](#section-2)
[ref 4](#section-1-1)
[ref 5](#section-1-2)

-------

Should map to "sec-1"
# sec 1

Should map to "sec"
# sec

Should map to "sec-2"
# sec

[ref 1](#sec-1)
[ref 2](#sec)
[ref 3](#sec-2)

== EXPECTED ==
Verifying: test/files/dup.md
