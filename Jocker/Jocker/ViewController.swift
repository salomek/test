

import UIKit

class ViewController: UIViewController {

    
    @IBOutlet weak var name1textfild: UITextField!
    @IBOutlet weak var name2textfild: UITextField!
    @IBOutlet weak var name3textfild: UITextField!
    @IBOutlet weak var name4textfild: UITextField!
    
    
    @IBOutlet weak var Ilabel: UILabel!
    @IBOutlet weak var IIlabel: UILabel!
    @IBOutlet weak var IIIlabel: UILabel!
    @IBOutlet weak var IVlabel: UILabel!
    
    @IBOutlet weak var begin: UIButton!
    @IBOutlet weak var error: UILabel!
    
    var file = File()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        file.corner(begin)
        
    }

    override func touchesBegan(touches:Set<UITouch>, withEvent event:UIEvent?){
        self.view.endEditing(true)
    }
    
    @IBAction func dawyeba(sender: UIButton) {
        if name1textfild.text == ""{
            error.text="ველები ცარიელია"
        }
        
        else if name2textfild.text == ""{
            error.text="ველები ცარიელია"
        }
        
        else if name3textfild.text == ""{
            error.text="ველები ცარიელია"
        }
        else if name4textfild.text == ""{
            error.text="ველები ცარიელია"
        }
        else{
            performSegueWithIdentifier("segue", sender: self)
            
        }

        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        guard let controller = segue.destinationViewController as? ViewController2 else {
            return
        }
        
        controller.name1=name1textfild.text!
        controller.name2=name2textfild.text!
        controller.name3=name3textfild.text!
        controller.name4=name4textfild.text!
        controller.ysegment=xsegment
        
    }
    
    var xsegment = 0

    @IBAction func segment(sender: UISegmentedControl) {
        xsegment=sender.selectedSegmentIndex
        
    }
    
}

