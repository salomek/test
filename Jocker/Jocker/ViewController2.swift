
import UIKit

class ViewController2: UIViewController, UITextFieldDelegate {
    
    
    @IBOutlet weak var name1label: UILabel!
    @IBOutlet weak var name2label: UILabel!
    @IBOutlet weak var name3label: UILabel!
    @IBOutlet weak var name4label: UILabel!
    
    
    @IBOutlet weak var count: UILabel!
    
    
    
    
    
    @IBOutlet weak var l1: UILabel!
    @IBOutlet weak var l2: UILabel!
    @IBOutlet weak var l3: UILabel!
    @IBOutlet weak var l4: UILabel!
    
    @IBOutlet weak var l5: UILabel!
    @IBOutlet weak var l6: UILabel!
    @IBOutlet weak var l7: UILabel!
    @IBOutlet weak var l8: UILabel!
    
    @IBOutlet weak var tx1: UITextField!
    @IBOutlet weak var tx2: UITextField!
    @IBOutlet weak var tx3: UITextField!
    @IBOutlet weak var tx4: UITextField!
    
    @IBOutlet weak var tx5: UITextField!
    @IBOutlet weak var tx6: UITextField!
    @IBOutlet weak var tx7: UITextField!
    @IBOutlet weak var tx8: UITextField!
    
    @IBOutlet weak var error: UILabel!
    
    @IBOutlet weak var b0: UIButton!
    @IBOutlet weak var b1: UIButton!
    @IBOutlet weak var b2: UIButton!
    @IBOutlet weak var b3: UIButton!
    @IBOutlet weak var b4: UIButton!
    @IBOutlet weak var b5: UIButton!
    @IBOutlet weak var b6: UIButton!
    @IBOutlet weak var b7: UIButton!
    @IBOutlet weak var b8: UIButton!
    @IBOutlet weak var b9: UIButton!
    @IBOutlet weak var b10: UIButton!
    
    @IBOutlet weak var img1: UIImageView!
    @IBOutlet weak var img2: UIImageView!
    @IBOutlet weak var img3: UIImageView!
    @IBOutlet weak var img4: UIImageView!
    
    
    var ysegment = 0
    
    
    
    var name1 = ""
    var name2 = ""
    var name3 = ""
    var name4 = ""
    
    var p1 = File()
    var p2 = File()
    var p3 = File()
    var p4 = File()
    
    var file = File()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        name1label.text=name1
        name2label.text=name2
        name3label.text=name3
        name4label.text=name4
        
        tx1.delegate = self
        tx2.delegate = self
        tx3.delegate = self
        tx4.delegate = self
        tx5.delegate = self
        tx6.delegate = self
        tx7.delegate = self
        tx8.delegate = self
        
