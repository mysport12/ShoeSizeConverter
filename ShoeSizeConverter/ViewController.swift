//
//  ViewController.swift
//  ShoeSizeConverter
//
//  Created by Craig Martin on 12/28/14.
//  Copyright (c) 2014 MadKitty. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var enterShoeSizeText: UITextField!
    @IBOutlet weak var convertShoeSizeText: UILabel!
    
    @IBOutlet weak var enterWomenShoeSizeText: UITextField!
    @IBOutlet weak var convertedWomenShoeSizeText: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertShoeSizePressed(sender: AnyObject) {
        var intShoeSizeText = enterShoeSizeText.text.toInt()!
        let shoeConvertConstant = 30
        convertShoeSizeText.hidden = false
        convertShoeSizeText.text = "\(intShoeSizeText + shoeConvertConstant)"
        enterShoeSizeText.text = ""
        enterShoeSizeText.resignFirstResponder()
    }
    
    @IBAction func convertWomenButtonPressed(sender: UIButton) {
        let numWomenShoeSizeText = Double((enterWomenShoeSizeText.text as NSString).doubleValue)
        let conversionWomenConstant = 30.5
        convertedWomenShoeSizeText.hidden = false
        convertedWomenShoeSizeText.text = "\(numWomenShoeSizeText + conversionWomenConstant)"
        enterWomenShoeSizeText.text = ""
        enterWomenShoeSizeText.resignFirstResponder()
    }
    
}

