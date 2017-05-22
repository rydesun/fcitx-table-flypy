.PHONY: clean

flypy.mb: flypy.txt
	txt2mb flypy.txt flypy.mb

flypy.txt: flypy.head
	curl "http://ys-g.ys168.com/116124318/n4J467I3NJJMLHTHvuwR/小鹤for安卓、ios百度.zip" -O
	unzip -j "小鹤for安卓、ios百度.zip" "小鹤字词for百度安卓、ios全键盘.ini"
	iconv -f UTF16LE -t UTF8 小鹤字词for百度安卓、ios全键盘.ini \
		| tail --bytes=+4 \
		| sed 's/=[0-9]\+,/\t/' \
		| cat flypy.head - \
		> flypy.txt

clean:
	rm "小鹤for安卓、ios百度.zip" "小鹤字词for百度安卓、ios全键盘.ini"
