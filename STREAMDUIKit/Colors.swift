//
//  UIColor.swift
//  STREAMDanimeKit
//
//  Created by Jules Labador on 12/24/21.
//

import UIKit
import SnapKit
import SwiftUI

// UIKit
extension UIColor {
    
    private static let bundle = Bundle(identifier: "io.STREAMDanime.STREAMDUIKit")
    
    public static let primaryText      = UIColor(named: "primaryText", in: bundle, compatibleWith: nil)
    public static let secondaryText    = UIColor(named: "secondaryText", in: bundle, compatibleWith: nil)
        
    public static let background       = UIColor(named: "background", in: bundle, compatibleWith: nil)
    public static let gray1            = UIColor(named: "gray-1", in: bundle, compatibleWith: nil)
    public static let gray2            = UIColor(named: "gray-2", in: bundle, compatibleWith: nil)
    public static let primaryPurple    = UIColor(named: "primaryPurple", in: bundle, compatibleWith: nil)
    public static let navigationBar    = UIColor(named: "navigationBar", in: bundle, compatibleWith: nil)
    public static let accent           = UIColor(named: "accent", in: bundle, compatibleWith: nil)
    
    public static let commentBoxBackground = UIColor(named: "commentBoxBackground", in: bundle, compatibleWith: nil)
    
    public static let red              = UIColor(named: "red", in: bundle, compatibleWith: nil)
    public static let yellow           = UIColor(named: "yellow", in: bundle, compatibleWith: nil)
}

extension Color {
    
    private static let bundle = Bundle(identifier: "io.STREAMDanime.STREAMDUIKit")
    
    public static let primaryText       = Color("primaryText", bundle: bundle)
    public static let secondaryText     = Color("secondaryText", bundle: bundle)
    
    public static let background        = Color("background", bundle: bundle)
    public static let primaryPurple     = Color("primaryPurple", bundle: bundle)
    public static let accent            = Color("accent": bundle: bundle)
    
    public static let navigationBar     = Color("navigationBar", bundle: bundle)
    
}
