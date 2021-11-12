//
//  ViewController.swift
//  LabelsNodeRecursion
//
//  Created by SilentObserver on 12/11/2021.
//

import UIKit

class ViewController: UIViewController {
    
    @IBAction func findAndDrawLabels() {
        showLabels(for: self.view)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    func showLabels(for node: UIView) {
        func colorLabel<T>(_ control: T) {
            if control is UILabel {
                let c = control as! UILabel
                c.backgroundColor = .lightGray
                c.textColor = .black
                c.layer.cornerRadius = 12
                c.clipsToBounds = true
                c.text = "Busted"
            }
        }
        
        if node.subviews.count == 0 {
            colorLabel(node)
        }
        for element in node.subviews {
            colorLabel(node)
            showLabels(for: element)
        }
    }
}

