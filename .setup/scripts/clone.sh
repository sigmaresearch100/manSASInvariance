#!/bin/bash

git clone git@github.com:sigmaresearch100/manSASInvariance.git
rm -rf "$PWD.git"
mv manSASInvariance/.git "$PWD"
rm -rf manSASInvariance
