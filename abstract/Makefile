# Este makefile, constrói os alvos do latex para este diretório
# no diretório atual. O arquivo principal deve se chamar main.tex
# por default ou você deverá trocar o valor da variável TEXFILE
# abaixo para o nome correto. A seção PROGRAMAS não deve ser mexida
# a não ser que a localização dos programas que você use não seja
# a indicada. O restante não deve ser mudado, a não ser que você 
# saiba o que está fazendo.

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
