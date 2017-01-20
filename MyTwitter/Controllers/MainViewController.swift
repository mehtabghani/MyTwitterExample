//
//  MainViewController.swift
//  MyTwitter
//
//  Created by Mehtab on 19/01/2017.
//  Copyright © 2017 Mehtab. All rights reserved.
//

import UIKit

class MainViewController: BaseViewController {
    

    var vcHome: HomeViewController?
    var vcMyProfile: MyProfileViewController?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        initTabConroller()
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    func initTabConroller(){
        self.vcHome = HomeViewController()
        self.vcMyProfile = MyProfileViewController()
    
    
        let tabBarController = UITabBarController()
        tabBarController.viewControllers = [vcHome!, vcMyProfile!]
        
        //adding all three views to the TabBarView
        let item1 = UITabBarItem(title: "Home", image: nil, tag: 0)
        let item2 = UITabBarItem(title: "Me", image: nil, tag: 1)
        //defining the items of the TabBar corresponding to three views
        vcHome?.tabBarItem = item1
        vcMyProfile?.tabBarItem = item2
        
                getAppDelegate().window?.rootViewController = tabBarController
    }
   
}
