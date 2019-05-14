sizes=(10 12 14 16)
for fontsize in "${sizes[@]}"; do
	pandoc --pdf-engine xelatex --variable fontsize=${fontsize}pt -o ceep19-${fontsize}pt.pdf ceep19.text; done

# 8pt uses twocolumns: 
pandoc --pdf-engine xelatex --variable fontsize=8pt --variable classoption=twocolumn -o ceep19-8pt.pdf ceep19.text;

