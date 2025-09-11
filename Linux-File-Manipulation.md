#File Manipulation

##Making a Directory

```
mkdir[options]<directory>

mkdir -pv 

p creates parent directories

v shows what was created


```

##Removing a Directory

```
rmdir[options]<Directory>

```

##Creating a Blank File

```
touch[options]<filename>

```

##Copying a File or Directory

```
cp [options]<source><destination>

If we copy a file and the destination has a file name
the copied file will have the name of the destination

If the destination does not have a file name, then the destination
will have the same name file being copied

We can copy a directory and all the files in it using -r

cp -r foo foo2

```

##Moving Files

```
mv - used to move a file or directory into a new directory, but can also be used to rename a file i.e. if we specify the destination to be the same as the directory as the source, but with a different name, then we have effectively used mv to rename a file or directory


```

##Removing a File (and non empty Directories)

```
rm [options]<file>

to remove or delete a file

rm -r

removes directories and all files within

```
