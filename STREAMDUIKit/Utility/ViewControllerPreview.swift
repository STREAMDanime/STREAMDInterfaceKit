//
//  ViewControllerPreview.swift
//  STREAMD
//
//  Created by David Barsamian on 1/6/22.
//

import SwiftUI
import UIKit

public struct ViewControllerPreview: UIViewControllerRepresentable {
    public let viewControllerBuilder: () -> UIViewController
    
    public init(_ viewControllerBuilder: @escaping () -> UIViewController) {
        self.viewControllerBuilder = viewControllerBuilder
    }
    
    public func makeUIViewController(context: Context) -> some UIViewController {
        return viewControllerBuilder()
    }
    
    public func updateUIViewController(_ uiViewController: UIViewControllerType, context: Context) {
        // Not needed.
    }
}
