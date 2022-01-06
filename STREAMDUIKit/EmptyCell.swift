//
//  EmptyCell.swift
//  STREAMD
//
//  Created by Jules Labador on 11/24/21.
//

import UIKit

public class EmptyCell: UICollectionViewCell {
    
    public static let reuseID = String(describing: EmptyCell.self)
    
    public override init(frame: CGRect) {
        super.init(frame: frame)
        
        setUpViews()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    public func setTitle(_ title: String) {
        self.titleLabel.text = title
    }
    
    private let titleLabel: UILabel = {
        let label = UILabel()
        label.font = UIFont(name: "Poppins-SemiBold", size: 15)
        label.textAlignment = .center
        label.textColor = UIColor.secondaryText
        label.numberOfLines = -1
        return label
    }()
    private func setUpViews() {
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.left.equalToSuperview().offset(64)
            make.right.equalToSuperview().offset(-64)
            make.height.centerY.equalToSuperview()
        }
    }
    
}
