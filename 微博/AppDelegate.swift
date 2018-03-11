//
//  AppDelegate.swift
//  微博
//
//  Created by 刘浪 on 2018/2/11.
//  Copyright © 2018年 haomen. All rights reserved.
//

import UIKit

@UIApplicationMain
class AppDelegate: UIResponder, UIApplicationDelegate {
//111111
    var window: UIWindow?


    func application(_ application: UIApplication, didFinishLaunchingWithOptions launchOptions: [UIApplicationLaunchOptionsKey: Any]?) -> Bool {
        
        // 设置全局颜色
        UITabBar.appearance().tintColor = UIColor.orange
    
        return true
    }



}

