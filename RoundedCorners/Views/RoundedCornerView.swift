//
//  RoundedCornerView.swift
//  RoundedCorners
//
//  Created by Sean Kladek on 3/14/16.
//  Copyright © 2016 Livefront. All rights reserved.
//

import UIKit

@IBDesignable
class RoundedCornerView: UIView {
    
    // MARK: Properties
    
    /// The color of the border line.
    @IBInspectable var borderColor: UIColor = UIColor.blackColor()
    
    /// The width of the border.
    @IBInspectable var borderWidth: CGFloat = 1 / UIScreen.mainScreen().scale
    
    /// The drawn corner radius.
    @IBInspectable var cornerRadius: CGFloat = 30
    
    /// The color that the rectangle will be filled with.
    @IBInspectable var fillColor: UIColor = UIColor.whiteColor()
    
    // MARK: UIView Methods
    
    override func drawRect(rect: CGRect) {
        let borderPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        borderColor.set()
        borderPath.fill()
        
        let fillRect = CGRectMake(borderWidth, borderWidth, bounds.width - (2 * borderWidth), bounds.height - (2 * borderWidth))
        let fillPath = UIBezierPath(roundedRect: fillRect, cornerRadius: cornerRadius)
        fillColor.set()
        fillPath.fill()
    }
}
