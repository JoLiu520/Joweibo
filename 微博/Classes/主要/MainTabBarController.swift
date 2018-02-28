//
//  MainTabBarController.swift
//  微博
//
//  Created by 刘浪 on 2018/2/22.
//  Copyright © 2018年 haomen. All rights reserved.
//

import UIKit

class MainTabBarController: UITabBarController {
    // MARK:- 懒加载属性
    @objc private lazy var composeBtn : UIButton = UIButton(imageName: "tabbar_compose_icon_add", bgimageName: "tabbar_compose_button")
    
    override func viewDidLoad() {
        super.viewDidLoad()
       setComposeBtn()
    }

}

// MARK:- 设置UI界面
extension MainTabBarController {
    //设置发布按钮
    private func setComposeBtn() {
        tabBar.addSubview(composeBtn)
        
        composeBtn.center = CGPoint(x: tabBar.center.x, y: tabBar.bounds.size.height * 0.5)

        composeBtn.addTarget(self, action: #selector(composeBtnClick), for: .touchUpInside)
    }
}

// MARK:- 事件监听
extension MainTabBarController {
    @objc private func composeBtnClick() -> Void {
        print("composeBtnClick")
    }
}

