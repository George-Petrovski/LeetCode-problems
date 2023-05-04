# @param {Integer[]} digits
# @return {Integer[]}
def plus_one(digits)
    carryover, pointer = 1, -1
    
    while carryover.positive?
        break digits.unshift(carryover) if digits[pointer].nil?
        
        sum = digits[pointer] + carryover
        carryover = sum / 10
        digits[pointer] = sum % 10
        pointer -= 1
    end
        
    digits
end