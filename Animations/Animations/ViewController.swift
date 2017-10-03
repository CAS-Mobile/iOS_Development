import UIKit

class ViewController: UIViewController {

    /// An empty view with a background color
    @IBOutlet weak var box: UIView!
    
    /// A sample text view with Lorem Ipsum text
    @IBOutlet weak var text: UITextView!
   
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        // We can specify the color as a literal
        self.box.backgroundColor = #colorLiteral(red: 0.721568644, green: 0.8862745166, blue: 0.5921568871, alpha: 1) // same as UIColor(red: 0.72, green: 0.88, blue: 0.59, alpha: 1)
        
        // A simple translation operation and repeat it
        UIView.animate(withDuration: 1, delay: 0, options: [.repeat, .autoreverse], animations: {
            self.box.frame.origin.y += 150
        })
        
        // A custom *transform* (in our case a rotation)
        UIView.animate(withDuration: 3.5, delay: 0.5, options: [], animations: {
            
            // use CGFloat datatype
            let myTransform = CGAffineTransform(rotationAngle: CGFloat(Float.pi))
            self.text.transform = myTransform
        })
    }

}

