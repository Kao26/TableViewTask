//
//  AppDelegate.swift
//  TableViewTask
//
//  Created by Kaoru Tsugane on 2019/06/04.
//  Copyright © 2019 津金薫. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {

    var window: UIWindow?
    
    //リストの内容を入れるための変数
//    var ListData: String?
    
    //入力した内容を入れるための変数
//    var TextData: String?


    
    // アプリが起動完了した時に呼ばれる処理ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?) -> Bool {
        // アプリに保存されている最後のリスト内容を読み込み、lastTextに格納します。
        //テキストに打ち込んだ内容を保存し、TextDataに保存する
//        let userDefaults = UserDefaults.standard
//        //ListData = userDefaults.object(forKey: "NameList") as? String
//        TextData = userDefaults.object(forKey: "List") as? String//[]
        
        return true
    }

    
    // アプリが閉じそうな時に呼ばれる処理ーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーーー
    func applicationWillResignActive(_ application: UIApplication) {
        // ListData,TextDataに格納されている入力内容をアプリに保存します。
//        let userDefaults = UserDefaults.standard
//        //userDefaults.set(ListData, forKey: "NameList")
//        userDefaults.set(TextData, forKey: "List")
        
    }

    func applicationDidEnterBackground(_ application: UIApplication) {
       //アプリが閉じた時に呼ばれる
    }

    func applicationWillEnterForeground(_ application: UIApplication) {
        // アプリが開きそうな時に呼ばれる
        
    }

    func applicationDidBecomeActive(_ application: UIApplication) {
        // アプリを開いた時に呼ばれる
    }

    func applicationWillTerminate(_ application: UIApplication) {
        // フリックしてアプリを閉じた時に呼ばれる

    }


}

