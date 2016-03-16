//
//  CornerRadiusCell.swift
//  RoundedCorners
//
//  Created by Sean Kladek on 3/14/16.
//  Copyright © 2016 Livefront. All rights reserved.
//

import UIKit

class CornerRadiusCell: UICollectionViewCell {
    
    // MARK: Constants
    
    /// The cell's reuse identifier
    static let reuseId = "CornerRadiusCellReuseId"
    
    // MARK: IBOutlet Properties
    
    /// An outlet collection of the rounded views.
    @IBOutlet var viewCollection: [UIView]!

    // MARK: UICollectionViewCell Methods
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        for view in viewCollection {
            view.layer.borderColor = UIColor.blackColor().CGColor
            view.layer.borderWidth = 1.0
            view.layer.cornerRadius = 30.0
        }
    }
}
