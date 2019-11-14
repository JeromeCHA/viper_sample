//
//  MainGetFontInteractor.swift
//  viper_sample
//
//  Created by jerome cha on 2019/11/08.
//  Copyright © 2019 jerome cha. All rights reserved.
//

import UIKit

class MainGetFontInteractor {
    var presenterDelegate: MainPresenterDelegate?

    func getFontSize(fontSize: Float) {
        presenterDelegate?.setLabelFontSize(font: UIFont.systemFont(ofSize: CGFloat(fontSize)))
    }
}
