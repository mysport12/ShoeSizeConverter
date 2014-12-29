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
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func convertShoeSizePressed(sender: AnyObject) {
        let stringShoeSizeText = enterShoeSizeText.text
        let numShoeSizeText = stringShoeSizeText.toInt()
        var intShoeSizeText = numShoeSizeText!
        intShoeSizeText += 30
        convertShoeSizeText.hidden = false
        convertShoeSizeText.text = "\(intShoeSizeText)"
        enterShoeSizeText.text = ""
        enterShoeSizeText.resignFirstResponder()
    }
}

