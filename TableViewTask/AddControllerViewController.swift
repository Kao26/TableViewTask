//
//  AddControllerViewController.swift
//  TableViewTask
//
//  Created by Kaoru Tsugane on 2019/06/04.
//  Copyright © 2019 津金薫. All rights reserved.
//

import UIKit

//入力内容保存のための変数
var contents = [String]()

class AddControllerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        
        
        //画面が読み込まれた時に保存されていた配列の中身を取り出すーーーーーーーーーーーーーーーーーーーーーー
        //いい感じに動いてよかったぁぁぁ
        
        if UserDefaults.standard.object(forKey: "List") != nil {
            
            contents = UserDefaults.standard.object(forKey: "List") as! [String]
            
        }
        
 
        //チェック
        print("viewDidload:\(contents)")

        // Do any additional setup after loading the view.
    }
    

    @IBOutlet weak var TextField: UITextField!
    
    @IBAction func AddButton(_ sender: Any) {
        
        //変数に入力内容を入れる
        contents.append(TextField.text!)
        
        
        //チェック
        print("AddButtonした時:\(contents)")

        //追加後テキストフィールドをからにする
        TextField.text = ""
        
        //変数の中身をUserDefaultに保存しておく
        //保存場所の名前が"List"
        UserDefaults.standard.set( contents, forKey: "List" )// ->["List":[aaa, bbb, ccc]]
        
    }
    
    
    
    
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
