//
//  ViewController.swift
//  SomeSadows
//
//  Created by Анна Лошакова on 23.11.2022.
//

import UIKit

class ViewController: UIViewController {

    private lazy var myView = CustomView()

    override func viewDidLoad() {
        super.viewDidLoad()

        view.addSubview(myView)
        myView.translatesAutoresizingMaskIntoConstraints = false
        myView.centerXAnchor.constraint(equalTo: view.centerXAnchor).isActive = true
        myView.centerYAnchor.constraint(equalTo: view.centerYAnchor).isActive = true
        myView.heightAnchor.constraint(equalToConstant: 200).isActive = true
        myView.widthAnchor.constraint(equalToConstant: 200).isActive = true
    }
}

