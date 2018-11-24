require "colorize"
#Включение переводчика
require "google/cloud/translate"
project_id = "translation-01-220716"
key_file = "My Project-cf8c099f9b91.json"
translate = Google::Cloud::Translate.new project: project_id, keyfile: key_file
target = "ru"

#Считывание словаря
arr = File.readlines('noun_dictionary.txt').each {|l| l.chomp!}

#нахождение случайного слова и его перевод
word = arr[rand(0..arr.length)].downcase
word_ru = translate.translate word, to: target
word_nick = word.chars
i = 0
while i < word.length
word_nick[i] = "-"
i+=1
end
i = 0

puts "Здравствуйте, добро пожаловать в игру " + "Поле чудес".cyan.bold.on_black + "! Ваша задача " + "угадать".underline.yellow + " английское слово по его русскому переводу."

print "Вы готовы? Ответ: "
answ = gets.chomp.downcase 

if answ == "да"
   puts "Хорошо, тогда начнём!"
   puts "Повторим правила игры: Вам дано слово " + word_ru + ". Это слово является переводом английского слова которое Вам предстоит угадать по буквам. Итак начнём!"
   puts
   while (word_nick != word.chars) do
       
   print "Введите букву: "
   answ = gets.chomp.downcase
   
   word.chars.each do |char|
       if char == answ
           word_nick[i] = char
       end
       i+=1
    end
    i = 0
    puts word_nick.join
   end
   
   if word_nick == word.chars
       puts "Поздравляем, Вы победили!!! Если желаете переиграть просто перезапустите программу."
   end
else if answ == "нет"
    puts "Подготовьтесь и ответьте ещё раз."

else 
    puts "Ответьте поточнее."
end
end