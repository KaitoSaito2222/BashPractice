#!/bin/bash

function setup_path(){
    mkdir ~/cctb_2024
    export PATH=~/cctb_2024:$PATH
    
    echo $PATH
}

setup_path