        file.corner(b0)
        file.corner(b1)
        file.corner(b2)
        file.corner(b3)
        file.corner(b4)
        file.corner(b5)
        file.corner(b6)
        file.corner(b7)
        file.corner(b8)
        file.corner(b9)
        file.corner(b10)
        
    }
    
    var count2 = 0

    @IBAction func number(sender: UIButton) {
        
        
        if count2 == 0{
            tx1.text="\(sender.tag)"
            if tx1.text=="0"{
                tx1.text="-"
            }
            tx2.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
            tx1.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            
        }
        else if count2 == 1{
            tx2.text="\(sender.tag)"
            if tx2.text=="0"{
                tx2.text="-"
            }

            tx3.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
            tx2.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            
        }
        else if count2 == 2{
            tx3.text="\(sender.tag)"
            if tx3.text=="0"{
                tx3.text="-"
            }

            tx4.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
            tx3.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
        }

        else if count2 == 3{
            tx4.text="\(sender.tag)"
            if tx4.text=="0"{
                tx4.text="-"
            }

            tx5.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
            tx4.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            
        }
            

        else if count2 == 4{
            tx5.text="\(sender.tag)"
            if tx1.text==tx5.text && tx1.text != count.text!{
            
            tx5.text="\(sender.tag*50+50)"
            }
            else if tx1.text==tx5.text && tx1.text == count.text{
                
                tx5.text="\(sender.tag*100)"
            }
            else if tx1.text != tx5.text && tx5.text == "0"{
                tx5.text="||--||"
            }
            else {
                tx5.text="\(sender.tag*10)"
            }
        
        
            tx6.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
            tx5.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
        
        }

        else if count2 == 5{
            tx6.text="\(sender.tag)"
            if tx2.text==tx6.text && tx2.text != count.text!{
                
                tx6.text="\(sender.tag*50+50)"
            }
            else if tx2.text==tx6.text && tx2.text == count.text{
                
                tx6.text="\(sender.tag*100)"
            }
            else if tx2.text != tx6.text && tx6.text == "0"{
                tx6.text="||--||"
            }

            else {
                tx6.text="\(sender.tag*10)"
            }
            tx7.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
            tx6.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            
        }

        else if count2 == 6{
 
            tx7.text="\(sender.tag)"
            if tx3.text==tx7.text && tx3.text != count.text!{
                
                tx7.text="\(sender.tag*50+50)"
            }
            else if tx3.text==tx7.text && tx3.text == count.text{
                
                tx7.text="\(sender.tag*100)"
            }
            else if tx3.text != tx7.text && tx7.text == "0"{
                tx7.text="||--||"
            }

            else {
                tx7.text="\(sender.tag*10)"
            }

            tx8.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
            tx7.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
            
        }

        else if count2 == 7{
            tx8.text="\(sender.tag)"
            if tx4.text==tx8.text && tx4.text != count.text!{
                
                tx8.text="\(sender.tag*50+50)"
            }
            else if tx4.text==tx8.text && tx4.text == count.text{
                
                tx8.text="\(sender.tag*100)"
            }
            else if tx4.text != tx8.text && tx8.text == "0"{
                tx8.text="||--||"
            }

            else {
                tx8.text="\(sender.tag*10)"
            }

            tx8.backgroundColor = UIColor(red: 151/255, green: 158/255, blue: 171/255, alpha: 1)
           
        }
        
        count2=count2+1
        error.text=""
        if count2==9{
            error.text="!"
        }
        
        
    }
    
    var x1 = ""
    var x2 = ""
    var x3 = ""
    var x4 = ""
    var x5 = ""
    var x6 = ""
    var x7 = ""
    var x8 = ""
    
    var y1 = 0
    var y2 = 0
    var y3 = 0
    var y4 = 0
    var y5 = 0
    var y6 = 0
    var y7 = 0
    var y8 = 0
    

    var count3 = 1
    
    
    
    /*func checksegments(segment: Int, mytext: String, countText: String )->Int  {
        
        var tmp:Int=0
        
        if segment==0 && mytext=="||--||"{
            tmp = -200
            
        }
            
        else if segment==1 && mytext=="||--||" && Int(countText)!<9{
            tmp = -200
            
            
        }
            
        else if segment==1 && mytext=="||--||" && Int(countText)!==9{
            tmp = -200
            
        }
        
        return tmp
    }
    
    */
    

    
    @IBAction func next (sender: UIButton) {
        if count2<8{
            error.text="!"
        }
        else{
            if tx1.text=="-"{
                x1="0"
                y1=Int(x1)!
            }
            
                        else{
            x1=tx1.text!
            y1=Int(x1)!
            }
            
            if ysegment==0 && tx5.text=="||--||"{
                x5="-200"
                y5=Int(x5)!
            }
            else if ysegment==1 && tx5.text!=="||--||" && Int(count.text!)!<9{
                x5="-200"
                y5=Int(x5)!
            }
            else if ysegment==1 && tx5.text!=="||--||" && Int(count.text!)!==9{
                x5="-500"
                y5=Int(x5)!
            }
            else if ysegment == 2 && tx5.text == "||--||" {
                x5=count.text!
                y5=Int(x5)! * (-100)
            }

            else{
            x5=tx5.text!
            y5=Int(x5)!
            }
            
            
            
            
            
            if tx2.text=="-"{
                x2="0"
                y2=Int(x2)!
            }
                
            else{
            x2=tx2.text!
            y2=Int(x2)!
            }
            
            
            
            
            
            if ysegment==0 && tx6.text=="||--||"{
                x6="-200"
                y6=Int(x6)!
            }
            else if ysegment==1 && tx6.text!=="||--||" && Int(count.text!)!<9{
                x6="-200"
                y6=Int(x6)!
            }
            else if ysegment==1 && tx6.text!=="||--||" && Int(count.text!)!==9{
                x6="-500"
                y6=Int(x6)!
            }
            else if ysegment == 2 && tx6.text == "||--||" {
                x6=count.text!
                y6=Int(x6)! * (-100)
            }
                
            else{
                x6=tx6.text!
                y6=Int(x6)!
            }
            
            
            
            
            
            if tx3.text=="-"{
                x3="0"
                y3=Int(x3)!
            }
            else{
            x3=tx3.text!
            y3=Int(x3)!
            }
            
            
            
            
            if ysegment==0 && tx7.text=="||--||"{
                x7="-200"
                y7=Int(x7)!
            }
            else if ysegment==1 && tx7.text!=="||--||" && Int(count.text!)!<9{
                x7="-200"
                y7=Int(x7)!
            }
            else if ysegment==1 && tx7.text!=="||--||" && Int(count.text!)!==9{
                x7="-500"
                y7=Int(x7)!
            }
            else if ysegment == 2 && tx7.text == "||--||" {
                x7=count.text!
                y7=Int(x7)! * (-100)
            }
                
            else{
                x7=tx7.text!
                y7=Int(x7)!
            }
            
            

            
            
            
            if tx4.text=="-"{
                x4="0"
                y4=Int(x4)!
            }
            else{

            x4=tx4.text!
            y4=Int(x4)!
            }
            
            
            
            
            
            
            if ysegment==0 && tx8.text=="||--||"{
                x8="-200"
                y8=Int(x8)!
            }
            else if ysegment==1 && tx8.text!=="||--||" && Int(count.text!)!<9{
                x8="-200"
                y8=Int(x8)!
            }
            else if ysegment==1 && tx8.text!=="||--||" && Int(count.text!)!==9{
                x8="-500"
                y8=Int(x8)!
            }
            else if ysegment == 2 && tx8.text == "||--||" {
                x8=count.text!
                y8=Int(x8)! * (-100)
            }
                
            else{
                x8=tx8.text!
                y8=Int(x8)!
            }

            
            
            
            
            
            p1.full(y1, b: y5)
            p2.full(y2, b: y6)
            p3.full(y3, b: y7)
            p4.full(y4, b: y8)
            
            
            
            
        error.text=""
        tx1.text=""
        tx2.text=""
        tx3.text=""
        tx4.text=""
        tx5.text=""
        tx6.text=""
        tx7.text=""
        tx8.text=""
            
        count2=0
            
        tx1.backgroundColor = UIColor(red: 214/255, green: 136/255, blue: 49/255, alpha: 1)
            
            
            if count3 < 8{
                count.text="\(p1.after.count+1)"
                
            }
            
            else if count3>=8 && count3<=11{
                count.text="9"
                
            }
           
            
            else if count3 > 11 && count3 < 20{
                count.text = "\(20 - p1.after.count)"
               
                
            }
            else {
                count.text = "9"
              
            }
            
            count3 = count3 + 1
            
            
            print(p1.after)
           
            print(p2.after)
          
            print(p3.after)
         
            print(p4.after)
            
            if count3%4==1{
                img1.image=UIImage(named: "arrow")
                img4.image=UIImage(named: "")
            }
                else if count3%4==2{
                img2.image=UIImage(named: "arrow")
                img1.image=UIImage(named: "")
                }
            else if count3%4==3{
                img3.image=UIImage(named: "arrow")
                img2.image=UIImage(named: "")
            }
            else {
                img4.image=UIImage(named: "arrow")
                img3.image=UIImage(named: "")
            }
            
            
            
        }
    }
}
    
    
    func textFieldShouldBeginEditing(textField: UITextField) -> Bool {
        return false
    }
    
    
    

