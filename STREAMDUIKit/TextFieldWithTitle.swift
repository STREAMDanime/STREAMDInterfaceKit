//
//  InputView.swift
//  STREAMD
//
//  Created by Jules Labador on 3/3/21.
//

import UIKit

public class TextViewWithTitle: UIView, UITextViewDelegate {
    
    public init(withTitle t: String, placeholder: String = "") {
        super.init(frame: .zero)
                
        titleLabel.text = t.uppercased()

        setupViews()
        setupAttributes()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func clearText() {
        self.textView.text = nil
    }
    
    public func getText() -> String? {
        return self.textView.text
    }
    
    public func setText(_ t: String?) {
        self.textView.text = t
    }
    
    public func setTitleLabel(_ t: String) {
        self.titleLabel.text = t
    }
    
    public func setKeyboardType(_ type: UIKeyboardType) {
        self.textView.keyboardType = type
    }
    
    // MARK: - Delegate Functions
    let padding = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: -12)
    
    // MARK: - View Setup
    private func setupAttributes() {
        textView.backgroundColor = Colors.accent
        textView.layer.cornerRadius = 6
        textView.font = UIFont(name: "Avenir-Heavy", size: 14)
        textView.textColor = Colors.primaryText
        textView.keyboardAppearance = .dark
    }
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir-Heavy", size: 15)
        label.textColor = Colors.primaryText
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let textView = TextView()
    private func setupViews() {
        
        self.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.top.equalToSuperview()
        }
        
        textView.textContainerInset = UIEdgeInsets(top: 16, left: 16, bottom: 16, right: 16)
        self.addSubview(textView)
        textView.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.top.equalTo(titleLabel.snp.bottom).offset(8)
            make.bottom.equalToSuperview()
        }
        
    }
}

public class TextFieldWithTitle: UIView, UITextFieldDelegate {
    
    public init(withTitle t: String, placeholder: String = "") {
        super.init(frame: .zero)
                
        setPlaceholder(withString: placeholder)
        titleLabel.text = t.uppercased()

        setupViews()
        setupAttributes()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func clearText() {
        self.textField.text = nil
    }
    
    public func getText() -> String? {
        return self.textField.text
    }
    
    public func setText(_ t: String?) {
        self.textField.text = t
    }
    
    public func setTitleLabel(_ t: String) {
        self.titleLabel.text = t
    }
    
    public func setKeyboardType(_ type: UIKeyboardType) {
        self.textField.keyboardType = type
    }
    
    public func setPlaceholder(withString p: String) {
        let attributedPlaceholder = NSAttributedString(string: p, attributes: [
            NSAttributedString.Key.font: UIFont(name: "Avenir-Heavy", size: 13)!,
            NSAttributedString.Key.foregroundColor: Colors.gray2!.withAlphaComponent(0.65)
        ])
        textField.attributedPlaceholder = attributedPlaceholder
    }
    
    // MARK: - Delegate Functions
    let padding = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: -12)
    
    // MARK: - View Setup
    private func setupAttributes() {
        textField.backgroundColor = Colors.accent
        textField.layer.cornerRadius = 6
        textField.font = UIFont(name: "Avenir-Heavy", size: 14)
        textField.textColor = Colors.primaryText
        textField.keyboardAppearance = .dark
    }
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir-Heavy", size: 15)
        label.textColor = Colors.primaryText
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    public let textField = TextField() // Make public in order to add targets in ViewControllers
    private func setupViews() {
        
        self.addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.top.equalToSuperview()
        }
        
        self.addSubview(textField)
        textField.snp.makeConstraints { make in
            make.leading.equalToSuperview()
            make.trailing.equalToSuperview()
            make.height.equalTo(48).priority(.high)
            make.top.equalTo(titleLabel.snp.bottom).offset(8)
            make.bottom.equalToSuperview()
        }
        
    }
    
}
