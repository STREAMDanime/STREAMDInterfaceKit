//
//  TextViewWithTitle.swift
//  STREAMDUIKit
//
//  Created by Jules Labador on 1/7/22.
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
        textView.backgroundColor = .STREAMDColors.accent
        textView.layer.cornerRadius = 6
        textView.font = UIFont(name: "Avenir-Heavy", size: 14)
        textView.textColor = .STREAMDColors.primaryText
        textView.keyboardAppearance = .dark
    }
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir-Medium", size: 12)
        label.textColor = .STREAMDColors.primaryText
        label.translatesAutoresizingMaskIntoConstraints = false
        return label
    }()
    let textView: UITextView = {
        let view = UITextView()
        view.font = UIFont(name: "Avenir-Medium", size: 14)
        view.textColor = .STREAMDColors.primaryText
        view.backgroundColor = .clear
        view.isScrollEnabled = false
        return view
    }() 
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
