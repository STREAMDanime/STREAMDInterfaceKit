//
//  File.swift
//  
//
//  Created by Jules Labador on 2/5/22.
//

import UIKit

public class TitleAndSubtitle: UIView {
    
    init(title: String, subtitle: String) {
        super.init(frame: .zero)
        setUpViews()
        
        titleLabel.text = title
        subtitleLabel.text = subtitle
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private let titleLabel = TitleLabel()
    private let subtitleLabel = SubtitleLabel()
    private func setUpViews() {
        
        addSubview(titleLabel)
        titleLabel.snp.makeConstraints { make in
            make.leading.trailing.top.equalToSuperview()
        }
        
        addSubview(subtitleLabel)
        subtitleLabel.snp.makeConstraints { make in
            make.top.equalTo(titleLabel.snp.bottom).offset(4)
            make.leading.trailing.bottom.equalToSuperview()
        }
        
    }
}
