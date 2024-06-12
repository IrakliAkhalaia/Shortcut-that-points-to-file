     #!/bin/zsh

     if [ $# -ne 1 ]
     then
          echo "The number of arguments passed is less or more than allowed."
          exit
     fi

     shortcut_file="$1"

     if [ ! -f "$shortcut_file" ]
     then
          echo "File '$shortcut_file' doesn't exist."
          exit
     fi

     points_to=$(readlink -f "$shortcut_file")

     if [ -e "$points_to" ]
     then
          echo "Shortcut "$shortcut_file" points to => "$points_to""
     else
          echo "Shortcut "$shortcut_file" points to nothing."
     fi
