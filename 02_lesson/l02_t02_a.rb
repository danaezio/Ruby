#Считывание словаря
arr = File.readlines('noun_dictionary.txt')

maxlength = 0
i = 0

#Нахождение самого длинного слова в словаре
while i<50000 do
    if arr[i].length > maxlength
    maxlength=arr[i].length    
    maxlengthword=arr[i]
    end
    i+=1
end

#Вывод этого слова
puts "Самое длинное слово в английском словаре: " + maxlengthword