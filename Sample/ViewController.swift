//
//  ViewController.swift
//  Sample
//
//  Created by Satoshi Komatsu on 2018/09/20.
//  Copyright © 2018年 Satoshi Komatsu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var first: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func switchButton(_ sender: Any) {
        if first.isEnabled == true {
            first.isEnabled = false
        } else {
            first.isEnabled = true
        }
    }
    
    @IBAction func firstButton(_ sender: Any) {
        self.performSegue(withIdentifier: "toCell", sender: 0)
    }
    
    @IBAction func secondButton(_ sender: Any) {
        self.performSegue(withIdentifier: "toCell", sender: 1)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toCell" {
            let SecondViewController = segue.destination as! SecondViewController
            SecondViewController.id = sender as? Int
        }
    }
}

extension UIButton {
    open override var isEnabled: Bool{
        didSet {
            alpha = isEnabled ? 1.0 : 1.0
        }
    }
}
