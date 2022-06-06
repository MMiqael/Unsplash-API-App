//
//  RandomPhotoCell.swift
//  Unsplash API App
//
//  Created by Микаэл Мартиросян on 04.06.2022.
//

import UIKit

class RandomPhotoCell: UICollectionViewCell {
    
    let photoImageView: UIImageView = {
        let imageView = UIImageView()
        imageView.contentMode = .scaleAspectFit
        imageView.clipsToBounds = true
        imageView.backgroundColor = .systemGray5
        return imageView
    }()
    
    override init(frame: CGRect) {
        super.init(frame: frame)
        
        setupConstrains()
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
    }
    
    private func setupConstrains() {
        contentView.addSubview(photoImageView)
        photoImageView.translatesAutoresizingMaskIntoConstraints = false
        photoImageView.topAnchor.constraint(equalTo: contentView.topAnchor).isActive = true
        photoImageView.bottomAnchor.constraint(equalTo: contentView.bottomAnchor).isActive = true
        photoImageView.leadingAnchor.constraint(equalTo: contentView.leadingAnchor).isActive = true
        photoImageView.trailingAnchor.constraint(equalTo: contentView.trailingAnchor).isActive = true
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        photoImageView.image = nil
    }
}
