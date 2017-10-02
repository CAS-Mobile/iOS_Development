import UIKit

class ViewController: UIViewController , UITextFieldDelegate {
    
    @IBOutlet weak var textField: UITextField!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        textField.delegate = self
        // load data from UserDefaults
    }


    @IBAction func buttonTapped(_ sender: Any) {
        
        // store data in UserDefaults
        
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        textField.resignFirstResponder()
        return true
    }
}

