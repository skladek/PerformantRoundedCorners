//
//  DrawRectViewController.swift
//  RoundedCorners
//
//  Created by Sean Kladek on 3/14/16.
//  Copyright © 2016 Livefront. All rights reserved.
//

import UIKit

class DrawRectViewController: UIViewController {
    // MARK: Private Properties
    
    /// The spacing between collection view items.
    private let itemSpacing = CGFloat(10.0)
    
    /// The number of columns to display in the collection view.
    private let numberOfColumns = 3
    
    // MARK: IBOutlet Properties
    
    /// The main collection view.
    @IBOutlet private weak var collectionView: UICollectionView!
    
    // MARK: UIViewController Methods
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Draw Rect"
        collectionView.registerNib(UINib(nibName: "DrawRectCell", bundle: nil), forCellWithReuseIdentifier: DrawRectCell.reuseId)
    }
}

extension DrawRectViewController: UICollectionViewDataSource {
    func collectionView(collectionView: UICollectionView, cellForItemAtIndexPath indexPath: NSIndexPath) -> UICollectionViewCell {
        return collectionView.dequeueReusableCellWithReuseIdentifier(DrawRectCell.reuseId, forIndexPath: indexPath)
    }
    
    func collectionView(collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 300
    }
}

extension DrawRectViewController: UICollectionViewDelegateFlowLayout {
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAtIndex section: Int) -> CGFloat {
        return itemSpacing
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAtIndex section: Int) -> CGFloat {
        return itemSpacing
    }
    
    func collectionView(collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAtIndexPath indexPath: NSIndexPath) -> CGSize {
        let edgeSpacing = (CGFloat(numberOfColumns - 1) * itemSpacing) + (2 * itemSpacing)
        
        let edgeSize = ((collectionView.frame.width - edgeSpacing) / CGFloat(numberOfColumns))
        
        return CGSizeMake(edgeSize, edgeSize)
    }
}