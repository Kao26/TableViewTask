//
//  TableViewControllerRow2.swift
//  TableViewTask
//
//  Created by Kaoru Tsugane on 2019/06/05.
//  Copyright © 2019 津金薫. All rights reserved.
//

import UIKit

var names2: [String] = []

class TableViewControllerRow2: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        
        if UserDefaults.standard.object(forKey: "NameList2") != nil {
            names2 = UserDefaults.standard.object(forKey: "NameList2") as! [String]
        }
        
    }

   //画面遷移の更新
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if UserDefaults.standard.object(forKey: "NameList2") != nil {
            names2 = UserDefaults.standard.object(forKey: "NameList2") as! [String]
            //チェック
            print("画面遷移:\(names2)")
         
            tableView.reloadData()
            
        }
        
    }
    
    //セルの編集許可
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool
    {
        return true
    }
    
    //スワイプしたセルを削除
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            names2.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath as IndexPath], with: UITableView.RowAnimation.automatic)
        }
        UserDefaults.standard.set( names2, forKey: "NameList2" )
        
    }
    
    

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return names2.count
    }

    //この中で表示内容を設定するプログラムを記述する
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        //セルのオブジェクトを作成
        // "NameCell" の部分はStoryboardでセルに設定したIdentifierを指定しています。
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell2", for: indexPath)
        

        // namesから該当する行の文字列を取得してセルに設定
        cell.textLabel?.text = names2[indexPath.row]
        
        return cell
    }
    

}
