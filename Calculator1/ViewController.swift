//
//  ViewController.swift
//  Calculator1
//
//  Created by Kotaro Fukada on 2017/08/26.
//  Copyright © 2017年 LMNO Inc. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var text_label: UILabel!
    @IBOutlet weak var prev_num_label: UILabel!
    @IBOutlet weak var calc_label: UILabel!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        text_label.text = ""
        prev_num_label.text = ""
        calc_label.text = ""
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func num_button_pushed(_ sender: UIButton) {
        text_label.text! += sender.titleLabel!.text!
    }
    
    @IBAction func calc_sighn_pushed(_ sender: UIButton) {
        calc_label.text = sender.titleLabel!.text!
        prev_num_label.text = text_label.text
        text_label.text = ""
    }
    
    @IBAction func equal_pushed(_ sender: Any) {
        if prev_num_label.text != nil && text_label.text != nil {
            if calc_label.text == "+" {
                text_label.text = String(Int(prev_num_label.text!)! + Int(text_label.text!)!)
            } else if calc_label.text == "-" {
                text_label.text = String(Int(prev_num_label.text!)! - Int(text_label.text!)!)
            } else if calc_label.text == "*" {
                text_label.text = String(Int(prev_num_label.text!)! * Int(text_label.text!)!)
            } else if calc_label.text == "*" {
                text_label.text = String(Int(prev_num_label.text!)! / Int(text_label.text!)!)
            }
        }
    }
    
}

