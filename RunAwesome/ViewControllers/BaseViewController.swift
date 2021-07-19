//
//  BaseViewController.swift
//  RunAwesome
//
//  Created by Ramill Ibragimov on 18.07.2021.
//

import UIKit

class BaseViewController: UIViewController {
    
    private lazy var backgroundLayer: GradientView = {
        let v = GradientView(colors: [#colorLiteral(red: 0.1385609053, green: 0.7682312393, blue: 0.9686274529, alpha: 1), #colorLiteral(red: 0.2860111375, green: 0.338744202, blue: 0.9764705896, alpha: 1), #colorLiteral(red: 0.6210500196, green: 0.3270789928, blue: 0.9568627477, alpha: 1), #colorLiteral(red: 0.8218725611, green: 0.3021660928, blue: 0.9098039269, alpha: 1)])
        v.translatesAutoresizingMaskIntoConstraints = false
        return v
    }()

    override func viewDidLoad() {                                                                                                                                                                                                               
        super.viewDidLoad()
        setupViews()
        setupConstraoins()
    }
    
    private func setupViews() {
        view.addSubview(backgroundLayer)
    }
    
    private func setupConstraoins() {
        NSLayoutConstraint.activate([
            backgroundLayer.leadingAnchor.constraint(equalTo: view.leadingAnchor),
            backgroundLayer.trailingAnchor.constraint(equalTo: view.trailingAnchor),
            backgroundLayer.topAnchor.constraint(equalTo: view.topAnchor),
            backgroundLayer.bottomAnchor.constraint(equalTo: view.bottomAnchor)
        ])
    }
}
