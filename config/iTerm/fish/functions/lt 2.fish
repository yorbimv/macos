function lt
	find . -print | sed -e 's;[^/]*/;|____;g;s;____|; |;g'
end
