//
//  ViewController.swift
//  Shoe Size Converter
//
//  Created by jordan on 06/10/2014.
//  Copyright (c) 2014 jordan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var menSwitch: UISwitch!
    @IBOutlet weak var womenSwitch: UISwitch!
    @IBOutlet weak var USSwitch: UISwitch!
    @IBOutlet weak var EuropeSwitch: UISwitch!
    @IBOutlet weak var convertTextField: UITextField!
    @IBOutlet weak var showConversionLabel: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func convertButton() {
        var shoeSize = convertTextField.text.toInt()!
        var shoeSizeString: String
        //if the user wants to convert mens shoes.
        if menSwitch.on {
            //from US sizes to European sizes
            if USSwitch.on {
                shoeSize -= 1
                shoeSizeString = String(shoeSize)
                showConversionLabel.text = "A US men's \(convertTextField.text) is a UK men's \(shoeSizeString)"
                showConversionLabel.hidden = false
                convertTextField.text = ""
            }
            //from European sizes to US sizes
            else {
                shoeSize += 1
                shoeSizeString = String(shoeSize)
                showConversionLabel.text = "A UK men's \(convertTextField.text) is a US men's \(shoeSizeString)"
                showConversionLabel.hidden = false
                convertTextField.text = ""
            }
        }
        //if the user wants to convert womens shoes.
        else {
            //from US sizes to European sizes
            if USSwitch.on {
                if shoeSize == 4 {
                    shoeSize -= 3
                    shoeSizeString = String(shoeSize)
                    showConversionLabel.text = "A US women's \(convertTextField.text) is a UK women's \(shoeSizeString)"
                    showConversionLabel.hidden = false
                    convertTextField.text = ""
                }
                    
                else {
                    shoeSize -= 4
                    shoeSizeString = String(shoeSize)
                    showConversionLabel.text = "A US women's \(convertTextField.text) is a UK women's \(shoeSizeString)"
                    showConversionLabel.hidden = false
                    convertTextField.text = ""
                }
            }
            //from European sizes to US sizes
            else {
                if shoeSize == 1 {
                    shoeSize += 3
                    shoeSizeString = String(shoeSize)
                    showConversionLabel.text = "A UK women's \(convertTextField.text) is a US women's \(shoeSizeString)"
                    showConversionLabel.hidden = false
                    convertTextField.text = ""
                }
                    
                else {
                    shoeSize += 4
                    shoeSizeString = String(shoeSize)
                    showConversionLabel.text = "A UK women's \(convertTextField.text) is a US women's \(shoeSizeString)"
                    showConversionLabel.hidden = false
                    convertTextField.text = ""
                }
            }
        }
    }

}

