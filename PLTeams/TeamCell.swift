//
//  TeamCell.swift
//  PLTeams
//
//  Created by Fredrick Ohen on 3/26/18.
//  Copyright © 2018 geeoku. All rights reserved.
//

import UIKit

class TeamCell: UICollectionViewCell {
    
    var team: Team? {
        didSet {
            guard let teamImage = team?.image else { return }
            guard let teamName = team?.name else { return }
            
            teamImageView.image = UIImage(named: teamImage)
            teamNameLabel.text = teamName
        }
    }
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        setupCell()
        setCellShadow()
    }

    
    func setupCell() {
        self.backgroundColor = .white
        self.addSubview(teamImageView)
        self.addSubview(teamNameLabel)
        
        teamImageView.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 10, paddingLeft: 10, paddingBottom: 10, paddingRight: 10, width: 0, height: 50)
        teamNameLabel.anchor(top: teamImageView.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
    }
    
    let teamImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.backgroundColor = .green
        return imageView
    }()
    
    let teamNameLabel: UILabel = {
        let label = UILabel()
        label.tintColor = .black
        label.font = .boldSystemFont(ofSize: 20)
        label.textColor = .green
        label.textAlignment = .center
        label.text = "Team"
        return label
    }()
    
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
