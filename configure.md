DRAFT: WORK IN PROGRESS

Conceptually explain the combination of the X resources, the `.Xresources` file, and the `xrdb` command.
    
Make `xrdb -query` the first step of the Configure page (to find out what's there already)

Make checking (which command? `ls -a .Xresources`?)  for `.Xresources` in the user's home as the first or second step of the Configure page (to check if this file already exists)
If the file exists, you get
```
$ ls -a .Xresources
.Xresources
```
And if the file doesn't exist, you get
```
$ ls -a .Xresources
ls: cannot access '.Xresources': No such file or directory
```

For new users: download and try the sample file

(for the first draft, copy the following content from the .Xresources files (sample, template, draft, etc.))

# procedure: xrdb update ...

# procedure: xrdb query

# procedure: xrdb -remove > xrdb update
