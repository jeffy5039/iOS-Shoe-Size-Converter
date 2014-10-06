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
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }

    @IBAction func convertButton() {
        var shoeSize = convertTextField.text.toInt()!
        
        /*
            men's shoes
        */
        
        if menSwitch.on {
            //from US sizes to European sizes
            if USSwitch.on {
                shoeSize -= 1
                showConversionLabel.text = "A US men's \(convertTextField.text) is a UK men's \(shoeSize)"
                necessaryChanges()
            }
            //from European sizes to US sizes
            else {
                shoeSize += 1
                showConversionLabel.text = "A UK men's \(convertTextField.text) is a US men's \(shoeSize)"
                necessaryChanges()
            }
        }
            
        /*
            women's shoes
        */
            
        else {
            //from US sizes to European sizes
            if USSwitch.on {
                if shoeSize == 4 {
                    shoeSize -= 3
                    showConversionLabel.text = "A US women's \(convertTextField.text) is a UK women's \(shoeSize)"
                    necessaryChanges()
                }
                    
                else {
                    shoeSize -= 4
                    showConversionLabel.text = "A US women's \(convertTextField.text) is a UK women's \(shoeSize)"
                    necessaryChanges()
                }
            }
            //from European sizes to US sizes
            else {
                if shoeSize == 1 {
                    shoeSize += 3
                    showConversionLabel.text = "A UK women's \(convertTextField.text) is a US women's \(shoeSize)"
                    necessaryChanges()
                }
                    
                else {
                    shoeSize += 4
                    showConversionLabel.text = "A UK women's \(convertTextField.text) is a US women's \(shoeSize)"
                    necessaryChanges()
                }
            }
        }
    }
    
    func necessaryChanges() -> Void {
        showConversionLabel.hidden = false
        convertTextField.text = ""
        convertTextField.resignFirstResponder()
    }

}

