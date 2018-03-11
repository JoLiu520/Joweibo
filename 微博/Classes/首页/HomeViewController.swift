//
//  HomeViewController.swift
//  微博
//
//  Created by 刘浪 on 2018/2/22.
//  Copyright © 2018年 haomen. All rights reserved.
//

import UIKit

class HomeViewController: BaseViewController {

    private lazy var titleBtn = TitleButton()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        setUpNavigationBar()
    }
}

// MARK:- 设置UI界面
extension HomeViewController {
    func setUpNavigationBar() -> Void {
        //1.设置左item
        navigationItem.leftBarButtonItem = UIBarButtonItem(imageName: "navigationbar_friendattention")
        //2.设置右item
        navigationItem.rightBarButtonItem = UIBarButtonItem(imageName: "navigationbar_pop")
        //3.设置titleView
        titleBtn .setTitle("coderwhy", for: .normal)
        titleBtn.addTarget(self, action: #selector(titleBtnClick(titleBtn:)), for: .touchUpInside)
        navigationItem.titleView = titleBtn
    }
}

// MARK:- 设置监听
extension HomeViewController {
    @objc private func titleBtnClick(titleBtn : TitleButton) {
        titleBtn.isSelected = !titleBtn.isSelected
        
        let popViewCV = PopoverViewController()
        
        present(popViewCV, animated: true, completion: nil)

    }
}




