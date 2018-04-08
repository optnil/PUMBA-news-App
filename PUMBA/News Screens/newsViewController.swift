//
//  newsViewController.swift
//  PUMBA
//
//  Created by apple on 25/03/18.
//  Copyright © 2018 Sonkar. All rights reserved.
//

import UIKit

class newsViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    

    @IBOutlet weak var newsTable: UITableView!
    
    var sliderIsOpen = false
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        //newsTable.backgroundColor = constants.color.appColor
        newsTable.dataSource = self
        newsTable.delegate = self
        
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 5
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "news cell", for: indexPath) as! randomTableViewCell
        //cell.setContents()
        
        return cell
        
    }
    @IBAction func panPerformed(_ sender: UIPanGestureRecognizer) {
        
       
        
    }
    
    @IBAction func slide(_ sender: UIBarButtonItem) {
        
        
    }
}

