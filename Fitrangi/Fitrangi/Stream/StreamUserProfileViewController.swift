//
//  StreamProfileViewController.swift
//  Fitrangi
//
//  Created by Toovia on 20/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import UIKit

class StreamUserProfileViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var tableView : UITableView!
    @IBOutlet weak var logoView : AsyncImageView!
    @IBOutlet weak var closeLabel : UILabel!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoView.setImageWithUrl("http://www.fitrangi.com/images/logo.png", options: AsyncImageOptions.ShowAlways)
        logoView.imageView.backgroundColor = UIColor.whiteColor()
        
        tableView.registerNib(UINib(nibName: "UserProfileHeader", bundle: nil), forHeaderFooterViewReuseIdentifier: "UserProfileHeader")
        tableView.registerNib(UINib(nibName: "StreamArticleCard", bundle: nil), forCellReuseIdentifier: "StreamArticleCard")
        tableView.registerNib(UINib(nibName: "StreamAdventureCard", bundle: nil), forCellReuseIdentifier: "StreamAdventureCard")
        tableView.registerNib(UINib(nibName: "StreamFollowCard", bundle: nil), forCellReuseIdentifier: "StreamFollowCard")
        tableView.registerNib(UINib(nibName: "StreamArticleCard", bundle: nil), forCellReuseIdentifier: "StreamArticleCard")
        tableView.registerNib(UINib(nibName: "StreamDiscussionCard", bundle: nil), forCellReuseIdentifier: "StreamDiscussionCard")
        tableView.registerNib(UINib(nibName: "StreamActivityCard", bundle: nil), forCellReuseIdentifier: "StreamActivityCard")
        tableView.registerNib(UINib(nibName: "ProfileCard", bundle: nil), forCellReuseIdentifier: "ProfileView")
        tableView.separatorStyle = .None
        closeLabel.text = String.fontAwesomeIconWithName("fa-close")
        closeLabel.font = UIFont.fontAwesomeOfSize(20)
        closeLabel.addSingleTapGestureRecognizer(target: self, action: "dismissView")
        
        // Do any additional setup after loading the view.
    }
    
    func dismissView () {
        dismissViewControllerAnimated(true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section : Int) -> Int{
        if section == 0 {
            return 1
        } else {
            return 5
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath : NSIndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCellWithIdentifier("ProfileView", forIndexPath: indexPath) as! ProfileView
            return cell
        } else {
            
            if indexPath.row == 0 {
                let cell = tableView.dequeueReusableCellWithIdentifier("StreamArticleCard", forIndexPath: indexPath) as! StreamArticleCard
                return cell
            } else if indexPath.row == 1 {
                let cell = tableView.dequeueReusableCellWithIdentifier("StreamAdventureCard", forIndexPath: indexPath) as! StreamAdventureCard
                return cell
            } else if indexPath.row == 2 {
                let cell = tableView.dequeueReusableCellWithIdentifier("StreamFollowCard", forIndexPath: indexPath) as! StreamFollowCard
                return cell
            } else if indexPath == 3 {
                let cell = tableView.dequeueReusableCellWithIdentifier("StreamDiscussionCard", forIndexPath: indexPath) as! StreamDiscussionCard
                return cell
            } else {
                let cell = tableView.dequeueReusableCellWithIdentifier("StreamActivityCard", forIndexPath: indexPath) as! StreamActivityCard
                return cell
            }
        }
    }
    
    func tableView (tableView: UITableView, heightForRowAtIndexPath indexPath : NSIndexPath) -> CGFloat {
        return 356
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 1 {
        var headerView = tableView.dequeueReusableHeaderFooterViewWithIdentifier("UserProfileHeader") as! UserProfileHeader
        return headerView
        }
        return UIView()
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        if section == 1 {
        return 40
        } else {
            return 0
        }
    }
    
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
