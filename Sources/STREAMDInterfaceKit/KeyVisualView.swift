//
//  KeyVisualView.swift
//  STREAMD
//
//  Created by Jules Labador on 10/17/21.
//

import UIKit

public class KeyVisualView: UIImageView {
    
    public override var image: UIImage? {
        didSet {
            guard image == nil else { return }
            createEmptyImageLayout()
        }
    }
    
    public init() {
        super.init(frame: .zero)
        self.layer.cornerRadius = 6
        self.backgroundColor = .STREAMDColors.accent
        self.contentMode = .scaleAspectFill
        self.layer.masksToBounds = true
        self.clipsToBounds = true
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    private let imagePlaceholder: UIImageView = {
        let view = UIImageView()
        view.image = UIImage(named: "image-placeholder")
        view.contentMode = .scaleAspectFit
        view.backgroundColor = .STREAMDColors.red
        return view
    }()
    private let emptyImageLabel: UILabel = {
        let label = UILabel()
        label.text = "No image here... yet!"
        label.font = .STREAMDFonts.body
        label.textColor = .STREAMDColors.secondaryText
        label.numberOfLines = -1
        return label
    }()
    private func createEmptyImageLayout() {
        
        addSubview(imagePlaceholder)
        imagePlaceholder.snp.makeConstraints { make in
            make.width.equalTo(300)
            make.height.equalTo(200)
            make.centerX.equalToSuperview()
            make.bottom.equalTo(self.snp.centerY).offset(-16)
        }
        
        addSubview(emptyImageLabel)
        emptyImageLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(16)
            make.right.equalToSuperview().offset(-16)
            make.top.equalTo(self.snp.centerY)
        }
    }
    
}
