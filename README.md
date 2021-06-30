# Description
This is an overlay for modifying or adding packages to include include static support.

# Installation
You see that `musl-static.conf` in the repo right? Ok, good. Now here's what you need to do.<br> 
Check out `/etc/portage/repos.conf`.<br>
Now you have 2 options.<br>
- If it is a file, append the contents of `musl-static.conf` to it.
- If it is a directory, copy `musl-static.conf` to it.<br>
<br>
After that, all you need to do is sync. :)

# Software
Currently, here is what is included:
- libmpdclient -- static lib by default (use `dynamic` to build both types of libs), no testing, no documentation
