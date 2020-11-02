This is Project 02 for IS-2043-004!
I will be following this tutorial: https://linuxconfig.org/bash-scripting-tutorial-for-beginners

Steps:

Created task.sh and added the #!/usr/bin/bash

Created hello-world.sh

Created backup.sh using c/Users/solom/OneDrive/Desktop/UTSA instead of the directory in the tutorial

Created welcome.sh

Tried to update backup.sh but had issues where the echo wouldn't work and I had to force exit. When I check the directory in file explorer, the tar.gz file is created.

I was able to update backup.sh to remove the stderr meessage but I didn't fix the backup.sh

I updated backup.sh with the new code but it still made me force exit.

-= Code Review - Jared Menn =-

My review consists of of the code done in the backup.sh file. (only file with the requested review blocks)

Looking back on the tutorial, you did a great job in following the instructions for the most part! You're missing a few steps, but did what works for you. I also noticed you struggled to find a working directory which is why it was force exiting.

Suggestions: I would first start but creating a seperate backup file for testing. This file will contain the for, while, and until loops. I struggled to help you with these because they were not implemented into the code.

The code is indented properly as well and it works with the use of a SINGLE directory! So great job on that part!
