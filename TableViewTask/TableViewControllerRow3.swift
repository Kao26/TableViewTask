//
//  TableViewControllerRow3.swift
//  TableViewTask
//
//  Created by Kaoru Tsugane on 2019/06/05.
//  Copyright © 2019 津金薫. All rights reserved.
//

import UIKit

var names3: [String] = []

class TableViewControllerRow3: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.delegate = self
        
        if UserDefaults.standard.object(forKey: "NameList3") != nil {
            names3 = UserDefaults.standard.object(forKey: "NameList3") as! [String]
        }
        
    }
    
    //画面遷移の更新
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if UserDefaults.standard.object(forKey: "NameList3") != nil {
            names3 = UserDefaults.standard.object(forKey: "NameList3") as! [String]
            
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
            names3.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath as IndexPath], with: UITableView.RowAnimation.automatic)
        }
        UserDefaults.standard.set( names3, forKey: "NameList3" )
        
    }
    
    
    
    

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return names3.count
    }

    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell3", for: indexPath)

        // namesから該当する行の文字列を取得してセルに設定
        cell.textLabel?.text = names3[indexPath.row]

        return cell
    }
    

}
