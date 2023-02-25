#/bin/bash

WORKFLOW=".github/workflows"

mkdir -p -- "$WORKFLOW"
echo 'Created Github Workflows Folder'
echo ' '

cd $WORKFLOW
curl https://raw.githubusercontent.com/katzEco/katzuScript/main/source/workflowsFile/nodeBuild.yml --output nodeBuild.yml
echo ' '
echo 'Workflows is set!'