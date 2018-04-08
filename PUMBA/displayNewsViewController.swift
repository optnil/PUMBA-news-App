//
//  displayNewsViewController.swift
//  PUMBA
//
//  Created by apple on 07/04/18.
//  Copyright © 2018 Sonkar. All rights reserved.
//

import UIKit
import FirebaseDatabase
import SDWebImage

class displayNewsViewController: UIViewController {

    @IBOutlet weak var newsImage: UIImageView!
    @IBOutlet weak var newsDiscription: UITextView!
    
    @IBOutlet weak var newsDetails: UILabel!
    @IBOutlet weak var headingLabel: UILabel!
    
    var news : [String: AnyObject] = [:]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        displayNews()
    }
    
    func displayNews(){
        
        setupViews()
        if let head = news["mNewsHeading"] as? String{
            
            headingLabel.text = head
        }
        else{
            print("Value not reaching")
        }
        
        if let description = news["mNewsDescription"] as? String{
            newsDiscription.text = description
        }
        else{
            print("News Content Value not reaching")
        }
        var details = ""
        if let place = news["mNewsLocation"] as? String{
            details = place + ", "
        }
        if let date = news["mNewsDate"] as? String{
            details = details + date + ", "
        }
        if let time = news["mNewsPublishTime"] as? String{
            details = details + time
        }
        
        newsDetails.text = details
        
    }
    func setupViews(){
       
        if let url = (news["mNewsImageUrl1"] as? String){
            let getUrl = URL(string: url)
            newsImage.sd_setImage(with: getUrl, completed: nil)
        }else{
            print("image not loading")
        }
    }
    
}
