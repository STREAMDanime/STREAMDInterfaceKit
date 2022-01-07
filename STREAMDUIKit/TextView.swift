//
//  TextView.swift
//  STREAMDUIKit
//
//  Created by Jules Labador on 1/7/22.
//

import UIKit

public class TextView: UITextView {
    
    public var shouldShowPlaceholder: Bool = true
    
    public init(placeholder: String = "") {
        super.init(frame: .zero, textContainer: nil)
        self.text = placeholder
        self.font = UIFont(name: "Avenir-Medium", size: 14)
        self.textColor = .STREAMDColors.primaryText
        self.tintColor = .STREAMDColors.gray2
        self.backgroundColor = .STREAMDColors.accent
        self.layer.cornerRadius = 6
        self.translatesAutoresizingMaskIntoConstraints = false
        self.isScrollEnabled = false
        self.textContainerInset = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 12)
    }
        
    required init?(coder: NSCoder) {
        fatalError()
    }

    public func addUnderline() {
        let line = CALayer()
        line.frame = CGRect(x: 0, y: self.frame.height - 16, width: self.frame.width, height: 2)
        line.borderColor = UIColor.STREAMDColors.gray1.cgColor
        line.borderWidth = 3
        self.layer.addSublayer(line)
    }

    private func setupViews() {
    }
    
}
