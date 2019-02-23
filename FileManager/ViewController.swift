//
//  ViewController.swift
//  FileManager
//
//  Created by Artem Karmaz on 2/11/19.
//  Copyright © 2019 Artem Karmaz. All rights reserved.
//

import UIKit

enum FileManagerEvents: Int {
    case getInfo
    case clear
    case load
    case createDir
    case deleteDir
    case deleteFile
    case write
    case read
}

class ViewController: UIViewController, Helper {
    var fileManager = FileManager.default
    
    @IBOutlet weak var resultLabel: UILabel!
    
    @IBOutlet var buttons: [UIButton]!
    @IBOutlet weak var textView: UITextView!
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet var textFields: [UITextField]!
    
    @IBAction func buttonPush(_ sender: UIButton) {
        print(buttons.index(of: sender)!)
//        print(FileManagerEvents.clear.rawValue)
        
        
        if let fileManagerEvent = FileManagerEvents(rawValue: buttons.index(of: sender)!) {
            
            
            
            switch fileManagerEvent {
            case .getInfo: resultLabel.text? += getInfo()
            case .clear: return
            case .load: return
            case .createDir: createDirectory()
            case .deleteDir: return
            case .deleteFile: return
            case .write: return
            case .read: return
            }
        }
        
    }
    
    func getUrl(path: String = "") -> URL {
        var url = URL(fileURLWithPath: path)
        do {
            url = try fileManager.url(for: .documentDirectory, in: .userDomainMask, appropriateFor: nil, create: true).appendingPathComponent(path)
        } catch {
            print(error)
        }
        
        return url
    }
    
    func getInfo() -> String {
//        print(getCurrentTime())
        let url = getUrl()
        var filesList = [String]()
        do {
            filesList = try fileManager.contentsOfDirectory(atPath: url.path)
        } catch {
            print(error)
        }
        var getStringFormArrayStrings = String()
        filesList.forEach() {
            getStringFormArrayStrings += $0 + "\n"
        }
        return getCurrentTime() + " " + getStringFormArrayStrings
        
    }
    
    func createDirectory(path: String = "MyDirectory") {
        let url = getUrl(path: path)
        do {
            try fileManager.createDirectory(at: url, withIntermediateDirectories: true)
        } catch {
            print(error)
        }
    }
    
    func layerStyle() {
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
        createDirectory()
        print(getInfo())
        layerStyle()
        
    }
    
    
}

