import UIKit

class ViewController: UIViewController
{

    @IBOutlet weak var myButton: UIButton!
    
    override func viewDidLoad()
    {
        super.viewDidLoad();
    }
    

    @IBAction func showMeSomethign(_ sender: Any)
    {
        
        Alert.Show(inpViewC: self);

    }
}

