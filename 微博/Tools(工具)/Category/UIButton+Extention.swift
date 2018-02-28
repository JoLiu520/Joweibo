//
//  UIButton+Extention.swift
//  微博
//
//  Created by 刘浪 on 2018/2/24.
//  Copyright © 2018年 haomen. All rights reserved.
//

import Foundation
import UIKit

extension UIButton {
    convenience init(imageName : String, bgimageName : String) {
        self.init()
        setImage(UIImage(named: imageName), for: UIControlState.normal)
        setImage(UIImage(named: imageName + "_highlighted"), for: UIControlState.highlighted)
        setBackgroundImage(UIImage(named: bgimageName), for: .normal)
        setBackgroundImage(UIImage(named: bgimageName + "_highlighted"), for: .highlighted)
        sizeToFit()
    }
}
