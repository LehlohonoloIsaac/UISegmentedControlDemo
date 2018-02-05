//
//  ViewController.swift
//  UISegmentedControlDemo
//
//  Created by Lehlohonolo Mbele on 2018/02/05.
//  Copyright © 2018 Lehlohonolo Mbele. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var segmentController: UISegmentedControl!
    
    @IBOutlet weak var colorLabel: UILabel!
    var mySegments: [String] = ["Red","Green","Blue"]
    override func viewDidLoad() {
        super.viewDidLoad()
        segmentController.removeAllSegments()
        
        for i in 0..<mySegments.count {
            segmentController.insertSegment(withTitle: mySegments[i], at: i, animated: true)
        }
    }

    @IBAction func onSegmentTapped(_ sender: UISegmentedControl) {
        colorLabel.textColor = UIColor.white
        switch sender.selectedSegmentIndex {
        case 0:
            self.view.backgroundColor = UIColor.red
            colorLabel.text = sender.titleForSegment(at: 0)
        case 1:
            self.view.backgroundColor = UIColor.green
            colorLabel.text = sender.titleForSegment(at: 1)
        case 2:
            self.view.backgroundColor = UIColor.blue
            colorLabel.text = sender.titleForSegment(at: 2)
        default:
            self.view.backgroundColor = UIColor.gray
        }
    }
}

