//
//  TableViewController.swift
//  TableViewTask
//
//  Created by Kaoru Tsugane on 2019/06/04.
//  Copyright © 2019 津金薫. All rights reserved.
//

import UIKit

class TableViewController: UITableViewController {
    
    //空の配列を作成
    var names: [String] = []
  

    override func viewDidLoad() {
        super.viewDidLoad()
        
        //処理を委任するselfは上のクラスを意味する
        tableView.delegate = self
        
        //リストに追加した内容を取得する
        //listはテキストで打った内容
        //これを存在チェックをした後で取り出す(入力確認)
        if UserDefaults.standard.object(forKey: "List") != nil {
            names = UserDefaults.standard.object(forKey: "List") as! [String]
            //チェック
            print("取り出し:\(names)")
            
        }
        
    }
    
    
    
    
    //画面遷移時に行われる処理を書いてみるーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
    //画面が表示される直前に表示
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        if UserDefaults.standard.object(forKey: "List") != nil {
        names = UserDefaults.standard.object(forKey: "List") as! [String]
        //チェック
        print("画面遷移:\(names)")
        
        //リロードを入れてみるーーーーーーーーーーーーーーーー
        tableView.reloadData()
          
 
        }
     
    }
 
    
    
 
    
    //こっから消すやつーーーーーーーーーーーーーーーー
    //セルの編集許可
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool
    {
        return true
    }
    
    //スワイプしたセルを削除
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            names.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath as IndexPath], with: UITableView.RowAnimation.automatic)
        }
        
        
        
        //ListDataに保存してみるぞおおおおおお
        //セルを削除したらすぐ保存ってこと
        UserDefaults.standard.set( names, forKey: "List" )
  
        
    }
    //ここまで消すやつーーーーーーーーーーーーーーーーーーーーーーーー

    
    
    


    //表示するセクション数を指定　リターンの値がセクションの数になる
    override func numberOfSections(in tableView: UITableView) -> Int {
        
        return 1
    }

    //TableViewに表示するセクションごとのせるの数を指定する
    //names.countとすることで、namesの要素数を取り出すことができる、名前を増やしても書き換える必要がなくなった
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return names.count
        
    }
    
    
    
    //各行のセルを表示する際に呼ばれるプログラム
    //この中で表示内容を設定するプログラムを記述する
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        
        //セルのオブジェクトを作成
        // "NameCell" の部分はStoryboardでセルに設定したIdentifierを指定しています。
        let cell = tableView.dequeueReusableCell(withIdentifier: "NameCell", for: indexPath)
        
        
        //?をつけてnilを許容する
        // namesから該当する行の文字列を取得してセルに設定します。
        // indexPath.rowで何行目かわかります。
        cell.textLabel?.text = names[indexPath.row]
        
        return cell
    }
    /*
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        names.reloadData()
    }
 */

   
}
