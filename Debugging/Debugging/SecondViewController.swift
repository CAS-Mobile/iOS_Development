import UIKit

// TODO: conform to correct protocol to be able to hide keyboard
class SecondViewController: UIViewController {

    @IBOutlet weak var number1: UITextField!
    @IBOutlet weak var number2: UITextField!
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // TODO: Setting the text field delegates to hide keyboard
    }

    
    @IBAction func didTapAdd(_ sender: Any) {
        
        // TODO: Hide keyboard once user taps 'Add'
        
        let adder = Adder()
        
        // TODO: Fix crash
        self.result.text = String(adder.add(number1: Int(number1.text!)!, number2: Int(number2.text!)!))

        // TODO: Show alert view when user entered invalid values
 
        // TODO: Bonus: delete invalid user input from the textfields once user presses ok
    }

}
