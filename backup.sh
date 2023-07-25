#using this script,Iam creating backup of my directory(myscripts) and storing in "backups" directory
#!/bin/bash
src=/home/ubuntu/myscripts
tgt=/home/ubuntu/backups
filename=$(date |xargs |awk '{print $3 "-" $2 "-"$6}')
tar -czvf $tgt/$filename.tar.gz $src
echo "backup completed"
