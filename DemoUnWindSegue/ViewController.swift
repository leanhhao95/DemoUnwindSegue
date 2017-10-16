//
//  ViewController.swift
//  DemoUnWindSegue
//
//  Created by Hao on 31/08/2017.
//  Copyright © 2017 Hao. All rights reserved.
//
import os.log
import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var saveButton: UIBarButtonItem!
    @IBOutlet weak var dataTextField: UITextField!
    
    var displayInt : Int?
    override func viewDidLoad() {
        super.viewDidLoad()
        if displayInt != 0 {
           dataTextField.text = ("\(displayInt!)")
        }
           }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        guard let button = sender as? UIBarButtonItem , button == saveButton else {
            os_log("The save button was not pressed, cancelling", log: OSLog.default, type: .debug)
            return
        }
        displayInt = Int(dataTextField.text!)
        }
        
        }


