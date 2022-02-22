//
//  STREAMDInterfaceKit.swift
//  
//
//  Created by David Barsamian on 1/11/22.
//

import Foundation
import SwiftUI

public struct STREAMDInterfaceKit {
    fileprivate static func registerFont(bundle: Bundle, fontName: String, fontExtension: String) {
        guard let fontURL = bundle.url(forResource: fontName, withExtension: fontExtension),
              let fontDataProvider = CGDataProvider(url: fontURL as CFURL),
              let font = CGFont(fontDataProvider) else {
                  fatalError("Couldn't create font from filename: \(fontName).\(fontExtension)")
              }
        var error: Unmanaged<CFError>?
        CTFontManagerRegisterGraphicsFont(font, &error)
        if let error = error {
            print("🛑 ERROR: \(error.takeRetainedValue().localizedDescription)")
        }
    }
    
    public static func registerFonts() {
        STREAMDFonts.Poppins.allCases.forEach { font in
            registerFont(bundle: .module, fontName: font.fullName, fontExtension: font.fontExtension)
        }
        STREAMDFonts.NunitoSans.allCases.forEach { font in
            registerFont(bundle: .module, fontName: font.fullName, fontExtension: font.fontExtension)
        }
    }
}
