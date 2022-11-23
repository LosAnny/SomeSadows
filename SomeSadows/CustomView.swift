//
//  CustomView.swift
//  SomeSadows
//
//  Created by Анна Лошакова on 23.11.2022.
//

import UIKit

class CustomView: UIView {

    var backgroundLayer = CALayer(),
        firstLayer = CALayer(),
        secondLayer = CALayer()

    override func layoutSubviews() {
        super.layoutSubviews()

        backgroundLayer.backgroundColor = UIColor.black.cgColor
        backgroundLayer.cornerRadius = 20

        [backgroundLayer,
         firstLayer,
         secondLayer].forEach {
            $0.masksToBounds = false
            $0.frame = layer.bounds
            layer.insertSublayer($0, at: 0)
        }

        firstLayer.applyShadow(color: .blue,
                               alpha: 0.8,
                                x: -15,
                                y: -15,
                                blur: 30,
                                spread: -2)
        secondLayer.applyShadow(color: .systemPink,
                               alpha: 1,
                               x: 15,
                               y: 15,
                               blur: 30,
                               spread: -2)
    }
}
