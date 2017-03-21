place expected output from verifying an MD file into the end of the 
MD file, e.g.:

```
my test [README](foo.md)

== EXPECTED ==
test/README.md: Can't find: test/foo.md
```
