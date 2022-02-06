//
//  TitleLabel.swift
//  STREAMD
//
//  Created by Jules Labador on 4/27/21.
//

import UIKit

public class TitleLabel: UILabel {
    
    /// Create a standard title label with a given string.
    public init(_ title: String = "-") {
        super.init(frame: .zero)
        text = title
        font = .STREAMDFonts.title
        numberOfLines = 2
        adjustsFontSizeToFitWidth = true
        textColor = .STREAMDColors.primaryText
        translatesAutoresizingMaskIntoConstraints = false
        isUserInteractionEnabled = true
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}
