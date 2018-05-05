//
//  MenuContainerViewController.swift
//  PUMBA
//
//  Created by apple on 06/05/18.
//  Copyright © 2018 Sonkar. All rights reserved.
//

import UIKit

class MenuContainerViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    //@IBOutlet weak var menuCell: MenuTabTableViewCell!
    
    let menuTabs = ["My Account", "Wallet", "Settings", "Saved News", "About Us"]
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
 
        let cell = tableView.dequeueReusableCell(withIdentifier: "menuCell", for: indexPath) as! MenuTabTableViewCell
        
        cell.titleLabel.text = menuTabs[indexPath.row]
        
        return cell
    }
    
    @IBOutlet weak var menuTable: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        menuTable.dataSource = self
        menuTable.delegate = self
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

   

}
