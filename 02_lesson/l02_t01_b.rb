print "Введите сумму ипотечного кредита: ₽"
credit_sum = gets.to_i

time_month = 0
time_year = 0
procent = 0
repayment = 0

print "Введите сумму ежемесячного платежа: RUB "
month_pay = gets.to_i
procent = credit_sum*0.01
repayment = procent - month_pay
if repayment >= 0
  puts "Месячный платёж слишком мал, уменьшите срок кредита или увеличьте месячный платёж."
else  
    puts "-----1-----|------2------|-----3-----|-----4-----|-----5-----"
     while credit_sum > 0
     procent = credit_sum*0.01
     repayment = procent - month_pay
     credit_sum = credit_sum + repayment
     time_month +=1
      if time_month == 12
         time_year+=1
         time_month=0
      end
     puts  "%02d" %time_year.to_s + "y. %02d" %time_month.to_s + "m. %2s" %"|" + "%-12.2f" %credit_sum.to_s + "%2s" %"|" + "%-10.2f" %procent.to_s + "%2s" %"|" + "%-7d" %month_pay.to_s + "%5s" %"|" + "%-7.2f" %repayment.to_s                         
     end 
    if credit_sum < 0
        puts "Поздравляем, Вы выплатили ипотеку и переплатили, возвращаем переплату в виде: RUB " + (credit_sum - credit_sum*2).round(2).to_s
    end
end
    