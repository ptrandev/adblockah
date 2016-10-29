# adblocker [abandoned]
A collection of scripts that use /etc/hosts to block advertising-related, tracking, and malicious domains.

___

## Table of Contents
1. Function
2. Usage
3. Filters
4. Modification and Redistribution

___

## 1. Function

In short, adblocker takes these steps to block unwanted domains via the /etc/hosts file:
  1. backs up the **/etc/hosts** file as **/etc/hosts.bk**
  2. `wgets` [StevenBlack's Unified Hosts Filter](https://github.com/StevenBlack/hosts)
  3. adds additional filters for reddit's tracking domains

This is all achieved in 23 lines of commented and formatted code.

___

## 2. Usage (for Linux)

#### Obtaining
  1. [Download the zip](https://github.com/DonutDeflector/adblocker/archive/master.zip) or clone the git repo with `git clone https://github.com/DonutDeflector/adblocker.git`.
  2. Move **/adblocker/adblocker.sh** to a directory of your choice.

#### Operation
There are various ways to automate the execution of this script:

1) Creating a cron job will allow the script to automatically run ever hour/day/week/etc.

2) Creating a bashrc alias will allow you to manually execute the script more easily.

##### Cron Job
Use this command:

  ```$ sudo cp /path/to/adblocker.sh /etc/cron.weekly/adblocker.sh```

Change the **.weekly** to a time of your choice — **.daily** | **.hourly** | **.weekly** | **.monthly**

##### Bashrc Alias
  1. Open the *.bashrc* alias in your home folder with your favorite text editor.
  2. Scroll to the bottom of the file and add an alias: `alias adblocker-update='sudo sh /path/to/adblocker.sh'`
  3. Open the terminal and type `adblocker-update`. Enter your root password. This will now update the **/etc/hosts** file. 
  

___

## 3. Filters

Currently, adblocker only uses [StevenBlack's Adware and Malware List](https://raw.githubusercontent.com/StevenBlack/hosts/master/hosts). More blacklists will be implemented as this project matures.

___

## 4. Modification and Redistribution

**From LICENSE.txt:**

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
