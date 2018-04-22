//
//  UIButtonExt.swift
//  goalpost-app
//
//  Created by Alex LaDue on 4/22/18.
//  Copyright © 2018 Alex LaDue. All rights reserved.
//

import UIKit

extension UIButton {
    func setSelectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.4901960784, green: 0.7960784314, blue: 0.5019607843, alpha: 1)
    }
    
    func setDeselectedColor() {
        self.backgroundColor = #colorLiteral(red: 0.7450980392, green: 0.862745098, blue: 0.7843137255, alpha: 1)
    }
}
