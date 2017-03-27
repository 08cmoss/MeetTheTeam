//
//  TeamMemberCollectionViewCell.swift
//  MeetTheTeam
//
//  Created by Cameron Moss on 3/27/17.
//  Copyright © 2017 Cameron Moss. All rights reserved.
//

import UIKit

class TeamMemberCollectionViewCell: UICollectionViewCell {
    
    var nameLabel: UILabel
    var titleLabel: UILabel
    var imageView: UIImageView
    
    override init(frame: CGRect) {
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height*2/3))
        titleLabel = UILabel(frame:  CGRect(x: 0, y: imageView.frame.size.height, width: frame.size.width, height: frame.size.height/3))
        nameLabel = UILabel(frame: CGRect(x: 0, y: imageView.frame.size.height - 20, width: frame.size.width, height: frame.size.height/3))
        super.init(frame: frame)
        
        imageView = UIImageView(frame: CGRect(x: 0, y: 0, width: frame.size.width, height: frame.size.height*2/3))
        imageView.contentMode = UIViewContentMode.scaleAspectFit
        contentView.addSubview(imageView)
        
        titleLabel = UILabel(frame: CGRect(x: 0, y: imageView.frame.size.height, width: frame.size.width, height: frame.size.height/3))
        titleLabel.font = UIFont.systemFont(ofSize: UIFont.smallSystemFontSize)
        titleLabel.textAlignment = .center
        contentView.addSubview(titleLabel)
        
        nameLabel = UILabel(frame: CGRect(x: 0, y: imageView.frame.size.height - 20, width: frame.size.width, height: frame.size.height/3))
        nameLabel.font = UIFont.systemFont(ofSize: 14.0, weight: 1.0)
        nameLabel.textAlignment = .center
        contentView.addSubview(nameLabel)
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}
