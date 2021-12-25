//
//  TitleLabel.swift
//  STREAMD
//
//  Created by Jules Labador on 4/27/21.
//

import UIKit

public class TitleLabel: UILabel {
    
    public init(_ title: String = "-") {
        super.init(frame: .zero)
        
        text = title
        font = UIFont(name: "Poppins-Bold", size: 35)
        numberOfLines = 2
        adjustsFontSizeToFitWidth = true
        textColor = Colors.primaryText
        translatesAutoresizingMaskIntoConstraints = false
        isUserInteractionEnabled = true
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }
    
}
