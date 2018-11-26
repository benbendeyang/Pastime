//
//  HomeMainController.swift
//  Pastime
//
//  Created by 🐑 on 2018/11/20.
//  Copyright © 2018 Zhu. All rights reserved.
//

import UIKit

class HomeMainController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - 操作
    @IBAction func test1(_ sender: Any) {
        // 存储数据
        let saveBool = KeychainManager.keyChainSaveData(data: "有只羊", with: "用户名")
        if saveBool {
            print("存储成功")
        } else {
            print("存储失败")
        }
    }
    
    @IBAction func test2(_ sender: Any) {
        // 获取数据
        if let getString = KeychainManager.keyChainReadData(identifier: "用户名") as? String {
            print(getString)
        }
    }
    
    @IBAction func test3(_ sender: Any) {
        if KeychainManager.keyChianDelete(identifier: "用户名") {
            print("删除成功")
        } else {
            print("删除失败")
        }
    }
    
    @IBAction func test4(_ sender: Any) {
        if KeychainManager.keyChainUpdata(data: "还是一只羊", with: "用户名") {
            print("更新成功")
        } else {
            print("更新失败")
        }
    }
    
    @IBAction func test5(_ sender: Any) {
    }
}
