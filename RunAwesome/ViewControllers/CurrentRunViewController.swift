//
//  CurrentRunViewController.swift
//  RunAwesome
//
//  Created by ramil on 20.07.2021.
//

import UIKit

class CurrentRunViewController: UIViewController {
    
    // MARK:- UI Elements
    private static let titleFontSize: CGFloat = 32
    private static let subtitleFontSize: CGFloat = 24
    
    private lazy var topLabel: UILabel = {
        let v = UILabel()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.text = "Running..."
        v.textAlignment = .center
        v.font = v.font.withSize(Self.titleFontSize)
        v.textColor = .darkGray
        return v
    }()
    
    private lazy var timeLabel: UILabel = {
        let v = UILabel()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.textColor = .white
        v.font = UIFont.boldSystemFont(ofSize: Self.subtitleFontSize)
        v.text = "00:00:00"
        return v
    }()
    
    private lazy var paceTitleLabel: UILabel = {
        let v = UILabel()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.textColor = .white
        v.text = "Average Pace"
        v.font = v.font.withSize(Self.subtitleFontSize)
        return v
    }()
    
    private lazy var paceLabel: UILabel = {
        let v = UILabel()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.textColor = .white
        v.text = "0:00"
        v.font = UIFont.boldSystemFont(ofSize: Self.titleFontSize)
        return v
    }()
    
    private lazy var paceSubtitleLabel: UILabel = {
        let v = UILabel()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.textColor = .white
        v.text = "/mi"
        v.font = v.font.withSize(Self.subtitleFontSize)
        return v
    }()
    
    private lazy var paceStackView: UIStackView = {
        let v = UIStackView(arrangedSubviews: [paceTitleLabel, paceLabel, paceSubtitleLabel])
        v.translatesAutoresizingMaskIntoConstraints = false
        v.alignment = .center
        v.axis = .vertical
        v.distribution = .equalSpacing
        return v
    }()
    
    private lazy var distanceTitleLabel: UILabel = {
        let v = UILabel()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.textColor = .white
        v.text = "Distance"
        v.font = v.font.withSize(Self.subtitleFontSize)
        return v
    }()
    
    private lazy var distanceLabel: UILabel = {
        let v = UILabel()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.textColor = .white
        v.text = "0.0"
        v.font = UIFont.boldSystemFont(ofSize: Self.titleFontSize)
        return v
    }()
    
    private lazy var distanceSubtitleLabel: UILabel = {
        let v = UILabel()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.textColor = .white
        v.text = "mi"
        v.font = v.font.withSize(Self.subtitleFontSize)
        return v
    }()
    
    private lazy var distanceStackView: UIStackView = {
        let v = UIStackView(arrangedSubviews: [distanceTitleLabel, distanceLabel, distanceSubtitleLabel])
        v.translatesAutoresizingMaskIntoConstraints = false
        v.alignment = .center
        v.axis = .vertical
        v.distribution = .equalSpacing
        return v
    }()
    
    private lazy var pageStackView: UIStackView = {
        let v = UIStackView(arrangedSubviews: [timeLabel, paceStackView, distanceStackView])
        v.translatesAutoresizingMaskIntoConstraints = false
        v.alignment = .center
        v.axis = .vertical
        v.distribution = .equalCentering
        v.backgroundColor = UIColor.black.withAlphaComponent(0.2)
        return v
    }()
    
    private lazy var capsuleView: UIView = {
        let v = UIView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.backgroundColor = UIColor.black.withAlphaComponent(0.5)
        v.layer.cornerRadius = 35
        v.layer.masksToBounds = true
        return v
    }()
    
    private lazy var stopSliderKnob: UIImageView = {
        let v = UIImageView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.isUserInteractionEnabled = true
        v.image = UIImage(systemName: "dot.arrowtriangles.up.right.down.left.circle")
        v.tintColor = .white
        v.layer.borderColor = UIColor.white.cgColor
        v.layer.borderWidth = 5
        v.layer.cornerRadius = 25
        v.layer.masksToBounds = true
        return v
    }()
    
    private lazy var sliderStop: UIImageView = {
        let v = UIImageView()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.image = UIImage(systemName: "stop.circle.fill")
        v.tintColor = .white
        v.layer.borderColor = UIColor.clear.withAlphaComponent(0.5).cgColor
        v.layer.borderWidth = 5
        v.layer.cornerRadius = 35
        v.layer.masksToBounds = true
        return v
    }()

    override func viewDidLoad() {
        super.viewDidLoad()

        
    }
    

}
