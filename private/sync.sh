#!/bin/bash 
#Git Repo Sync

PATH_TO_REPO='/path/to/bare/repository.git'
PATH_TO_GIT_SSH='/path/to/git-ssh.sh'
PATH_TO_LOG='/path/to/sync.log'
FOR_REMOTE='origin2'
export SSH_SECRETKEY_PATH='/path/to/.ssh/id_rsa'
GIT_REMOTE_1='ssh://user@git.example.com/user/repository.git'
GIT_REMOTE_2='git@bitbucket.org:user/repository.git'

export GIT_SSH=$PATH_TO_GIT_SSH

echo "Sync:" >> $PATH_TO_LOG
date >> $PATH_TO_LOG
if [ ! -d $PATH_TO_REPO ]
then
	git clone --mirror $GIT_REMOTE_1 >> $PATH_TO_LOG
    cd $PATH_TO_REPO
    git remote add origin2 $GIT_REMOTE_2 >> $PATH_TO_LOG
    git push origin2 --mirror >> $PATH_TO_LOG
else
	cd $PATH_TO_REPO >> $PATH_TO_LOG
	git fetch --all >> $PATH_TO_LOG
	git push $FOR_REMOTE --mirror >> $PATH_TO_LOG
fi

echo