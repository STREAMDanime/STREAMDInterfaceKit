//
//  KeyVisualView.swift
//  STREAMD
//
//  Created by Jules Labador on 10/17/21.
//

import UIKit

public class KeyVisualView: UIImageView {
    
    init() {
        super.init(frame: .zero)
        
        self.layer.cornerRadius = 6
        self.backgroundColor = .STREAMDColors.accent
        self.contentMode = .scaleAspectFill
        self.layer.masksToBounds = true
        self.clipsToBounds = true
        self.translatesAutoresizingMaskIntoConstraints = false
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    
}
