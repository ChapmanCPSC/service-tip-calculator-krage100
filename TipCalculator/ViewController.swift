//
//  ViewController.swift
//  TipCalculator
//
//  Created by Krager, Andrew on 3/12/16.
//  Copyright © 2016 Krager, Andrew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var billField: UITextField!
    @IBOutlet weak var rateServer: UISegmentedControl!
    @IBOutlet weak var tipPercLabel: UILabel!
    @IBOutlet weak var tipLabel: UILabel!
    @IBOutlet weak var totalLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func changeBill(sender: AnyObject) {
        var tipsPossible = [0.10,0.10,0.10,0.13,0.13,0.15,0.15,0.20,0.20,0.25]
        let tipPercentage = tipsPossible[rateServer.selectedSegmentIndex]
        let percentage = tipsPossible[rateServer.selectedSegmentIndex] * 100
        tipPercLabel.text = "\(percentage)%"
        let billAmount = Double(billField.text!)
        let tip = billAmount! * tipPercentage
        let total = tip + billAmount!
        tipLabel.text = "$\(tip)"
        totalLabel.text = "$\(total)"
    }

    @IBAction func onTap(sender: AnyObject) {
        view.endEditing(true)
    }
}

