//
//  slideControllersViewController.swift
//  PUMBA
//
//  Created by apple on 31/03/18.
//  Copyright © 2018 Sonkar. All rights reserved.
//

import UIKit
import Tabman
import Pageboy

class slideControllersViewController: TabmanViewController, PageboyViewControllerDataSource {

    //var slideDelegate : slideProtocol!
    lazy var viewControllerList: [UIViewController] = {
        let sb = UIStoryboard(name: "Main", bundle: nil)
        
        let vc1 = sb.instantiateViewController(withIdentifier: "sportsNews")
        let vc2 = sb.instantiateViewController(withIdentifier: "random")
        let vc3 = sb.instantiateViewController(withIdentifier: "news")
        
        return [vc1,vc2, vc3]
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()

            
        self.dataSource  = self
        self.bar.location = .preferred

        self.bar.style = .scrollingButtonBar
        self.bar.items = [Item(title: "Page 1"),
                          Item(title: "Page 2"), Item(title: "Page 3")]
        self.bar.appearance = TabmanBar.Appearance({ (appearance) in
            
            appearance.state.color = constants.color.appColor
           appearance.indicator.color = constants.color.appColor
            

        })
        // Do any additional setup after loading the view.
        
    }

    func numberOfViewControllers(in pageboyViewController: PageboyViewController) -> Int {
        return viewControllerList.count
    }
    
    func viewController(for pageboyViewController: PageboyViewController,
                        at index: PageboyViewController.PageIndex) -> UIViewController? {
        return viewControllerList[index]
    }
    
    func defaultPage(for pageboyViewController: PageboyViewController) -> PageboyViewController.Page? {
        return nil
    }
    
    @IBAction func barButtonTapped(_ sender: UIBarButtonItem) {
        
        //slideDelegate.slideMenufunc()
        NotificationCenter.default.post(name: Notification.Name("ToggleSideMenu"), object: nil)
        
    }
    
}
