cd mppics/
mpost pic
cd ..
pdflatex benders.tex
texindy -L russian -C utf8 benders.idx
pdflatex benders.tex
