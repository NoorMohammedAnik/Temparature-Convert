//
//  ViewController.swift
//  Temparature Convert
//
//  Created by Noor Mohammed Anik on 5/7/21.
//

import UIKit

class ViewController: UIViewController {

    var count=0
    @IBOutlet weak var tempEntry: UITextField!
    @IBOutlet weak var resultLevel: UILabel!
    @IBOutlet weak var lebelConversion: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func convertClicked(_ sender: Any) {
        
        
        if let result=tempEntry.text{
            if (result=="")
            {
                return
            }
            else
            {
                if let num=Double(result)
                {
                    let output=num*(9/5)+32
                    resultLevel.text=String(output)+" F"
                    
                    count=count+1
                    lebelConversion.text=String(count)+" Conversions"
                }
            }
        }
    }
    
}

