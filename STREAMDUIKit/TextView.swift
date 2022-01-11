//
//  TextView.swift
//  STREAMDUIKit
//
//  Created by Jules Labador on 1/7/22.
//

import UIKit

public class TextView: UITextView {
    
    public var shouldShowPlaceholder: Bool = true
    
    public init(title: String = "") {
        super.init(frame: .zero, textContainer: nil)
        titleLabel.text = title
        title.isEmpty ? setUpViewsWithoutTitle() : setUpViewsWithTitle()
        setUpAttributes()
    }
        
    required init?(coder: NSCoder) {
        fatalError()
    }

    public func setUpAttributes() {
        font = UIFont(name: "Avenir-Medium", size: 14)
        textColor = .STREAMDColors.primaryText
        backgroundColor = .STREAMDColors.accent
        layer.cornerRadius = 6
        isScrollEnabled = false
    }

    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Avenir-Heavy", size: 12)
        label.textColor = .STREAMDColors.secondaryText
        return label
    }()
    private func setUpViewsWithoutTitle() {
        textContainerInset = UIEdgeInsets(top: 0, left: 12, bottom: 0, right: 12)
    }
    private func setUpViewsWithTitle() {
        textContainerInset = UIEdgeInsets(top: 30, left: 8, bottom: 0, right: 12)
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

struct TextViewViewContainer: UIViewRepresentable {
    typealias UIViewType = TextView
    func makeUIView(context: Context) -> UIViewType {
        let view = TextView(title: "Testing a title")
        view.text = "The quick brown fox jumped over the slow turtle."
        return view
    }

    func updateUIView(_ uiView: TextView, context: Context) {}
}

struct TextViewView_Preview: PreviewProvider {
    static var previews: some View {
        Group {
            TextViewViewContainer().colorScheme(.light)
                .frame(width: .infinity, height: 64, alignment: .leading)
            TextViewViewContainer().colorScheme(.dark)
                .frame(width: .infinity, height: 64, alignment: .leading)
        }
        .previewLayout(.fixed(width: 400, height: 64))
    }
}


