//
//  HomeMainController.swift
//  Pastime
//
//  Created by 🐑 on 2018/11/20.
//  Copyright © 2018 Zhu. All rights reserved.
//

import UIKit
import Alamofire

class HomeMainController: BaseViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    // MARK: - 操作
    @IBAction func test1(_ sender: Any) {
        Alamofire.request("http://baidu.com/")
    }
    
    @IBAction func test2(_ sender: Any) {
        Alamofire.request("https://httpbin.org/get").responseJSON { response in
            print("原始的URL请求:\(response.request)")  // 原始的URL请求
            print("HTTP URL响应:\(response.response)") // HTTP URL响应
            print("服务器返回的数据:\(response.data)")     // 服务器返回的数据
            print("存储的是JSON数据:\(response.result)")   // 响应序列化结果，在这个闭包里，存储的是JSON数据
            
            if let JSON = response.result.value {
                print("JSON: \(JSON)")
            }
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
