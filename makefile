.PHONY: clean

flypy.mb: flypy.txt
	txt2mb flypy.txt flypy.mb

flypy.txt: flypy.head
	curl -fLo raw.ini -A "User-Agent:Mozilla/5.0" \
		"http://ys-e.ys168.com/116124333/U6V4gKm71287546HLL4L/for%E5%AE%89%E5%8D%93%E7%99%BE%E5%BA%A6%E4%B8%AA%E6%80%A7%E7%9F%AD%E8%AF%AD.ini"

	iconv -f UTF16LE -t UTF8 raw.ini \
		| tail --bytes=+4 \
		| sed 's/=[0-9]\+,/\t/' \
		| cat flypy.head - \
		> flypy.txt

clean:
	rm raw.ini
