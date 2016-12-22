//
//  File.swift
//  Jocker
//
//  Created by Mac01 on 12/18/16.
//  Copyright © 2016 Mac01. All rights reserved.
//

import Foundation
import UIKit


class File {
    

    
    
    
    
    var before = [Int]()
    var after = [Int]()
    
    
    func full(a : Int, b : Int){
        before.append(a)
        after.append(b)
        
    }
    
    func corner(button: UIButton){
        button.layer.cornerRadius=button.frame.width*0.1
        

    }
    
    
    
}