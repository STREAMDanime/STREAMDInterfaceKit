//
//  STREAMDTextField.swift
//  STREAMD
//
//  Created by Jules Labador on 3/1/21.
//

import UIKit

public class TextView: UITextView {
    
    public var shouldShowPlaceholder: Bool = true
    
    public init(placeholder: String = "") {
        super.init(frame: .zero, textContainer: nil)
        self.text = placeholder
        self.font = UIFont(name: "Avenir-Medium", size: 14)
        self.textColor = Colors.primaryText
        self.tintColor = Colors.gray2
        self.backgroundColor = Colors.accent
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
        line.borderColor = Colors.gray1!.cgColor
        line.borderWidth = 3
        self.layer.addSublayer(line)
    }

    private func setupViews() {
    }
    
}

public class TextField: UITextField {
    
    public init(placeholder: String = "", isSecure: Bool = false) {
        super.init(frame: .zero)
        
        self.attributedPlaceholder = NSAttributedString(string: "\(placeholder)", attributes: [
            NSAttributedString.Key.foregroundColor: Colors.secondaryText!,
            NSAttributedString.Key.font: UIFont(name: "Avenir-Medium", size: 14)!
        ])
        self.isSecureTextEntry = isSecure
        self.font = UIFont(name: "Avenir-Medium", size: 14)
        self.textColor = Colors.primaryText
        self.tintColor = Colors.gray2
        self.translatesAutoresizingMaskIntoConstraints = false
        
    }
        
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    let padding = UIEdgeInsets(top: 0, left: 16, bottom: 0, right: 16)

    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
        
    }

    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    public func addUnderline() {
        let line = CALayer()
        line.frame = CGRect(x: 0, y: self.frame.height, width: self.frame.width, height: 2)
        line.borderColor = Colors.gray1!.cgColor
        line.borderWidth = 3
        self.layer.addSublayer(line)
    }
    
}
