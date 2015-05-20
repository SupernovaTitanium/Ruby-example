def  number_generator(digit)
     srand()
     upper=1
     while digit>0
     	upper*=10
     	digit-=1
     end
     number=rand(0.9*upper)+upper/10
     return number
end
count,digit,operator=ARGV
question_count=count.to_i
question_file=open("Question.txt",'w')
answear_file=open("Answear.txt",'w')
question_file.write("\\begin{tabularx}{\\textwidth}{ |X|X|X| }\n")
answear_file.write("\\begin{tabularx}{\\textwidth}{ |X|X|X| }\n")
indicator=1
while indicator <= question_count
      number1=number_generator(digit.to_i)
      number2=number_generator(digit.to_i)
      if indicator%3!=0
        question_file.write("#{indicator}. #{number1} x #{number2} = &  ")
        answear_file.write("#{indicator}. #{number1} x #{number2} = #{number1*number2}  &  ")
      end
      if indicator%3==0
        question_file.write("#{indicator}. #{number1} x #{number2} =  \\\\\n")
        answear_file.write("#{indicator}. #{number1} x #{number2} = #{number1*number2}  \\\\\n")
      end
      indicator+=1
end
while indicator <= question_count 
      if indicator%3!=0
        question_file.write("&  ")
        question_file.write("&  ")
      end
      if indicator%3==0
        question_file.write("\\\\\n")
        answear_file.write("\\\\\n")
      end
      indicator+=1
end
question_file.write("\\end{tabularx}\n")
answear_file.write("\\end{tabularx}\n")
question_file.close()
answear_file.close()




