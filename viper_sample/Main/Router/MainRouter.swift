//
//  MainRouter.swift
//  viper_sample
//
//  Created by jerome cha on 2019/10/31.
//  Copyright © 2019 jerome cha. All rights reserved.
//

import UIKit

class MainRouter {

    private var viewController: MainViewController?

    func getViewController() -> MainViewController? {
        viewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "MainViewController") as? MainViewController
        initViper()
        return viewController
    }

    private func initViper() {
        let presenter = MainPresenter()
        let getColorInteractor = MainGetColorInteractor()
        let getFontInteractor = MainGetFontInteractor()

        viewController?.presenter = presenter

        presenter.router = self
        presenter.viewDelegate = viewController
        presenter.getColorInteractor = getColorInteractor
        presenter.getFontInteractor = getFontInteractor

        getColorInteractor.presenterDelegate = presenter

        getFontInteractor.presenterDelegate = presenter
    }
    
}
