class Fizzbuzz

  isDivisibleBy: (number, divisor)-> 
    number % divisor == 0

  isDivisibleByThree: (number)->
    @isDivisibleBy(number, 3)

  isDivisibleByFive: (number)->
    @isDivisibleBy(number, 5)   

  isDivisibleByFifteen: (number)->
    @isDivisibleBy(number, 15)

  says: (number)->
    if @isDivisibleByFifteen(number)
      return "fizzbuzz"
    if @isDivisibleByThree(number) 
      return "fizz"
    if @isDivisibleByFive(number)
      return "buzz"
    else return number


module.exports = Fizzbuzz 