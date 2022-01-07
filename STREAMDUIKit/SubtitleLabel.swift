//
//  SubtitleLabel.swift
//  STREAMD
//
//  Created by Jules Labador on 10/7/21.
//

import UIKit

public class SubtitleLabel: UILabel {
    
    public init(_ text: String = "") {
        super.init(frame: .zero)
            
        self.text = text
        self.font = UIFont(name: "Avenir-Regular", size: 13)
        self.textColor = .STREAMDColors.secondaryText
        self.numberOfLines = -1
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
}
