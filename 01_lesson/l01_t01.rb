#Пользователь вводит свой баланс
print "Введите Ваш баланс: руб. " 
balance=gets
if balance.to_f>0
#Переводим в другие валюты
dollar_balance=balance.to_f/65
euro_balance=balance.to_f/76
pound_balance=balance.to_f/87

puts

#Выводим баланс пользователя в других валютах
puts "В переводе на другие валюты ваш баланс: "
puts "В долларах: $" + dollar_balance.round(2).to_s
puts "В евро: €" + euro_balance.round(2).to_s
puts "В фунтах стерлингов: £#{pound_balance.round(2).to_s}" 

else
    puts "Некорректный баланс"
    
end