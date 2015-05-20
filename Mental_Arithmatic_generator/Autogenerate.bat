DEL "Answear.txt"
DEL "Question.txt"
DEL "Combination.aux"
DEL "Combination.log"
DEL "Combination.pdf"
DEL "Combination.tex"
ruby "Mental arithmatic.rb" 66 3 1
ruby combinator.rb
pdflatex Combination.tex
ruby "Mental arithmatic.rb" 66 3 1
ruby combinator.rb
pdflatex Combination.tex
