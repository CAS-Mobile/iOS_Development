import UIKit

class SecondViewController: UIViewController, UITextFieldDelegate {

    @IBOutlet weak var number1: UITextField!
    @IBOutlet weak var number2: UITextField!
    @IBOutlet weak var result: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Setting the text field delegates
        number1.delegate = self
        number2.delegate = self
    }

    
    @IBAction func didTapAdd(_ sender: Any) {
        
        // Make the keyboard hide once user taps 'Add'
        number1.resignFirstResponder()
        number2.resignFirstResponder()
        
        let adder = Adder()        
        
        // Use safe unwrapping of inner and outer values
        if let summand1Text = number1.text,
            let summand1 = Int(summand1Text),
            let summand2Text = number2.text,
            let summand2 = Int(summand2Text) {
            self.result.text = String(adder.add(number1: summand1, number2: summand2))
        } else {
            let alertViewController = UIAlertController(title: "Incorrect value", message: "Please use a correct value", preferredStyle: UIAlertControllerStyle.alert)
            let actionOk = UIAlertAction(title: "OK", style: UIAlertActionStyle.default, handler: nil)
            alertViewController.addAction(actionOk)
            present(alertViewController, animated: true, completion: nil)
        }
 
    }

}
