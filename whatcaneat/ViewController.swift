//
//  ViewController.swift
//  whatcaneat
//
//  Created by 7 on 2021/1/2.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var foodImage: UIImageView!
    @IBOutlet weak var optionSeg: UISegmentedControl!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        
    }
    
    func randomChoose() {
        
        if optionSeg.selectedSegmentIndex == 0 {
            foodImage.image = UIImage(named: "beef")
        } else if optionSeg.selectedSegmentIndex == 1 {
            foodImage.image = UIImage(named: "chicken")
        } else if optionSeg.selectedSegmentIndex == 2 {
            foodImage.image = UIImage(named: "veggie")
        } else {
            foodImage.image = UIImage(named: "pork")
        }
    }

    @IBAction func random(_ sender: Any) {
        
        optionSeg.selectedSegmentIndex = Int.random(in: 0...3)
        randomChoose()


    }
    
    @IBAction func optionPic(_ sender: Any) {
        
    randomChoose()
    }
    
    
}

