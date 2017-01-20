//
//  BaseViewController.swift
//  MyTwitter
//
//  Created by Mehtab on 20/01/2017.
//  Copyright © 2017 Mehtab. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    public func getAppDelegate() -> AppDelegate {
        return UIApplication.shared.delegate as! AppDelegate;
    }
  

}
