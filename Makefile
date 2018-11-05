FILENAME=example

all: ${FILENAME}.pdf

${FILENAME}.pdf: ${FILENAME}.tex *.sty
	xelatex ${FILENAME}.tex && xelatex ${FILENAME}.tex

clean:
	rm -f *.log *.nav *.snm *.toc *.aux *.out

distclean: clean
	rm -f ${FILENAME}.pdf

