//
//  HistoryTableViewCell.swift
//  RunAwesome
//
//  Created by ramil on 23.07.2021.
//

import UIKit

final class HistoryTableViewCell: UITableViewCell {
    
    // MARK:- external props
    var totalMiles: Double = 0.0 {
        didSet {
            totalMilesLabel.text = String(format: "%0.1f", totalMiles)
            layoutIfNeeded()
        }
    }
    
    var totalTime: String = "00:02:12" {
        didSet {
            totalMilesLabel.text = totalTime
            layoutIfNeeded()
        }
    }
    
    var entryDate: String = "04/04/2021" {
        didSet {
            entryDataLabel.text = entryDate
            layoutIfNeeded()
        }
    }
    
    // MARK:- UI elements
    private lazy var totalMilesLabel: UILabel = {
        let v = UILabel()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.text = "0.0"
        v.textColor = .white
        v.font = UIFont.boldSystemFont(ofSize: 24)
        return v
    }()
    
    private lazy var totalTimeLabel: UILabel = {
        let v = UILabel()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.text = "0.0"
        v.textColor = .white
        v.font = v.font.withSize(18)
        return v
    }()
    
    private lazy var entryDataLabel: UILabel = {
        let v = UILabel()
        v.translatesAutoresizingMaskIntoConstraints = false
        v.text = "0.0"
        v.textColor = .white
        v.font = v.font.withSize(18)
        return v
    }()
    
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        setupViews()
        setupConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupViews() {
        backgroundColor = UIColor.black.withAlphaComponent(0.1)
        contentView.addSubview(totalMilesLabel)
        contentView.addSubview(totalTimeLabel)
        contentView.addSubview(entryDataLabel)
    }
    
    private func setupConstraints() {
        // total miles label
        NSLayoutConstraint.activate([
            totalMilesLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            totalMilesLabel.topAnchor.constraint(equalTo: contentView.topAnchor, constant: 16)
        ])
        
        // total time label
        NSLayoutConstraint.activate([
            totalTimeLabel.leadingAnchor.constraint(equalTo: contentView.leadingAnchor, constant: 16),
            totalTimeLabel.topAnchor.constraint(equalTo: totalMilesLabel.bottomAnchor, constant: 8),
            totalTimeLabel.bottomAnchor.constraint(equalTo: contentView.bottomAnchor, constant: -16)
        ])
        
        // entry date label
        NSLayoutConstraint.activate([
            entryDataLabel.trailingAnchor.constraint(equalTo: contentView.trailingAnchor, constant: -16),
            entryDataLabel.centerYAnchor.constraint(equalTo: totalMilesLabel.centerYAnchor)
        ])
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        setupConstraints()
    }
}
