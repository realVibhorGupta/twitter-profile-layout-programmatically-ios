//
//  HeaderView.swift
//  TwitterProfileLayout
//
//  Created by Vibhor Gupta on 8/16/19.
//  Copyright © 2019 Vibhor Gupta. All rights reserved.
//

import UIKit

class HeaderView: UIView {

    let profileImageView : UIImageView = {
        let imageView = UIImageView()
        imageView.backgroundColor = UIColor.white
        imageView.image = UIImage(named: "dev")
        imageView.clipsToBounds = true
        imageView.contentMode = .scaleAspectFill
        imageView.layer.cornerRadius = 30
        imageView.layer.borderWidth = 2
        imageView.layer.borderColor = UIColor.red.cgColor
        imageView.translatesAutoresizingMaskIntoConstraints = false
        return imageView
    }()


    override init(frame: CGRect) {
        super.init(frame: frame)


        self.backgroundColor = .cyan


        let editButton = UIButton(type: .system)
        editButton.setTitle("Edit Profile", for: .normal)
        editButton.translatesAutoresizingMaskIntoConstraints = false
        editButton.clipsToBounds = true
        editButton.layer.cornerRadius = 17
        editButton.layer.borderWidth = 2
        editButton.layer.borderColor = UIColor.white.cgColor
        self.backgroundColor = .cyan


        let headerImage = UIImageView(image: UIImage(named: "dev"))
        headerImage.contentMode = .scaleAspectFill
        headerImage.clipsToBounds = true
        headerImage.translatesAutoresizingMaskIntoConstraints = false
        self.addSubview(headerImage)

        self.addSubview(profileImageView)
        self.addSubview(editButton)

        NSLayoutConstraint.activate([

            headerImage.topAnchor.constraint(equalTo: self.topAnchor, constant: 0),
            headerImage.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 0),
            headerImage.heightAnchor.constraint(equalToConstant: 120),
            headerImage.rightAnchor.constraint(equalTo: rightAnchor , constant:  0),

            profileImageView.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -35),
            profileImageView.leftAnchor.constraint(equalTo: self.leftAnchor, constant: 35),

            profileImageView.widthAnchor.constraint(equalToConstant: 60),
            profileImageView.heightAnchor.constraint(equalToConstant: 60),

            editButton.bottomAnchor.constraint(equalTo: self.bottomAnchor, constant: -5),
            editButton.rightAnchor.constraint(equalTo: self.rightAnchor, constant: 0),
            editButton.heightAnchor.constraint(equalToConstant: 34),
            editButton.widthAnchor.constraint(equalToConstant: 120 )

            ])
    }


    required init?(coder aDecoder: NSCoder) {
        fatalError("(coder:)")

    }
}
