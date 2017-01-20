//
//  HomeViewController.swift
//  MyTwitter
//
//  Created by Mehtab on 20/01/2017.
//  Copyright © 2017 Mehtab. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {
    
    
    

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        
        setUp()

    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func setUp() {
        let navBar = UINavigationBar(frame: CGRect(x: 0, y: 20, width: 320, height: 40))
        self.view.addSubview(navBar);
        //nav title
        let navItem = UINavigationItem(title: "Home");
        
        //right button
        let searchItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.search, target: nil, action: #selector(getter: UIAccessibilityCustomAction.selector));
        //remove padding between buttons
        searchItem.imageInsets = UIEdgeInsetsMake(0, -30, 0, -70);
        
        let newTweetItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.action, target: nil, action: #selector(getter: UIAccessibilityCustomAction.selector));
        navItem.setRightBarButtonItems([newTweetItem, searchItem], animated: false);
        
        //left button
        let findPeopleItem = UIBarButtonItem(barButtonSystemItem: UIBarButtonSystemItem.add, target: nil, action: #selector(getter: UIAccessibilityCustomAction.selector));
        navItem.leftBarButtonItem = findPeopleItem;
        
        navBar.setItems([navItem], animated: false);
    
    }

}
