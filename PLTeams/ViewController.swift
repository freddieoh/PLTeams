//
//  ViewController.swift
//  PLTeams
//
//  Created by Fredrick Ohen on 3/26/18.
//  Copyright © 2018 geeoku. All rights reserved.
//

import UIKit

class ViewController: UICollectionViewController, UICollectionViewDelegateFlowLayout {
    
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
        
        collectionView?.register(TeamCell.self, forCellWithReuseIdentifier:TeamCell.cellIdentifier)
        
        navigationItem.title = "Teams"
        navigationController?.navigationBar.barTintColor = .purple
        
        navigationController?.navigationBar.titleTextAttributes = [NSAttributedStringKey.foregroundColor:UIColor.gray,
                NSAttributedStringKey.font: UIFont.boldSystemFont(ofSize: 12)]
        
    }
    
    
    override func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return teams.count
    }
    
    override func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        guard let cell = collectionView.dequeueReusableCell(withReuseIdentifier: TeamCell.cellIdentifier, for: indexPath) as? TeamCell else {
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
