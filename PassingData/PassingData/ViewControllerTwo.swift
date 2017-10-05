
import Foundation
import UIKit

class ViewControllerTwo : UIViewController {

    override func viewDidLoad() {
        super .viewDidLoad()
        passedDataLabel.text = passedString
    }
    
    @IBOutlet weak var passedDataLabel: UILabel!
    
    public var passedString: String!
    
    @IBAction func didTapBack(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}
