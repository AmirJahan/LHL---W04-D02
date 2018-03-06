import UIKit;
import MessageUI;


class ViewController: UIViewController, MFMailComposeViewControllerDelegate
{
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
    }
    
    
    
    
    func DowncastingFunc () -> String
    {
        let myArr = NSArray(objects: "one", "two", "three");
        
        let myStr : String! = myArr[0] as! String; // not necessarily
        
        // forced into string
        // NSString* myStr = (NSString *) [myArr objectAtIndex: 0];
        return myStr!; // nil
    }
    

    
    
    // tuyple
    
    func TuplesFunc_simple()
    {
        let myTuplesDir = (deg: 10,
                           direction: "east")

        print(myTuplesDir.deg);
    }
    

    func TuplesReturnFunc () -> (dir: String, deg: Int)
    {
        return ("east", 43);
    }
    
    
    
    
    
    func TuplesFunc_Two()
    {
        let myDict : NSMutableDictionary  = NSMutableDictionary()
        myDict.setValue("Ford", forKey: "car")
        myDict.setValue("NVN", forKey: "address")
        
        
        for (key, value) in myDict
        {
            print("key is: \(key)")
            
            let a: String = key as! String;
            let b: String = value as! String;
            
            switch (a, b)
            {
            case ("car", "Ford"):
                print("like me");
            case ("car", "BMW"):
                print("hmm, like no one I know");
            default:
                print("it's");
            }
        }
        
    }
    
    
    
    func GenericsFunc<T: Comparable>(_ x: T, _ y: T) -> T {
        if x < y {
            return y
        }
        return x
    }
    
    
    
    

    func multReturnFunc (a: Int, b: Int) -> (aLarger: Bool, theLArger: Int)
    {
        if (a > b)
        {
            return (true, a)
        }
        else
        {
            return (false, b)
        }
    }

    
    
    

    //
    
    @IBAction func sendEmail(_ sender: Any)
    {
        let mailComposerVC = MFMailComposeViewController()
        mailComposerVC.mailComposeDelegate = self
        
        let allData: (email: String, name: String, lastName: String) = ("Amir.jahan@gmail.com", "Amir", "Jahanlou")
        
        
        mailComposerVC.setToRecipients([allData.email])
        mailComposerVC.setSubject("Hello " + allData.name + " " + allData.lastName)
        mailComposerVC.setMessageBody("", isHTML: false)
        //
        if MFMailComposeViewController.canSendMail()
        {
            self.present(mailComposerVC, animated: true, completion: nil)
        }
    }
    
    func mailComposeController(_ controller: MFMailComposeViewController,
                               didFinishWith result: MFMailComposeResult, error: Error?)
    {
     
        self.dismiss(animated: true, completion: nil);
    }
    
    
    func enumFunc() -> Void
    {
        enum Direction
        {
            case north, south, east, west
            case offBy(degress: Int)
        }
        //
        let otherDirection = Direction.offBy(degress: 3)
        //
        switch otherDirection
        {
        case .north, .south, .east:
            print("North, South or East")
        case .offBy(let degs):
            print("It's off by \(degs)")
        default:
            print("West")
        }
    }
    
}




