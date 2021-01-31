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
        let namePriceLabel: UILabel? = .init()
    
        view.addSubview(productImageView!)
        view.addSubview(namePriceLabel!)
        productImageView?.image = UIImage(named: imageName)
        productImageView?.frame = CGRect(x: x, y: y, width: 170, height: 250)
        productImageView?.contentMode = .scaleAspectFit
        namePriceLabel?.numberOfLines = 2
        namePriceLabel?.text = "Кроссовки Nike Air"
        namePriceLabel?.frame = CGRect(x: x, y: y + 250 , width: 170, height: 21)
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nameArr = ["sneakers_1", "sneakers_2", "sneakers_3", "sneakers_4"]
        var x: CGFloat = 20
        var y: CGFloat = 100
        var i = 0
        for _ in 1...2 {
            createProduct(x, y, nameArr[i])
            i += 1
            x += 204
            createProduct(x, y, nameArr[i])
            i += 1
            x = 20
            y += 350
        }
    }
}
