//
//  UIBarbuttonItem+Extention.swift
//  微博
//
//  Created by 刘浪 on 2018/2/28.
//  Copyright © 2018年 haomen. All rights reserved.
//

import UIKit

extension UIBarButtonItem {
    convenience init(imageName : String) {
        self.init()
        
        let btn = UIButton()
        btn.setImage(UIImage(named: imageName), for: .normal)
        btn.setImage(UIImage(named: imageName + "_highlighted"), for: .highlighted)
        btn.sizeToFit()
        
        self.customView = btn
    }
}
