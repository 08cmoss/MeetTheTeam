//
//  TeamDetailViewController.swift
//  MeetTheTeam
//
//  Created by Cameron Moss on 3/27/17.
//  Copyright © 2017 Cameron Moss. All rights reserved.
//

import UIKit

class TeamDetailViewController: UIViewController {
    
    let imageView = UIImageView()
    let nameLabel = UILabel()
    let titleLabel = UILabel()
    let bioTextView = UITextView()

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        self.view.backgroundColor = UIColor.white
        setupView()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupView() {
        imageView.frame = CGRect(x: 0, y: 100, width: self.view.frame.size.width, height: self.view.frame.size.height*1/3)
        self.view.addSubview(imageView)
        
        nameLabel.frame = CGRect(x: 0, y: 60, width: self.view.frame.size.width, height: 50)
        nameLabel.font = UIFont.systemFont(ofSize: 20.0, weight: 1.0)
        nameLabel.textAlignment = .center
        self.view.addSubview(nameLabel)
        
        titleLabel.frame = CGRect(x: 0, y: self.view.frame.size.height - 280, width: self.view.frame.size.width, height: 40)
        titleLabel.font = UIFont.italicSystemFont(ofSize: 18.0)
        titleLabel.textAlignment = .center
        self.view.addSubview(titleLabel)
        
        bioTextView.frame = CGRect(x: 0, y: self.view.frame.size.height - 250, width: self.view.frame.size.width, height: 250)
        bioTextView.font = UIFont.systemFont(ofSize: 13.0, weight: 0.0)
        bioTextView.textAlignment = .center
        bioTextView.isEditable = false
        bioTextView.isSelectable = false
        self.view.addSubview(bioTextView)
        
    }
    

}
