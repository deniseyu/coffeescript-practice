chai = require 'chai'
expect = chai.expect
Fizzbuzz = require '../src/fizzbuzz'

describe 'Fizzbuzz', ->

  fizzbuzz = null
  before -> 
    fizzbuzz = new Fizzbuzz

  it 'knows 3 is divisible by 3', ->
    expect(fizzbuzz.isDivisibleByThree(3)).to.be.true

  it 'knows 1 is not divisible by 3', ->
    expect(fizzbuzz.isDivisibleByThree(1)).to.be.false

  it 'knows 5 is divisible by 5', ->
    expect(fizzbuzz.isDivisibleByFive(5)).to.be.true

  it 'knows 1 is not divisible by 5', ->
    expect(fizzbuzz.isDivisibleByFive(1)).to.be.false

  it 'knows 15 is divisible by 15', ->
    expect(fizzbuzz.isDivisibleByFifteen(15)).to.be.true

  it 'knows 1 is not divisible by 15', ->
    expect(fizzbuzz.isDivisibleByFifteen(1)).to.be.false

  it 'should say fizz when divisible by 3', ->
    expect(fizzbuzz.says(3)).to.equal "fizz"

  it 'should say buzz when divisible by 5', ->
    expect(fizzbuzz.says(5)).to.equal "buzz"    

  it 'should say fizzbuzz when divisible by 15', ->
    expect(fizzbuzz.says(15)).to.equal "fizzbuzz"

  it 'should return number if not a fizzbuzz number', ->
    expect(fizzbuzz.says(1)).to.equal 1