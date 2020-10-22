all:
	# Link all documents to the document folder
	mkdir -p docs
	@while read -r line; do \
	ln -fF $$line "./docs/$$(basename $$line)"; \
	done < ./doc_list.txt

deploy:
	aws s3 sync . s3://anhoang.xyz --exclude=".git/*"
