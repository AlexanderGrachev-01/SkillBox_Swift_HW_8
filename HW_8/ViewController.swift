//
//  ViewController.swift
//  HW_8
//
//  Created by Александр Грачев on 28.01.2021.
//

import UIKit

class ViewController: UIViewController {
    
    var imageList = ["sneakers_1.png", "sneakers_2.png", "sneakers_3.png", "sneakers_4.png", "sneakers_5.png", "sneakers_6.png", "sneakers_7.png", "sneakers_8.png", "sneakers_9.png", "sneakers_10.png"]
    var counter = 0
    
    @IBOutlet weak var sneakersImageView: UIImageView!
    
    func correctCounter(_ counter: Int) {
        if counter >= 0 {
            sneakersImageView.image = UIImage(named: imageList[counter % 10])
        }
        else {
            sneakersImageView.image = UIImage(named: imageList[-counter % 10])
        }
    }
    
    
    @IBAction func backButton(_ sender: Any) {
        counter -= 1
        correctCounter(counter)
    }
    
    
    @IBAction func nextButton(_ sender: Any) {
        counter += 1
        correctCounter(counter)
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

