
import UIKit

class ViewControllerOne: UIViewController {

    @IBOutlet weak var textField: UITextField!
    
    @IBAction func unwindToViewController1(segue: UIStoryboardSegue) {
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let viewControllerTwo = segue.destination as? ViewControllerTwo {
            viewControllerTwo.passedString = textField.text
        }
    }
    
}

