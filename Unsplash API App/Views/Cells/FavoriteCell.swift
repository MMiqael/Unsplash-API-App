//
//  FavoriteCell.swift
//  Unsplash API App
//
//  Created by Микаэл Мартиросян on 06.06.2022.
//

import UIKit

class FavoriteCell: UITableViewCell {
    
    let photoImageView: UIImageView = {
        let photoImageView = UIImageView()
//        photoImageView.layer.cornerRadius = photoImageView.frame.width / 2
        photoImageView.contentMode = .scaleAspectFill
        photoImageView.clipsToBounds = true
        photoImageView.layer.cornerRadius = photoImageView.frame.size.width / 2
        return photoImageView
    }()
    
    let nameLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont.systemFont(ofSize: 20)
        label.textColor = .black
        return label
    }()
     
    override init(style: UITableViewCell.CellStyle, reuseIdentifier: String?) {
        super.init(style: style, reuseIdentifier: reuseIdentifier)
        
        setupConfig()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupConfig() {
        addSubview(photoImageView)
        photoImageView.translatesAutoresizingMaskIntoConstraints = false
        photoImageView.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        photoImageView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 10).isActive = true
        photoImageView.heightAnchor.constraint(equalToConstant: 80).isActive = true
        photoImageView.widthAnchor.constraint(equalToConstant: 80).isActive = true
        
        addSubview(nameLabel)
        nameLabel.translatesAutoresizingMaskIntoConstraints = false
        nameLabel.centerYAnchor.constraint(equalTo: centerYAnchor).isActive = true
        nameLabel.leadingAnchor.constraint(equalTo: photoImageView.trailingAnchor, constant: 15).isActive = true
        nameLabel.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: -15).isActive = true
        nameLabel.heightAnchor.constraint(equalToConstant: 50).isActive = true
    }
}

