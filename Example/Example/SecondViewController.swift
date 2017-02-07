//
//  SecondViewController.swift
//  Example
//
//  Created by yolo on 2017/2/8.
//  Copyright © 2017年 Qiun Cheng. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    var buttonTitle: String?
    
    @IBOutlet weak var secondButton: UIButton!

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        secondButton.setTitle(buttonTitle, for: .normal)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
