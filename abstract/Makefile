# Este makefile, constr�i os alvos do latex para este diret�rio
# no diret�rio atual. O arquivo principal deve se chamar main.tex
# por default ou voc� dever� trocar o valor da vari�vel TEXFILE
# abaixo para o nome correto. A se��o PROGRAMAS n�o deve ser mexida
# a n�o ser que a localiza��o dos programas que voc� use n�o seja
# a indicada. O restante n�o deve ser mudado, a n�o ser que voc� 
# saiba o que est� fazendo.

# NOMES
TEXFILE=Abstract.tex

# REGRAS
PDFFILE=$(TEXFILE:%.tex=%.pdf)

$(PDFFILE): 
	pdflatex $(@:%.pdf=%.tex)
	pdflatex $(@:%.pdf=%.tex)

clean:
	@rm -vf *.aux *.glo *.gls *.glg *.out *.brf *.ist *.backup *.spl
	@rm -vf *.lo[gtfa] *.toc *.idx *.inc *.ilg *.ind *.bbl *.blg
	@rm -vf new*tex
	@find . -name "*.bak" -exec rm -fv {} \;
	@find . -name "*~" -exec rm -fv {} \;
	@find . -name "*.aux" -exec rm -fv {} \;

deepclean:
	@rm -vf *.aux *.glo *.gls *.glg *.pdf *.out *.brf *.ist *spl
	@rm -vf *.lo[gtfa] *.toc *.idx *.inc *.ilg *.ind *.bbl *.blg *.backup
	@rm -vf new*tex
	@find . -name "*.bak" -exec rm -fv {} \;
	@find . -name "*.lo[gtfa]" -exec rm -fv {} \;
	@find . -name "*~" -exec rm -fv {} \;
	@find . -name "*.aux" -exec rm -fv {} \;
