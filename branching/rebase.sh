#!/bin/bash
# display command line options

count=1
for param in "$@"; do
<<<<<<< HEAD
    echo "\$@ Parameter #$count = $param"
=======
=======
    Next parameter: $param
>>>>>>> 6c9d812 (git rebase 2)
    count=$(( $count + 1 ))
done

echo "====="