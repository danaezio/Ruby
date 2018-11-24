user_pays = 0
print "Введите ежемесячную сумму депозита: "
month_user_pay = gets.to_i
puts "Введите через какой промежуток времени Вы хотите забрать свои деньги: "
puts
print "Через сколько лет: "
years = gets.to_i
print "Через сколько месяцев: "
month = gets.to_i
puts

month = month + years * 12
user_pays = user_pays + month_user_pay  
deposit = month_user_pay + (month_user_pay * 0.07 / 12)
puts "Депозит на 1 месяц состовляет " + deposit.round(2).to_s + " руб."
i = 1
while i < month 
user_pays = user_pays + month_user_pay  
procent = deposit * 0.07/12
deposit = month_user_pay + deposit + procent 
puts "Депозит на " + (i+1).to_s + " месяц состовляет " + deposit.round(2).to_s + "руб."
i+=1
end

puts
puts "Вы забрали свои деньги через " + month.to_s + " месяцев. Банк выплатил Вам " + (deposit - user_pays).round(2).to_s + " руб. процентами. Всего сделано вложений: " + user_pays.to_s + " руб." 