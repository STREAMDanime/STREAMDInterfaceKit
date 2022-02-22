//
//  InputView.swift
//  STREAMD
//
//  Created by Jules Labador on 3/3/21.
//

import UIKit

public class TextField_UIKit: UITextField {
    
    public init(title: String = "", placeholder: String = "", isSecure: Bool = false) {
        super.init(frame: .zero)
                
        titleLabel.text = title
        title.isEmpty ? setUpViewsWithoutTitle() : setUpViewsWithTitle()

        self.attributedPlaceholder = NSAttributedString(string: "\(placeholder)", attributes: [
            NSAttributedString.Key.foregroundColor: UIColor.STREAMDColors.secondaryText.withAlphaComponent(0.40),
            NSAttributedString.Key.font: UIFont(name: "NunitoSans-SemiBold", size: 14)!,
        ])
        isSecureTextEntry = isSecure
        setPlaceholder(withString: placeholder)
        setUpAttributes()
    }

    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    public func setPlaceholder(withString p: String) {
        let attributedPlaceholder = NSAttributedString(string: p, attributes: [
            NSAttributedString.Key.font: UIFont(name: "NunitoSans-Bold", size: 14)!,
            NSAttributedString.Key.foregroundColor: UIColor.STREAMDColors.secondaryText.withAlphaComponent(0.40),
        ])
        self.attributedPlaceholder = attributedPlaceholder
    }
    
    // MARK: - View Setup
    
    var padding = UIEdgeInsets(top: 20, left: 12, bottom: 0, right: 12)

    override open func textRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func placeholderRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }
    
    override open func editingRect(forBounds bounds: CGRect) -> CGRect {
        return bounds.inset(by: padding)
    }

    private func setUpAttributes() {
        layer.cornerRadius = 6
        font = UIFont(name: "NunitoSans-Bold", size: 14)
        textColor = .STREAMDColors.primaryText
        keyboardAppearance = .dark
        backgroundColor = .STREAMDColors.accent
        layer.cornerRadius = 6
    }

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "NunitoSans-Bold", size: 12)
        label.textColor = .STREAMDColors.secondaryText
        return label
    }()
    private func setUpViewsWithoutTitle() {
        padding = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 12)
    }

    private func setUpViewsWithTitle() {
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(12)
            make.right.equalToSuperview().offset(-12)
            make.top.equalToSuperview().offset(12)
        }
    }
}

// MARK: - SwiftUI Preview
import SwiftUI
#if DEBUG
    struct TextFieldViewContainer: UIViewRepresentable {
        typealias UIViewType = TextField_UIKit
        func makeUIView(context: Context) -> UIViewType {
            return UIViewType(placeholder: "youremail@address.com", isSecure: false)
        }

        func updateUIView(_ uiView: UIViewType, context: Context) {}
    }

    struct TextFieldView_Preview: PreviewProvider {
        static var previews: some View {
            Group {
                TextFieldViewContainer().colorScheme(.light)
                    .frame(width: .infinity, height: 64, alignment: .leading)
                TextFieldViewContainer().colorScheme(.dark)
                    .frame(width: .infinity, height: 64, alignment: .leading)
            }.previewLayout(.fixed(width: 400, height: 100))
        }
    }
#endif
