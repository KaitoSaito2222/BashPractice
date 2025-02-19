#!/bin/bash
    copy_and_list(){
        echo "Contents of home directory before copy:"
        ls -lS ~
        cp /etc/hosts ~/
        touch ~/cctb1
        echo "Contents of home directory after copy:"
        ls -lS ~
    }

    copy_and_list