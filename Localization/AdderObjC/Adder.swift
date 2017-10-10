import Foundation

/**
 Add two numbers.
 */
class Adder: NSObject {
    
    /**
     Calculate **sum** of two integer numbers.
     
     - Parameters:
       - number1: The first number
       - number2: The second number
     - Returns: The sum of the two numbers, `number1` and `number2`.
     */
    @objc
    func add(number1: Int, number2: Int) -> Int {
        return number1 + number2
    }
    
}
