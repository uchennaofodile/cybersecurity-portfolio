# Linux 

## Basic Navigation

```
1. pwd - print working directory  

2. ls - list, list all contents in the current directory  

3. ls -l = long list format of ls  

sample output:  

total 3
drwxr-xr-x  2 ryan users 4096 Mar 23 13:34 bin
drwxr-xr-x 18 ryan users 4096 Feb 17 09:12 Documents
drwxr-xr-x  2 ryan users 4096 May 05 17:25   



    First character indicates whether it is a normal file ( - ) or directory ( d )
    Next 9 characters are permissions for the file or directory (we'll learn more about them in section 6).
    The next field is the number of blocks (don't worry too much about this).
    The next field is the owner of the file or directory (ryan in this case).
    The next field is the group the file or directory belongs to (users in this case).
    Following this is the file size.
    Next up is the file modification time.
    Finally we have the actual name of the file or directory.  

3. ls -l Documents

shows contents of Documents

```  

##Paths  

###Relative Paths

``` Specify a location (file or directory) in relation to where we currently are in the system.  
they do not begin with a slash


e.g. ls Documents

```

###Absolute Paths

``` Specify a location (file or directory) in relation to the root directory. You can identify them easily as they always begin
with a forward slash (/)

e.g. ls /home/uc/Documents


###cd

used to move around

cd .. moves backward

~ is home directory

. is current directory


```


