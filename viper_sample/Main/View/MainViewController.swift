//
//  MainViewController.swift
//  viper_sample
//
//  Created by jerome cha on 2019/10/31.
//  Copyright © 2019 jerome cha. All rights reserved.
//

import UIKit

protocol MainViewDelegate: class {
    func setBackgroundColor(color: UIColor)
    func setLabelFontSize(font: UIFont)
}

class MainViewController: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    @IBOutlet weak var rSlider: UISlider!
    @IBOutlet weak var gSlider: UISlider!
    @IBOutlet weak var bSlider: UISlider!
    @IBOutlet weak var fontSizeSlider: UISlider!

    var presenter: MainPresenter?

    override func viewDidLoad() {
        super.viewDidLoad()
        presenter?.updateColor(red: rSlider.value, green: gSlider.value, blue: bSlider.value)
        presenter?.updateFont(fontSize: fontSizeSlider.value)
    }

    @IBAction func sliderAction(_ slider: UISlider) {
        presenter?.updateColor(red: rSlider.value, green: gSlider.value, blue: bSlider.value)
    }

    @IBAction func sliderSizeFontAction(_ slider: UISlider) {
        presenter?.updateFont(fontSize: slider.value)
    }
}

extension MainViewController: MainViewDelegate {
    func setBackgroundColor(color: UIColor) {
        view.backgroundColor = color
    }

    func setLabelFontSize(font: UIFont) {
        titleLabel.font = font
    }
}
