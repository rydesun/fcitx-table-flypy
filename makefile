.PHONY: clean

flypy.mb: flypy.txt
	txt2mb flypy.txt flypy.mb

flypy.txt: flypy.head
	curl "http://ys-j.ys168.com/116124359/V4SKjLv6J35583275NIL/搜狗小鹤.zip" -O
	unzip -j 搜狗小鹤.zip 搜狗小鹤/搜狗小鹤.txt
	iconv -f UTF16LE -t UTF8 搜狗小鹤.txt \
		| tail --bytes=+4 \
		| sed 's/,[0-9]\+=/\t/' \
		| cat flypy.head - \
		> flypy.txt

clean:
	rm 搜狗小鹤.zip 搜狗小鹤.txt
