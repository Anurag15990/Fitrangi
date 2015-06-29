//
//  DiscussionViewController.swift
//  Fitrangi
//
//  Created by Toovia on 21/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import UIKit

class DiscussionDetailViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var closeLabel : UILabel!
    @IBOutlet weak var logoView : AsyncImageView!
    @IBOutlet weak var tableView : UITableView!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        logoView.setImageWithUrl("http://www.fitrangi.com/images/logo.png", options: AsyncImageOptions.ShowAlways)
        logoView.imageView.backgroundColor = UIColor.whiteColor()
        
        closeLabel.text = String.fontAwesomeIconWithName("fa-close")
        closeLabel.font = UIFont.fontAwesomeOfSize(20)
        closeLabel.addSingleTapGestureRecognizer(target: self, action: "dismissView")
        
        tableView.registerNib(UINib(nibName: "DiscussionDetailCard", bundle: nil), forCellReuseIdentifier: "DiscussionDetailCard")
        tableView.registerNib(UINib(nibName: "DiscussionDescriptionView", bundle: nil), forHeaderFooterViewReuseIdentifier: "DiscussionDescriptionView")
        tableView.registerNib(UINib(nibName: "CommentsView", bundle: nil), forCellReuseIdentifier: "CommentsView")
        tableView.registerNib(UINib(nibName: "DiscussionDetailHeader", bundle: nil), forHeaderFooterViewReuseIdentifier: "DiscussionDetailHeader")

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
        return 2
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return 1
        } else {
            return 5
        }
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        if indexPath.section == 0 {
            let cell = tableView.dequeueReusableCellWithIdentifier("DiscussionDetailCard", forIndexPath : indexPath) as! DiscussionDetailCard
            return cell
        } else {
            let cell = tableView.dequeueReusableCellWithIdentifier("CommentsView", forIndexPath: indexPath) as! CommentsView
            return cell
        }
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        if indexPath.section == 0 {
            return 356
        } else {
            return 160
        }
    }
    
    func tableView(tableView: UITableView, viewForHeaderInSection section: Int) -> UIView? {
        if section == 1 {
            var discussionHeaderView = tableView.dequeueReusableHeaderFooterViewWithIdentifier("DiscussionDetailHeader") as! DiscussionDetailHeader
            return discussionHeaderView
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
