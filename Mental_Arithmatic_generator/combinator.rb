puts "Start making Latex code now!\n"

head =open("head.txt")
tail =open("tail.txt")
question =open("Question.txt")
answear =open("Answear.txt")
outfile =open("Combination.tex",'w')
indata=head.read()
outfile.write(indata)
indata=question.read()
outfile.write(indata)
indata=answear.read()
outfile.write(indata)
indata=tail.read()
outfile.write(indata)

puts "Sucessfully terminated!\n"

head.close()
tail.close()
question.close()
answear.close()