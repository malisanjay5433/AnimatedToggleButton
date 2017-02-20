//
//  ButtonX.swift
//  AnimateButton
//
//  Created by Sanjay Mali on 20/02/17.
//  Copyright © 2017 Sanjay. All rights reserved.
//

import UIKit

 @IBDesignable public class ButtonX: UIButton{
    @IBInspectable var borderColor:UIColor = UIColor.orange {
        didSet{
            layer.borderColor = borderColor.cgColor
        }
        
    }
    @IBInspectable var borderWidth: CGFloat = 2.0 {
        didSet {
            layer.borderWidth = borderWidth
        }
    }

    @IBInspectable var cornerRadius: CGFloat = 2.0 {
        didSet {
            layer.cornerRadius = cornerRadius
        }
    }

}
