//
//  TagView.swift
//  STREAMD
//
//  Created by Jules Labador on 8/31/21.
//

import UIKit

public class TagView: UILabel {
    
    public init(title: String) {
        super.init(frame: .zero)
        
        self.font = UIFont(name: "Poppins-Bold", size: 12)
        self.textColor = .white
        self.textAlignment = .center
        self.backgroundColor = UIColor.primaryPurple
        self.text = title
        layer.masksToBounds = true
        setUpViews()
        
        textInsets = UIEdgeInsets(top: 0, left: 20, bottom: 0, right: 20)
    }
    
    public var textInsets = UIEdgeInsets.zero {
        didSet { invalidateIntrinsicContentSize() }
    }
    
    public override func textRect(forBounds bounds: CGRect, limitedToNumberOfLines numberOfLines: Int) -> CGRect {
        let insetRect = bounds.inset(by: textInsets)
        let textRect = super.textRect(forBounds: insetRect, limitedToNumberOfLines: numberOfLines)
        let invertedInsets = UIEdgeInsets(top: -textInsets.top,
                                          left: -textInsets.left,
                                          bottom: -textInsets.bottom,
                                          right: -textInsets.right)
        return textRect.inset(by: invertedInsets)
    }
    
    public override func drawText(in rect: CGRect) {
        super.drawText(in: rect.inset(by: textInsets))
    }
    
    required init?(coder: NSCoder) {
        fatalError()
    }

    private func setUpViews() { }
}
