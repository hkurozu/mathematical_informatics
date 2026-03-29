# 1. data0.csv を UTF-8 に変換して新規作成
iconv -f CP932 -t UTF-8 data0.csv > matome.csv

# 2. 【重要】末尾に強制的に改行を追加する
echo "" >> matome.csv

# 3. data1.csv を変換し、1行目（見出し）を削って追記する
iconv -f CP932 -t UTF-8 data1.csv | sed '1d' >> matome.csv

# 4. 余計な空行を削除して整える
sed -i '' '/^$/d' matome.csv