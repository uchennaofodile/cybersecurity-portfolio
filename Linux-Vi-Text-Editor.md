###Vi Text Editor

```
vi opens up the shell text editor

-it creates the file if it doesn't exist

once inside the text editor presss i to enter insert mode


    ZZ (Note: capitals) - Save and exit
    :q! - discard all changes, since the last save, and exit
    :w - save file but don't exit
    :wq - again, save and exit
press esc to get out of insert mode and then use one of the commands
show above

### Viewing Files

```

cat<file> opens up the file so we can read it

CTRL+c is the universal input for cancel in Linux


```

###Viewing Larger Files

```

Can be done with less<file>

less allows you to move up and down a file using the arrows

you can go forward using the SpaceBar or back a page by pressing b. When you are done you can press q for quit.

```

###Navigating a File in Vi

```
Below are some of the many commands you may enter to move around the file. Have a play with them and see how they work.

    Arrow keys - move the cursor around
    j, k, h, l - move the cursor down, up, left and right (similar to the arrow keys)
    ^ (caret) - move cursor to beginning of current line
    $ - move cursor to end of the current line
    nG - move to the nth line (eg 5G moves to 5th line)
    G - move to the last line
    w - move to the beginning of the next word
    nw - move forward n word (eg 2w moves two words forwards)
    b - move to the beginning of the previous word
    nb - move back n word
    { - move backward one paragraph
    } - move forward one paragraph
If you type :set nu in edit mode within vi it will enable line numbers. I find that turning line numbers on makes working with files a lot easier.


```

###Deleting Content

```

    x - delete a single character
    nx - delete n characters (eg 5x deletes five characters)
    dd - delete the current line
    dn - d followed by a movement command. Delete to where the movement command would have taken you. (eg d5w means delete 5 words)

```

###Undoing

```


    u - Undo the last action (you may keep pressing u to keep undoing)
    U (Note: capital) - Undo all changes to the current line



```
