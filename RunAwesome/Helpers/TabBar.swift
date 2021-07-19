//
//  TabBar.swift
//  RunAwesome
//
//  Created by ramil on 19.07.2021.
//

import UIKit

final class TabBar: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        tabBar.tintColor = UIColor.label
        setupViewControllers()
    }
    
    private func setupViewControllers() {
        viewControllers = [
            createViewControllers(for: HomeViewController(), title: "Run", systemImage: "hare"),
            createViewControllers(for: HistoryViewController(), title: "Logs", systemImage: "clock")
        ]
    }
    
    private func createViewControllers(for viewController: UIViewController, title: String, systemImage: String) -> UIViewController {
        
        let iconSymbol = UIImage(systemName: systemImage)
        
        let selectedSymbol = UIImage(systemName: systemImage, withConfiguration: UIImage.SymbolConfiguration(weight: .bold))
        
        let tabBarItem = UITabBarItem(title: title, image: iconSymbol, selectedImage: selectedSymbol)
        viewController.tabBarItem = tabBarItem
        return viewController
    }
}
