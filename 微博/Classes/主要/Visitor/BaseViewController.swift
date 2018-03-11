//
//  BaseViewController.swift
//  微博
//
//  Created by 刘浪 on 2018/2/28.
//  Copyright © 2018年 haomen. All rights reserved.
//

import UIKit

class BaseViewController: UITableViewController {

    private lazy var visitorView = UIView()
    
    var isLogin = false
    
    override func loadView() {
        isLogin ? super.loadView() : setVisitorView()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupNavigationItems()
        
    }
}

// MARK:- 设置UI
extension BaseViewController {
    private func setVisitorView() {
        visitorView.backgroundColor = UIColor.orange
        view = visitorView
    }
    
    private func setupNavigationItems() {
        navigationItem.leftBarButtonItem = UIBarButtonItem(title: "注册", style: .plain, target: self, action: #selector(registerBtnClick))
        navigationItem.rightBarButtonItem = UIBarButtonItem(title: "登录", style: .plain, target: self, action: #selector(loginBtnClick))
    }
}

// MARK:- 事件监听
extension BaseViewController {
    @objc private func registerBtnClick() {
        print("registerBtnClick")
    }
    
    @objc private func loginBtnClick() {
        print("loginBtnClick")
    }
}


