//
//  SecondViewController.swift
//  HW_8
//
//  Created by Александр Грачев on 28.01.2021.
//

import UIKit

class SecondViewController: UIViewController {
    
    func createProduct(_ x: CGFloat, _ y: CGFloat, _ imageName: String) {
        let productImageView: UIImageView? = .init()
    
        productImageView?.image = UIImage(named: imageName)
        view.addSubview(productImageView!)
        productImageView?.frame = CGRect(x: x, y: y, width: 170, height: 250)
        productImageView?.contentMode = .scaleAspectFit
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        

        
        
        
//        firstImageView?.frame = CGRect(x: 20, y: 100, width: 170, height: 250)
//        secondImageView?.frame = CGRect(x: 224, y: 100, width: 170, height: 250)
//        thirdImageView?.frame = CGRect(x: 20, y: 450, width: 170, height: 250)
//        fourthImageView?.frame = CGRect(x: 224, y: 450, width: 170, height: 250)
        
    }
}
