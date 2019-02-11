//
//  ViewController.swift
//  FileManager
//
//  Created by Artem Karmaz on 2/11/19.
//  Copyright © 2019 Artem Karmaz. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    var fileManager = FileManager.default
    var url = URL(fileURLWithPath: "")
    
    
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet var textFields: [UITextField]!
    
    fileprivate func layerStyle() {
        textFields[0].alpha = 0.8
        textFields[1].alpha = 0.8
        textView.alpha = 0.8
        textView.layer.cornerRadius = 10
        textView.clipsToBounds = true
        labelText.alpha = 0.8
        labelText.layer.cornerRadius = 10
        labelText.clipsToBounds = true
        buttons[0].layer.cornerRadius = 10
        buttons[0].clipsToBounds = true
        buttons[1].layer.cornerRadius = 10
        buttons[1].clipsToBounds = true
        buttons[2].layer.cornerRadius = 10
        buttons[2].clipsToBounds = true
        buttons[3].layer.cornerRadius = 10
        buttons[3].clipsToBounds = true
        buttons[4].layer.cornerRadius = 10
        buttons[4].clipsToBounds = true
        buttons[5].layer.cornerRadius = 10
        buttons[5].clipsToBounds = true
        buttons[6].layer.cornerRadius = 10
        buttons[6].clipsToBounds = true
        buttons[7].layer.cornerRadius = 10
        buttons[7].clipsToBounds = true
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        layerStyle()
        
    }


}

