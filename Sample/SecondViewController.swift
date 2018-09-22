//
//  SecondViewController.swift
//  Sample
//
//  Created by Satoshi Komatsu on 2018/09/20.
//  Copyright © 2018年 Satoshi Komatsu. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController, UITabBarDelegate, UITableViewDataSource {
    
    var id: Int!
    @IBOutlet weak var tableView: UITableView!
    @IBOutlet weak var navigationTitle: UINavigationItem!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        
        guard let number = id else {
            return
        }
        
        if number == 0{
            navigationTitle.title = "first"
        } else  if number == 1 {
            navigationTitle.title = "second"
        }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 10
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell")
        
        guard  let number = id else {
            return cell!
        }
        
        if number == 0{
            cell?.textLabel?.text = "テスト"
        } else if number == 1 {
            cell?.textLabel?.text = "テストじゃないよ"
        }
        
        return cell!
    }
}
