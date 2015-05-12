//
//  MemeTableViewController.swift
//  ImagePickerProject
//
//  Created by Ankit Garg on 12/05/15.
//  Copyright (c) 2015 Ankit Garg. All rights reserved.
//

import Foundation
import UIKit

class MemeTableViewController : UITableViewController, UITableViewDataSource {
    
    var memes:[Meme]!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        memes = (UIApplication.sharedApplication().delegate as! AppDelegate).memes
        
    }
    
    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.memes.count
    }
    
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("MemeTableViewCell") as! UITableViewCell
        let meme = self.memes[indexPath.row]
        
        // Set the name and image
        cell.textLabel?.text = meme.topText
        cell.imageView?.image = meme.memedImage
        
        return cell
    }
    
}
