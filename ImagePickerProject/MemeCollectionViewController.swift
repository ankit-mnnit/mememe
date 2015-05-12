//
//  MemeCollectionViewController.swift
//  ImagePickerProject
//
//  Created by Ankit Garg on 12/05/15.
//  Copyright (c) 2015 Ankit Garg. All rights reserved.
//

import Foundation

import UIKit

class MemeCollectionViewController : UICollectionViewController, UICollectionViewDataSource {
    
    var memes:[Meme]!
    
    override func viewWillAppear(animated: Bool) {
        super.viewWillAppear(animated)
        memes = (UIApplication.sharedApplication().delegate as! AppDelegate).memes
        
    }
    
    
    override func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return self.memes.count
    }
    
    override func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCellWithReuseIdentifier("MemeCollectionViewCell", forIndexPath: indexPath) as! MemeCollectionViewCell
        let meme = self.memes[indexPath.row]
        
        // Set the name and image
        // cell.textLabel?.text = meme.topText
        cell.memeImageView?.image = meme.memedImage
        
        return cell
    }
}