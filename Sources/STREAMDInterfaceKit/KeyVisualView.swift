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
    
    public func setImagePlaceholder(_ i: UIImage?) {
        imagePlaceholder.image = i
    }

    public let imagePlaceholder: UIImageView = {
        let view = UIImageView()
        view.tintColor = .STREAMDColors.primaryPurple
        view.contentMode = .scaleAspectFit
//        view.backgroundColor = .systemRed
        return view
    }()
    private let emptyImageLabel: UILabel = {
        let label = UILabel()
        label.text = "No image here... yet!"
        label.font = .STREAMDFonts.body?.withSize(12)
        label.textColor = .STREAMDColors.secondaryText
        label.numberOfLines = -1
        label.textAlignment = .center
        return label
    }()
    public func createEmptyImageLayout() {
                
        addSubview(imagePlaceholder)
        imagePlaceholder.snp.makeConstraints { make in
            make.width.equalTo(108)
            make.height.equalTo(65)
            make.centerX.equalToSuperview()
            make.bottom.equalTo(self.snp.centerY)
        }
        
        addSubview(emptyImageLabel)
        emptyImageLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(8)
            make.right.equalToSuperview().offset(-8)
            make.top.equalTo(imagePlaceholder.snp.bottom).offset(12)
        }
    }
    
}

// MARK: - SwiftUI Preview
import SwiftUI
#if DEBUG
    struct KeyVisualViewContainer: UIViewRepresentable {
        typealias UIViewType = KeyVisualView
        func makeUIView(context: Context) -> UIViewType {
            let view = UIViewType()
            view.image = nil
            return view
        }

        func updateUIView(_ uiView: UIViewType, context: Context) {}
    }

    struct KeyVisualView_Preview: PreviewProvider {
        static var previews: some View {
            
            Group {
                KeyVisualViewContainer().colorScheme(.light)
                    .frame(width: 140, height: 190, alignment: .leading)
                    .preferredColorScheme(.dark)
                KeyVisualViewContainer().colorScheme(.dark)
                    .frame(width: 140, height: 190, alignment: .leading)
            }.previewLayout(.fixed(width: 400, height: 400))
        }
    }
#endif
