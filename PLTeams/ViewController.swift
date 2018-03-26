//
//  ViewController.swift
//  PLTeams
//
//  Created by Fredrick Ohen on 3/26/18.
//  Copyright © 2018 geeoku. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
    let cellIdentifier = "TeamsCell"
    let teams = [Team(image: "arsenal", name: "Arsenal"),
                 Team(image: "chelsea", name: "Chelsea"),
                 Team(image: "everton", name: "Everton"),
                 Team(image: "leicester", name: "Leicester"),
                 Team(image: "liverpool", name: "Liverpool"),
                 Team(image: "mu", name: "M United"),
                 Team(image: "mc", name: "M City"),
                 Team(image: "newcastle", name: "Newcastle"),
                 Team(image: "tottenham", name: "Tottenham"),
                 Team(image: "arsenal", name: "arsenal"),
                 Team(image: "chelsea", name: "Chelsea"),
                 Team(image: "everton", name: "Everton"),
                 Team(image: "leicester", name: "Leicester"),
                 Team(image: "liverpool", name: "Liverpool"),
                 Team(image: "mu", name: "M United"),
                 Team(image: "mc", name: "M City"),
                 Team(image: "newcastle", name: "Newcastle"),
                 Team(image: "tottenham", name: "Tottenham")]
   
    override func viewDidLoad() {
        super.viewDidLoad()
        
        collectionView?.backgroundColor = .red
        
        collectionView?.register(TeamCell.self, forCellWithReuseIdentifier: cellIdentifier)
        
        navigationItem.title = "Teams"
        navigationController?.navigationBar.barTintColor = .purple
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor:UIColor.gray,
                NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 12)]
        
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return teams.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: cellIdentifier, for: indexPath) as? TeamCell else {
            fatalError("Dequed cell not an instance of TeamCell")
        }
        
        cell.team = teams[indexPath.item]
        
        
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        return CGSize(width: (view.frame.width / 3) - 16, height: 100)
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, insetForSectionAt section: Int) -> UIEdgeInsets {
        
        return UIEdgeInsetsMake(8, 8, 8, 8)
    }
    
    
}

//
//class TeamCell: UICollectionViewCell {
//    
//    var team: Team? {
//        didSet {
//            guard let teamImage = team?.image else { return }
//            guard let teamName = team?.name else { return }
//            
//            teamImageView.image = UIImage(named: teamImage)
//            teamNameLabel.text = teamName
//        }
//    }
//    
//    override init(frame: CGRect) {
//        super.init(frame: frame)
//        setupCell()
//        setCellShadow()
//    }
//    
//
//    
//    func setupCell() {
//        self.backgroundColor = .white
//        self.addSubview(teamImageView)
//        self.addSubview(teamNameLabel)
//        
//        teamImageView.anchor(top: topAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 10, paddingLeft: 10, paddingBottom: 10, paddingRight: 10, width: 0, height: 50)
//        teamNameLabel.anchor(top: teamImageView.bottomAnchor, left: leftAnchor, bottom: nil, right: rightAnchor, paddingTop: 0, paddingLeft: 0, paddingBottom: 0, paddingRight: 0)
//    }
//    
//    let teamImageView: UIImageView = {
//        let imageView = UIImageView()
//        imageView.contentMode = .scaleAspectFit
//        imageView.backgroundColor = .green
//        return imageView
//    }()
//    
//    let teamNameLabel: UILabel = {
//        let label = UILabel()
//        label.tintColor = .black
//        label.font = .boldSystemFont(ofSize: 20)
//        label.textColor = .green
//        label.textAlignment = .center
//        label.text = "Team"
//        return label
//    }()
//    
//    
//    required init?(coder aDecoder: NSCoder) {
//        fatalError("init(coder:) has not been implemented")
//    }
//    





