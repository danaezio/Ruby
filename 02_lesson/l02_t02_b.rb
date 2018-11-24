#Считывание словаря
arr = File.readlines('noun_dictionary.txt').each {|l| l.chomp!}

#Получение длины нужного слова
print "Введите кол-во символов в слове: " 
sim_amt = gets.chomp.to_i
word_lng = 0
i=0

#Нахождение этого слова
while sim_amt != word_lng
word_lng = arr[i].length
word_lng.to_i
i+=1
end

#Вывод этого слова
puts "Ваше слово: " + arr[i-1]