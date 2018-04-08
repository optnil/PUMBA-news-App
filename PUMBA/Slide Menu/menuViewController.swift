//
//  menuViewController.swift
//  PUMBA
//
//  Created by apple on 31/03/18.
//  Copyright © 2018 Sonkar. All rights reserved.
//

import UIKit


class menuViewController:  UIViewController {

    @IBOutlet weak var slideCaller: NSLayoutConstraint!
    @IBOutlet weak var slideScreen: NSLayoutConstraint!
   // let object : slideControllersViewController!
    var isMenuOpen = false
    override func viewDidLoad() {
        super.viewDidLoad()
        
        print("into menu view controller view did load")
       
        NotificationCenter.default.addObserver(self, selector: #selector(slideMenufunc), name: Notification.Name("ToggleSideMenu"), object: nil)
        
    }
    
    @objc func slideMenufunc(){
        
        print("into slidemenufunc")
        print(isMenuOpen)
        if(isMenuOpen == true){
            UIView.animate(withDuration: 0.2, animations: {
                self.isMenuOpen = false
                self.slideCaller.constant = -250
                self.view.layoutIfNeeded()
                self.slideScreen.constant = 0
            })

        }
        else{
        if(isMenuOpen == false){
            print("toopen")
            UIView.animate(withDuration: 0.2, animations: {
                self.isMenuOpen = true
                self.slideCaller.constant = 0
                self.view.layoutIfNeeded()
                self.slideScreen.constant = 250
            })
        }
        }
    }
}
