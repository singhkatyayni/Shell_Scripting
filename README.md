# Shell_Scripting
# sed editor

sed with -i edits the file
sed without -i prints the change on output

-e is for multiple conditions in sed command
-e cond1 -e cond2

Search & replace/ Substitute
sed -i -e 's/root/ROOT/g' -e 's/admin/ADMIN/g' sample.txt

Deletion of lines
sed -i -e '1d' -e '/root/ d' sample.txt

Add lines
sed -i -e '1 i Hello World' sample.txt
sed -i -e '/root/ i Hello World' sample.txt

sed -i -e '1 a Hello World' sample.txt
sed -i -e '1 c Hello Univers' sample.txt