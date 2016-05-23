# adblocker
A bash script that uses /etc/hosts to block domains

___

## Table of Contents -
1. Function
2. Usage
3. Modification and Redistribution
4. 
___

## 1. Function

In short, adblocker takes these steps to block advirtisement/malicious domains via the /etc/hosts file:
  1. backs up the host file as hosts.bk
  2. creates the */tmp/adblocker/* directory
  3. change directory into */tmp/adblocker/*
  4. wgets two filters *(easylist.txt and easyprivacy.txt)*
  5. merges the lists into a single file
  6. replaces the */etc/hosts* file with the new one
  7. deletes the tmp directory
This is all achived in 23 lines of commented and formatted code.
