//
//  MainGetColorInteractor.swift
//  viper_sample
//
//  Created by jerome cha on 2019/11/08.
//  Copyright © 2019 jerome cha. All rights reserved.
//

import UIKit

class MainGetColorInteractor {
    var presenterDelegate: MainPresenterDelegate?

    func getColor(red: Float, green: Float, blue: Float) {
        presenterDelegate?.setBackgroundColor(color: UIColor(displayP3Red: CGFloat(red / 255.0), green: CGFloat(green / 255.0), blue: CGFloat(blue / 255.0), alpha: 1.0))
    }
}
