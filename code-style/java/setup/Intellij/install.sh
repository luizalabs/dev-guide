#!/bin/bash

echo "Installing luizalabs code style configs..."

for i in $HOME/Library/Preferences/IntelliJIdea*/ \
	     $HOME/Library/Preferences/IdeaIC*/ \
		 $HOME/.IntelliJIdea*/config/ \
		 $HOME/.IdeaIC*/config/
do
	if [ -d $i ]; then
		if [ ! -d $i'codestyles' ]; then
            mkdir $i'/codestyles'
        fi      
		cp -frv *.xml $i'codestyles'
    fi  
done

echo "Done."
echo ""
echo "Restart IntelliJ, go to preferences, and apply 'luizalabs'."
