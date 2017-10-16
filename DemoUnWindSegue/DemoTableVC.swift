//
//  DemoTableVC.swift
//  DemoUnWindSegue
//
//  Created by Hao on 31/08/2017.
//  Copyright © 2017 Hao. All rights reserved.
//

import UIKit

class DemoTableVC: UITableViewController {
    var arrayInt = [Int](10...100)
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayInt.count
    }
    
    
     override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
     let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
     
     cell.textLabel?.text = String(arrayInt[indexPath.row])
     
     return cell
     }
    
        
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        super.prepare(for: segue, sender: sender)
        let vc = (segue.destination) as! ViewController
        vc.displayInt = arrayInt[tableView.indexPathForSelectedRow!.row]
    }
    
    
    @IBAction func unwindArray(segue: UIStoryboardSegue) {
        if let sourceViewController = segue.source as? ViewController , let data = sourceViewController.displayInt {
            if tableView.indexPathForSelectedRow != nil {
            arrayInt[(tableView.indexPathForSelectedRow!.row)] = data
            tableView.reloadData()
            }
            
        }

    }
}
