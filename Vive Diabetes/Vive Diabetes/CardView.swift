//
//  CardView.swift
//  Vive Diabetes
//
//  Created by Admin on 25/07/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

@IBDesignable class CardView: UIView {
    
    @IBInspectable let cornerRadius: CGFloat = 2
    @IBInspectable let shadowOfSetWidth: CGFloat = 0
    @IBInspectable let shadowOfSetHeight: CGFloat = 5
    @IBInspectable let shadowOpacity: Float = 0.5
    @IBInspectable let shadowColor: UIColor = UIColor.black
    
    override func layoutSubviews() {
        layer.cornerRadius = cornerRadius
        layer.shadowColor = shadowColor.cgColor
        layer.shadowOffset = CGSize(width: shadowOfSetWidth, height: shadowOfSetHeight)
        
        let shadowPath = UIBezierPath(roundedRect: bounds, cornerRadius: cornerRadius)
        layer.shadowPath = shadowPath.cgPath
        layer.shadowOpacity = shadowOpacity
        
    }
    
}
