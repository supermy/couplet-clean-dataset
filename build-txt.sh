# 2022-11-29 for linux, not mac 
paste -d'@' couplets/train/in.txt  couplets/train/out.txt > couplet-train.txt
paste -d'@' couplets/test/in.txt  couplets/test/out.txt > couplet-test.txt
sed -i -e "s/^/[CLS]&/g;s/@/[SEP]/g" couplet-train.txt
sed -i -e "s/^/[CLS]&/g;s/@/[SEP]/g" couplet-test.txt

sed -i 's/[[:space:]]//g' couplet-train.txt
sed -i 's/[[:space:]]//g' couplet-test.txt

awk '{if (length(max)<length()) max=$0}END{print length(max)}'  couplets/train/in.txt
awk '{if (length(max)<length()) max=$0}END{print length(max)}'  couplets/test/in.txt
