# adblocker
A bash script that uses /etc/hosts to block advertising/malicious/tracking domains

___

## Table of Contents -
1. Function
2. Usage
3. Modification and Redistribution

___

## 1. Function

In short, adblocker takes these steps to block unwanted domains via the /etc/hosts file:
  1. backs up the host file as hosts.bk **(/etc/hosts.bk)**
  2. creates the **/tmp/adblocker/** directory
  3. change directory into **/tmp/adblocker/**
  4. wgets three filters **(easylist.txt | easyprivacy.txt | malwaredomainslist.txt)**
  5. replaces **127.0.0.1** with **0.0.0.0** **(malwaredomainslist.txt)**
  5. merges filters into a single file
  6. adds block filter for reddit tracking domains
  7. replaces the **/etc/hosts** file with the new one
  8. deletes the tmp directory
  
This is all achived in 31 lines of commented and formatted code.

___

## 2. Usage (for Linux)

#### Obtaining
  1. [Download the zip](https://github.com/DonutDeflector/adblocker/archive/master.zip) or clone the git repo.
  2. Move the **/adblocker/adblocker.sh** to a directory of your choice.

#### Operation
The are various ways to automate the execution of this script:

1) Creating a cron job will allow the script to automatically run ever hour/day/week/etc.

2) Creating a bashrc alias will allow you to maually execute the script more easily.

###### Cron Job
Use this command:

  ```$ sudo cp /path/to/adblocker.sh /etc/cron.weekly```
  
Change the *.weekly* to a time of your choice: *.daily* | *.hourly* | *.weekly* | *.monthly*

###### Bashrc Alias
  1. Open the *.bashrc* alias in your home folder with your favorite text editor.
  2. Scroll to the bottom of the file and add an alias:
  ```alias adblocker-update='sudo sh /path/to/adblocker.sh'```

___

## 3. Modification and Redistribution

**From LISENSE.txt:**

```

The MIT License (MIT)

Copyright (c) 2016 Phillip T.

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and 
associated documentation files (the "Software"), to deal in the Software without restriction, including 
without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell 
copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the 
following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial 
portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT 
LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO 
EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER 
IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR 
THE USE OR OTHER DEALINGS IN THE SOFTWARE.

```
