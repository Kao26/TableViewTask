//
//  AddControllerViewControllerRow2.swift
//  TableViewTask
//
//  Created by Kaoru Tsugane on 2019/06/05.
//  Copyright © 2019 津金薫. All rights reserved.
//

import UIKit

//入力内容保存のための変数
var contents2 = [String]()

class AddControllerViewControllerRow2: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //画像が読み込まれた時にデータを読み込む
        if UserDefaults.standard.object(forKey: "NameList2") != nil {
            
            contents2 = UserDefaults.standard.object(forKey: "NameList2") as! [String]
        }
        
    }
    

    @IBOutlet weak var TextField2: UITextField!
    
    
    @IBAction func AddButton2(_ sender: Any) {
        
        //変数に入力内容を入れる
        contents2.append(TextField2.text!)
        //チェック
        print("AddButtonした時:\(contents2)")
        
        
        //追加後テキストフィールドをからにする
        TextField2.text = ""
        
        //変数の中身をUserDefaultに保存しておく
        UserDefaults.standard.set( contents2, forKey: "NameList2" )
        
        
    }
    
    
    
    
    
    
    
    
    
    
    
    
    

}
