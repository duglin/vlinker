[src](src.go#L5)
[bad](bad.go#L3)
[bad](http://example.com/bad.go#L3)
== EXPECTED ==
> test/files/linenums.md
test/files/linenums.md: Can't find referenced file 'test/files/bad.go'
test/files/linenums.md: Can't load url: http://example.com/bad.go#L3
