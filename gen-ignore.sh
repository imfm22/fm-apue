echo .idea
echo .vscode
find . -type f -exec file {} + | grep "ELF*" | sed 's/^.\///g' | awk '{print $1}' | sed 's/://g'
echo *.a
echo *.so