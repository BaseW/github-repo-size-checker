# 標準入力からjsonを受け取る
json=$(cat -)

# jqでjsonを整形して出力
echo $json | jq '[.tree[] | select(.type == "blob") | .size] | add'

# make human readable
echo $json | jq '[.tree[] | select(.type == "blob") | .size] | add' | numfmt --to=iec
