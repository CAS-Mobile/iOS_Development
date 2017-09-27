import UIKit
import TSMiniWebBrowser

class ViewController: UIViewController {
    
    override func viewDidAppear(_ animated: Bool) {
        // Initialize Webbrowser after parent view has been shown.
        let webBrowser = TSMiniWebBrowser(url:URL(string:"https://www.hsr.ch"))
        self.present(webBrowser!, animated: false, completion: nil)
    }

}
