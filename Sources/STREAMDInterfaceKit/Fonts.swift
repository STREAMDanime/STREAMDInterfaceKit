//
//  Fonts.swift
//  STREAMDUIKit
//
//  Created by Jules Labador on 1/4/22.
//

import SwiftUI
import UIKit

/// An internal list of all custom fonts included in the app. This enumeration is used to programmatically load fonts
/// when the app starts.
internal enum STREAMDFonts: CaseIterable {
    enum Poppins: String, CaseIterable {
        var fontExtension: String {
            return "ttf"
        }
        var fullName: String {
            return "Poppins-\(self.rawValue)"
        }
        
        case black = "Black"
        case blackItalic = "BlackItalic"
        case bold = "Bold"
        case boldItalic = "BoldItalic"
        case extraBold = "ExtraBold"
        case extraBoldItalic = "ExtraBoldItalic"
        case extraLight = "ExtraLight"
        case extraLightItalic = "ExtraLightItalic"
        case italic = "Italic"
        case light = "Light"
        case lightItalic = "LightItalic"
        case medium = "Medium"
        case mediumItalic = "MediumItalic"
        case regular = "Regular"
        case semiBold = "SemiBold"
        case semiBoldItalic = "SemiBoldItalic"
        case thin = "Thin"
        case thinItalic = "ThinItalic"
    }
}

extension Font {
    public struct STREAMDFonts {
        public static let title = Font.custom("Poppins-Bold", fixedSize: 35)
        public static let subtitle = Font.custom("Avenir-Heavy", fixedSize: 15)
        public static let heading1 = Font.custom("Poppins-Bold", fixedSize: 2)
        public static let heading2 = Font.custom("Poppins-Bold", fixedSize: 20)
        public static let heading3 = Font.custom("Poppins-Bold", fixedSize: 18)
        public static let body = Font.custom("Avenir-Medium", fixedSize: 14)
        public static let sectionHeader = Font.custom("Poppins-Bold", size: 13)
        public static let buttonTitle = Font.custom("Avenir-Heavy", size: 15)
    }
}

extension UIFont {
    public struct STREAMDFonts {
        public static let title = UIFont(name: "Poppins-Bold", size: 35)
        public static let subtitle = UIFont(name: "Avenir-Heavy", size: 15)
        public static let heading1 = UIFont(name: "Poppins-Bold", size: 24)
        public static let heading2 = UIFont(name: "Poppins-Bold", size: 20)
        public static let heading3 = UIFont(name: "Poppins-Bold", size: 18)
        public static let body = UIFont(name: "Avenir-Medium", size: 14)
        public static let sectionHeader = UIFont(name: "Poppins-Bold", size: 14)
        public static let buttonTitle = UIFont(name: "Avenir-Heavy", size: 15)
    }
}
