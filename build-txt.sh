# 2022-11-29
paste -d'。 ' couplets/train/in.txt  couplets/train/out.txt > couplet-train.txt
paste -d'。 ' couplets/test/in.txt  couplets/test/out.txt > couplet-test.txt
# sed -i '' '1i \
# text\
# ' couplet-train.txt
# sed -i '' '1i \
# text\
# ' couplet-test.txt

sed -i '' 's/[[:space:]]//g' couplet-train.txt
sed -i '' 's/[[:space:]]//g' couplet-test.txt

awk '{if (length(max)<length()) max=$0}END{print length(max)}'  couplets/train/in.txt
awk '{if (length(max)<length()) max=$0}END{print length(max)}'  couplets/test/in.txt
