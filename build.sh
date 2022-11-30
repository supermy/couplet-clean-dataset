# 2022-11-23
paste -d@ couplets/train/in.txt  couplets/train/out.txt > couplet-train.csv
paste -d@ couplets/test/in.txt  couplets/test/out.txt > couplet-test.csv
sed -i '' '1i \
source@target\
' couplet-train.csv
sed -i '' '1i \
source@target\
' couplet-test.csv

sed -i '' 's/[[:space:]]//g' couplet-train.csv
sed -i '' 's/[[:space:]]//g' couplet-test.csv

awk '{if (length(max)<length()) max=$0}END{print length(max)}'  couplets/train/in.txt
awk '{if (length(max)<length()) max=$0}END{print length(max)}'  couplets/test/in.txt
