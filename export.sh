#!/bin/bash
 
# $1 module directory e.g. /var/www/faims/modules/b28ea04f-2e6b-421a-a3fd-8be4c6c50259
# $2 user entered data as json file e.g.  /tmp/something.json => {"Label1":"some text","Label2":["Item1","Item2"],"Label3":"Item2"} 
# $3 directory to put generated files in e.g. /tmp/exported_files
# $4 file to write markdown text into e.g. /tmp/mark_down.txt => h3. Traditional html title
 
# read json interface input file into string
json=`python -mjson.tool $2`
 
# export database to csv using json inputs and pass output into export file inside download directory
python shapefile.py $1 $3 $2 > /tmp/bar 2> /tmp/foo

echo "Your data have been prepared for export.
---

Click \"Download file\" below to get your data as a single compressed file.
---

If the download button doesn't appear, [contact support immediately](mailto:support@fedarch.org?subject=ExportDebug&body=" > $4
cat /tmp/bar >>$4
cat /tmp/foo >>$4

echo ") and paste the following information into the email:

"  >> $4 


awk '{print "   "$0"\n"}' /tmp/bar >> $4
echo " 
"
awk '{print "   "$0"\n"}' /tmp/foo >> $4



# generate markup and pass output to markup file
