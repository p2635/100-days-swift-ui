//: [Previous](@previous)
/*:
# Code with Chris - 14 Days of Swift Challenge

 This is unrelated to the 100 days of SwiftUI challenge. These challenges were taken from the course above, Lesson 9 - Structure Instances.

# Challenge 1
 
- Declare a struct called TaxCalculator
- Declare a property inside called tax and set it to a decimal value representing the amount of sales tax where you live
- Declare a method inside called totalWithTax that accepts a Double as an input parameter and returns a Double value.
- Inside that method, write the code to return a Double value representing the input number with tax included

*/
struct TaxCalculator {
    
    let tax = 10.5
    func totalWithTax(input: Double) -> Double {
        input + tax
    }
}

var calc = TaxCalculator()
print(calc.totalWithTax(input: 20.5)) // 10.5 + 20.5 = 31.0

/*:
 # Challenge 2
- Declare a struct called BillSplitter
- Declare a method inside called splitBy that:
 - has an input parameter of type Double representing a subtotal
 - has an input parameter of type Int representing the number of people
 - returns a Double value
- Inside that method, use an instance of TaxCalculator (from challenge 1 above) to calculate the total with tax and then split the bill by the number of people passed into the method.
 - Return the amount that each person has to pay.
*/
struct BillSplitter {
    
    func splitBy(subtotal: Double, people: Int) -> Double {
        let taxCalc = TaxCalculator()
        let totalWithTax = taxCalc.totalWithTax(input: subtotal)
        return totalWithTax / Double(people)
    }
}

/*: # Challenge 3
- Create an instance of BillSplitter
- Use the instance to print out the amount that each person pays (Assuming 5 people with a bill of $120)
*/
var billSplitter = BillSplitter()
print(billSplitter.splitBy(subtotal: 120.0, people: 5)) // Should be (120.0 + 10.5) / 5 = 130.5 / 5 = 26.1

//: [Next](@next)
