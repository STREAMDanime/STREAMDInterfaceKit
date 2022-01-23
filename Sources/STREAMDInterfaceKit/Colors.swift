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
    public struct STREAMDColors {
        private static let bundle = Bundle.module // used in Swift packages to get bundle
        
        public static let primaryText      = UIColor(named: "primaryText", in: bundle, compatibleWith: nil)!
        public static let secondaryText    = UIColor(named: "secondaryText", in: bundle, compatibleWith: nil)!
            
        public static let background       = UIColor(named: "background", in: bundle, compatibleWith: nil)!
        public static let gray1            = UIColor(named: "gray-1", in: bundle, compatibleWith: nil)!
        public static let gray2            = UIColor(named: "gray-2", in: bundle, compatibleWith: nil)!
        public static let primaryPurple    = UIColor(named: "primaryPurple", in: bundle, compatibleWith: nil)!
        public static let primaryPurpleAccent = UIColor(named: "primaryPurpleAccent", in: bundle, compatibleWith: nil)!
        public static let navigationBar    = UIColor(named: "navigationBar", in: bundle, compatibleWith: nil)!
        public static let accent           = UIColor(named: "accent", in: bundle, compatibleWith: nil)!
        
        public static let commentBoxBackground = UIColor(named: "commentBoxBackground", in: bundle, compatibleWith: nil)!
        
        public static let red              = UIColor(named: "red", in: bundle, compatibleWith: nil)!
        public static let yellow           = UIColor(named: "yellow", in: bundle, compatibleWith: nil)!
        
        public static let darkGray         = UIColor(named: "darkGray", in: bundle, compatibleWith: nil)!
        
        public static let crunchyroll      = UIColor(named: "crunchyroll", in: bundle, compatibleWith: nil)!
        public static let vrv              = UIColor(named: "vrv", in: bundle, compatibleWith: nil)!
        public static let vrvBackground    = UIColor(named: "vrvBackground", in: bundle, compatibleWith: nil)!
        public static let funimation       = UIColor(named: "funimation", in: bundle, compatibleWith: nil)!
        public static let hiDive           = UIColor(named: "hiDive", in: bundle, compatibleWith: nil)!
        public static let netflix          = UIColor(named: "netflix", in: bundle, compatibleWith: nil)!
        public static let hulu             = UIColor(named: "hulu", in: bundle, compatibleWith: nil)!
    }
}

extension Color {
    public struct STREAMDColors {
        private static let bundle = Bundle.module // used in Swift packages to get bundle
        
        public static let primaryText       = Color("primaryText", bundle: bundle)
        public static let secondaryText     = Color("secondaryText", bundle: bundle)
        
        public static let background        = Color("background", bundle: bundle)
        public static let primaryPurple     = Color("primaryPurple", bundle: bundle)
        public static let primaryPurpleAccent = Color("primaryPurpleAccent", bundle: bundle)
        public static let accent            = Color("accent", bundle: bundle)
        
        public static let navigationBar     = Color("navigationBar", bundle: bundle)
        
        public static let red               = Color("red", bundle: bundle)
        
        private static let premiumGradientColor1 = Color(red: 151/255, green: 51/255, blue: 238/255)
        private static let premiumGradientColor2 = Color(red: 218/255, green: 34/255, blue: 255/255)
        public static let premiumGradient   = LinearGradient(gradient: Gradient(colors: [Color.STREAMDColors.premiumGradientColor1, Color.STREAMDColors.premiumGradientColor2]), startPoint: .topLeading, endPoint: .bottomTrailing)
        
        public static let crunchyroll = Color("crunchyroll", bundle: bundle)
        public static let vrv = Color("vrv", bundle: bundle)
        public static let vrvBackground = Color("vrvBackground", bundle: bundle)
        public static let funimation = Color("funimation", bundle: bundle)
        public static let hiDive = Color("hiDive", bundle: bundle)
        public static let netflix = Color("netflix", bundle: bundle)
        public static let hulu = Color("hulu", bundle: bundle)
    }
}
