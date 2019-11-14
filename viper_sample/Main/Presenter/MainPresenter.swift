//
//  MainPresenter.swift
//  viper_sample
//
//  Created by jerome cha on 2019/10/31.
//  Copyright © 2019 jerome cha. All rights reserved.
//

import UIKit

protocol MainPresenterDelegate: class {
    func setBackgroundColor(color: UIColor)
    func setLabelFontSize(font: UIFont)
}

class MainPresenter {
    weak var viewDelegate: MainViewDelegate?
    var router: MainRouter?
    var getColorInteractor: MainGetColorInteractor?
    var getFontInteractor: MainGetFontInteractor?

    func updateColor(red: Float, green: Float, blue: Float) {
        getColorInteractor?.getColor(red: red, green: green, blue: blue)
    }

    func updateFont(fontSize: Float) {
        getFontInteractor?.getFontSize(fontSize: fontSize)
    }
}

extension MainPresenter: MainPresenterDelegate {
    func setBackgroundColor(color: UIColor) {
        viewDelegate?.setBackgroundColor(color: color)
    }

    func setLabelFontSize(font: UIFont) {
        viewDelegate?.setLabelFontSize(font: font)
    }
}
