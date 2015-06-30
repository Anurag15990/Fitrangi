//
//  FollowersViewController.swift
//  Fitrangi
//
//  Created by Toovia on 30/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import UIKit

class FollowersViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var logoView : AsyncImageView!
    @IBOutlet weak var closeLabel : UILabel!
    @IBOutlet weak var tableView : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoView.setImageWithUrl("http://www.fitrangi.com/images/logo.png", options: AsyncImageOptions.ShowAlways)
        logoView.imageView.backgroundColor = UIColor.whiteColor()
        
        closeLabel.text = String.fontAwesomeIconWithName("fa-close")
        closeLabel.font = UIFont.fontAwesomeOfSize(20)
        closeLabel.addSingleTapGestureRecognizer(target: self, action: "dismissView")
        
        tableView.registerNib(UINib(nibName: "FollowersCard", bundle: nil), forCellReuseIdentifier: "FollowersCard")
        tableView.registerNib(UINib(nibName: "FollowersHeader", bundle: nil), forHeaderFooterViewReuseIdentifier: "FollowersHeader")
        
        tableView.separatorStyle = UITableViewCellSeparatorStyle.SingleLine

        // Do any additional setup after loading the view.
    }

    func dismissView() {
        dismissViewControllerAnimated(true, completion: nil)
    }
    
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 8
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("FollowersCard", forIndexPath: indexPath) as! FollowersCard
        return cell
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 70
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 0 {
            var followersHeaderView = tableView.dequeueReusableHeaderFooterViewWithIdentifier("FollowersHeader") as! FollowersHeader
            return followersHeaderView
        } else {
            return UIView()
        }
    }
    
    func tableView(tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
        return 40
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
