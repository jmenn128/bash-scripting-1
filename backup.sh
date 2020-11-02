 #!/usr/bin/bash

# This bash script is used to backup a user's home directory to /tmp/.

#An if-else statement is used in a situation of condition. For example, if the first condition
# equals true then the first statement will execute. If the first fails then the second will execute (else).

#backup function not found.. This function was supposed to be paired with the for loop to backup all directories supplied.
if [ -z $1 ]; then                                                                                                                                                                                                                                                             
        user=$(whoami)                                                                                                                                                                                                                                                         
else                                                                                                                                                                                                                                                                           
        if [ ! -d "/home/$1" ]; then                                                                                                                                                                                                                                           
                echo "Requested $1 user home directory doesn't exist."                                                                                                                                                                                                         
                exit 1                                                                                                                                                                                                                                                         
        fi                     
        user=$1                                                                                                                                                                                                 
fi
#After analyzing the if-else block you can see if a directory exists the first if will be true. If it doesn't
#the else will execute; echoing the statement above.
Users/$user/OneDrive/Desktop/UTSA
output=/c/Users/${user}/OneDrive/Desktop/UTSA_backup_$(date +%Y-%m-%d_%H%M%S).tar.gz

function total_files {                                                                                                                                                                                                                                                         
        find $1 -type f | wc -l                                                                                                                                                                                                                                                
}                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                               
function total_directories {                                                                                                                                                                                                                                                   
        find $1 -type d | wc -l                                                                                                                                                                                                                                                
}                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                               
function total_archived_directories {                                                                                                                                                                                                                                          
        tar -tzf $1 | grep  /$ | wc -l                                                                                                                                                                                                                                         
}                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                               
function total_archived_files {                                                                                                                                                                                                                                                
        tar -tzf $1 | grep -v /$ | wc -l                                                                                                                                                                                                                                       
}                                                                                                                                                                                                                                                                              
                                                                                                                                                                                                                                                                               
tar -czf $output $input 2> /dev/null                                                                                                                                                                                                                                           
                                                                                                                                                                                                                                                                               
src_files=$( total_files $input )
src_directories=$( total_directories $input )

arch_files=$( total_archived_files $output )
arch_directories=$( total_archived_directories $output )

echo "Files to be included: $src_files"
echo "Directories to be included: $src_directories"
echo "Files archived: $arch_files"
echo "Directories archived: $arch_directories"

if [ $src_files -eq $arch_files ]; then
        echo "Backup of $input completed!"
        echo "Details about the output backup file:"
        ls -l $output
else
        echo "Backup of $input failed!"
fi
#for loop not found..
#The while and until loops were also not available for review.
#With the above loops not being found I will just provide my general insight of the code
#I can see that he had issues with directories which is most likely why the above loops/functions were
#not implemented. However, the above code should work with the use of a SINGLE directory but not multiple.
