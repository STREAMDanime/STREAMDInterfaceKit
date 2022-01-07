//
//  Fonts.swift
//  STREAMDUIKit
//
//  Created by Jules Labador on 1/4/22.
//

import SwiftUI
import UIKit

extension Font {
    public struct STREAMDFonts {
        public static let title = Font.custom("Poppins-Bold", fixedSize: 35)
        public static let subtitle = Font.custom("Avenir-Heavy", fixedSize: 15)
        public static let heading1 = Font.custom("Poppins-Bold", fixedSize: 24)
        public static let heading2 = Font.custom("Poppins-Bold", fixedSize: 20)
        public static let heading3 = Font.custom("Poppins-Bold", fixedSize: 18)
        public static let body = Font.custom("Avenir-Medium", fixedSize: 14)
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
        public static let sectionHeader = UIFont(name: "Poppins-Bold", size: 13)
        public static let buttonTitle = UIFont(name: "Poppins-Bold", size: 16)
    }
}
