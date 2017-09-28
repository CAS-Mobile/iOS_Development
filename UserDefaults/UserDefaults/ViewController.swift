import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        // Need to show this example in a real application since
        // Playgrounds can't write to UserDefaults.
        
        let myString = "FooBar"
        let myFloat = 0.88
        
        let defaults = UserDefaults.standard
        
        // Write to UserDefaults
        defaults.set(myString, forKey:"myString")
        defaults.set(myFloat, forKey:"myFloat")
        
        // Read from UserDefaults
        let retreivedString = defaults.string(forKey: "myString") ?? ""
        let retreivedFloat = defaults.float(forKey: "myFloat")
        
        NSLog("Retreived string: \(retreivedString)")
        NSLog("Retreived float: \(retreivedFloat)")
    }
}
