//
//  ViewController.swift
//  Example
//
//  Created by yolo on 2017/2/8.
//  Copyright © 2017年 Qiun Cheng. All rights reserved.
//

import UIKit
import SegueHandlerHelper

class FirstViewController: UIViewController, SegueHandlerHelper {
    
    @IBAction func buttonClicked(_ sender: UIButton) {
        performSegue(with: .showInfo, sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let identifierType = identifier(for: segue)
        if identifierType == .showInfo {
            let secondViewController = segue.destination as? SecondViewController
            secondViewController?.buttonTitle = "Have Segue Successfully."
        }
    }

    enum SegueIdentifierType: String {
        case showInfo
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

