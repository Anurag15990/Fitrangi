//
//  StreamTableViewController.swift
//  Fitrangi App
//
//  Created by Anurag Agnihotri on 06/06/15.
//  Copyright (c) 2015 Fitrangi. All rights reserved.
//

import UIKit

class StreamTableViewController: UITableViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    
        tableView.registerNib(UINib(nibName: "StreamAdventureCard", bundle: nil), forCellReuseIdentifier: "StreamAdventureCard")
        tableView.registerNib(UINib(nibName: "StreamFollowCard", bundle: nil), forCellReuseIdentifier: "StreamFollowCard")
        tableView.registerNib(UINib(nibName: "StreamArticleCard", bundle: nil), forCellReuseIdentifier: "StreamArticleCard")
        tableView.registerNib(UINib(nibName: "StreamDiscussionCard", bundle: nil), forCellReuseIdentifier: "StreamDiscussionCard")
        tableView.registerNib(UINib(nibName: "StreamActivityCard", bundle: nil), forCellReuseIdentifier: "StreamActivityCard")
        tableView.separatorStyle = .None

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Potentially incomplete method implementation.
        // Return the number of sections.
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete method implementation.
        // Return the number of rows in the section.
        return 10
    }

    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        if indexPath.row == 1 || indexPath.row == 2 {
            let cell = tableView.dequeueReusableCellWithIdentifier("StreamFollowCard", forIndexPath: indexPath) as! StreamFollowCard
            
            // Configure the cell...
            
            return cell
        } else if indexPath.row == 3 || indexPath.row == 4{
            let cell = tableView.dequeueReusableCellWithIdentifier("StreamArticleCard", forIndexPath: indexPath) as! StreamArticleCard
            
            return cell
        }else if indexPath.row == 5 || indexPath.row == 6 {
            let cell = tableView.dequeueReusableCellWithIdentifier("StreamDiscussionCard", forIndexPath: indexPath) as! StreamDiscussionCard
            
            return cell
        } else if indexPath.row == 7 || indexPath.row == 8 {
            let cell = tableView.dequeueReusableCellWithIdentifier("StreamActivityCard", forIndexPath: indexPath) as! StreamActivityCard
            
            return cell
        }else {
            let cell = tableView.dequeueReusableCellWithIdentifier("StreamAdventureCard", forIndexPath: indexPath) as! StreamAdventureCard
        
        // Configure the cell...

            return cell
        }
    }
    
    override func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 356
    }
    

    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return NO if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using [segue destinationViewController].
        // Pass the selected object to the new view controller.
    }
    */

}
