//
//  ViewController.swift
//  TwitterProfileLayout
//
//  Created by Vibhor Gupta on 8/16/19.
//  Copyright © 2019 Vibhor Gupta. All rights reserved.
//

import UIKit

class RootViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        view.backgroundColor = .white


        let headerView = HeaderView()
        headerView.translatesAutoresizingMaskIntoConstraints = false

        view.addSubview(headerView)



        NSLayoutConstraint.activate([
            headerView.topAnchor.constraint(equalTo: view.topAnchor, constant: 0),
            headerView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 0),
            headerView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: 0),
            headerView.heightAnchor.constraint(equalToConstant: 200)

            ])


    }



}

