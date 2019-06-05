//
//  AddControllerViewControllerRow3.swift
//  TableViewTask
//
//  Created by Kaoru Tsugane on 2019/06/05.
//  Copyright © 2019 津金薫. All rights reserved.
//

import UIKit

var contents3 = [String]()

class AddControllerViewControllerRow3: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        if UserDefaults.standard.object(forKey: "NameList3") != nil {
            contents3 = UserDefaults.standard.object(forKey: "NameList3") as! [String]
        }
        
    }
    
    @IBOutlet weak var TextField3: UITextField!
    
    
    @IBAction func AddButton3(_ sender: Any) {
        
        contents3.append(TextField3.text!)
        TextField3.text = ""
        UserDefaults.standard.set( contents3, forKey: "NameList3")
        
    }
    
    
    
    
    
}
