#!/bin/bash

if update-alternatives --set editor /usr/bin/vim.basic; then
	echo "The default editor is vim now.";
else
	echo "Not able to set vim.basic as default editor (is vim installed?)";
fi
