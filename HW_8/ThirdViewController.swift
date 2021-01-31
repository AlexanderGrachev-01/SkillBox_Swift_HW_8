//
//  ThirdViewController.swift
//  HW_8
//
//  Created by Александр Грачев on 31.01.2021.
//

import UIKit

class ThirdViewController: UIViewController {
    
    @IBOutlet weak var greenView: UIView!
    
    @IBOutlet weak var blueView: UIView!
    
    @IBOutlet weak var purpleView: UIView!
    
    var menuArray = ["Green", "Blue", "Purple"]
    var myFirstSegmentedControl = UISegmentedControl()
    
    @objc func selectedValue (target: UISegmentedControl) {
        if target == self.myFirstSegmentedControl {
            let segmentedIndex = target.selectedSegmentIndex
            
            if segmentedIndex == 0 {
                greenView.isHidden = false
                blueView.isHidden = true
                purpleView.isHidden = true
            }
            else if segmentedIndex == 1 {
                greenView.isHidden = true
                blueView.isHidden = false
                purpleView.isHidden = true
            }
            else {
                greenView.isHidden = true
                blueView.isHidden = true
                purpleView.isHidden = false
            }
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        greenView.isHidden = false
        blueView.isHidden = true
        purpleView.isHidden = true
        
        // create SegmentedContoller
        myFirstSegmentedControl = UISegmentedControl(items: menuArray)
        myFirstSegmentedControl.frame = CGRect(x: 107, y: 100, width: 200, height: 32)
        myFirstSegmentedControl.selectedSegmentIndex = 0
        view.addSubview(myFirstSegmentedControl)
        
        myFirstSegmentedControl.addTarget(self, action: #selector(selectedValue), for: .valueChanged)
    }
}
