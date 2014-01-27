
# NOMES
TEXFILE=main.tex
TEXNOFIGSFILE=mainNoFigs.tex
LETTER=letter.tex

# REGRAS
DVIFILE=$(TEXFILE:%.tex=%.dvi)
DVINOFIGSFILE=$(TEXNOFIGSFILE:%.tex=%.dvi)
AUXFILE=$(LETTER:%.tex=%.dvi)

all: $(DVIFILE) 

$(DVIFILE): main.tex biblio
	latex $(@:%.dvi=%.tex)
	bibtex $(@:%.dvi=%)
	latex $(@:%.dvi=%.tex)
	latex $(@:%.dvi=%.tex)
	dvips -o main.ps main 
	ps2pdf main.ps main.pdf

$(DVINOFIGSFILE): mainNoFigs.tex
	latex $(@:%.dvi=%.tex)
	bibtex $(@:%.dvi=%)
	latex $(@:%.dvi=%.tex)
	latex $(@:%.dvi=%.tex)
	dvips -o mainNoFigs.ps mainNoFigs 
	ps2pdf mainNoFigs.ps mainNoFigs.pdf

$(AUXFILE): letter.tex
	latex $(@:%.dvi=%.tex)
	dvips -o letter.ps letter 
	ps2pdf letter.ps letter.pdf

biblio:
	@cp ${HOME}/projects/misc/latex/referencias.bib bibliography.bib

submit: $(DVINOFIGSFILE) $(AUXFILE) 
	@mkdir submit
	@echo ""
	@echo "The files to submit is at submit folder"
	@echo ""

clean:
	@rm -vf *.aux *.glo *.gls *.glg *.out *.brf *.ist *.backup
	@rm -vf *.lo[gtfa] *.toc *.idx *.inc *.ilg *.ind *.bbl *.blg
	@find . -name "*.bak" -exec rm -fv {} \;
	@find . -name "*~" -exec rm -fv {} \;
	@find . -name "*.aux" -exec rm -fv {} \;

deepclean:
	@rm -vf *.aux *.glo *.gls *.glg *.dvi *.ps *.out *.brf *.ist *.spl
	@rm -vf main.dvi main.pdf
	@rm -vf mainNoFigs.dvi mainNoFigs.pdf
	@rm -fr submit
	@rm -fr tabs/*eps
	@rm -vf *.lo[gtfa] *.toc *.idx *.inc *.ilg *.ind *.bbl *.blg *.backup
	@find . -name "*.bak" -exec rm -fv {} \;
	@find . -name "*~" -exec rm -fv {} \;
	@find . -name "*.aux" -exec rm -fv {} \;
	@find . -name "*.log" -exec rm -fv {} \;
