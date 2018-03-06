import Foundation;
import UIKit;


class Alert: NSObject
{
    class func Show(inpViewC: UIViewController) -> Void
    {
        let myAlertC = UIAlertController(title: "You got message",
                                         message: "Well, something happened or other",
                                         preferredStyle: UIAlertControllerStyle.alert);
        
        myAlertC.addTextField { (nameTxtFld) in
            // text field's configuration
            nameTxtFld.font = UIFont.systemFont(ofSize: 22)
            nameTxtFld.textAlignment = NSTextAlignment.center;
        }
        
        myAlertC.addTextField { (passTxtFld) in
            // text field's configuration
            passTxtFld.font = UIFont.systemFont(ofSize: 22)
            passTxtFld.textAlignment = NSTextAlignment.center;
            passTxtFld.isSecureTextEntry = true;
        }
        
        let myAction = UIAlertAction(title: "Ok",
                                     style: UIAlertActionStyle.default)
        { (myAction) in
            
            let nameTextField = myAlertC.textFields?[0];
            
            // porint what was typed for the name
            
            print ("You clicked on \(nameTextField?.text)");
            
            
        }
        
        myAlertC.addAction(myAction);
        
        myAlertC.addAction(UIAlertAction(title: "Cancel",
                                         style: UIAlertActionStyle.cancel,
                                         handler: { (myAction) in
                                            
        }))
        
        inpViewC.present(myAlertC, animated: true, completion: nil);

    }
    
}
