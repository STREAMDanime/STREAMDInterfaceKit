//
//  Button.swift
//  STREAMD
//
//  Created by Jules Labador on 3/1/21.
//

import UIKit

public enum ButtonConfigurationTypeEnum {
    case plain
    case filled
    case tinted
    case gray
    case bordered
    case accent
}

public enum ButtonContentAlignment {
    case leading
    case center
    case trailing
}

public class Button: UIButton {
    
    internal var buttonConfigurationEnum: ButtonConfigurationTypeEnum
    
    public var font: UIFont? = UIFont(name: "Poppins-SemiBold", size: 15)!
    
    public init(image: UIImage, buttonConfiguration: ButtonConfigurationTypeEnum) {
        self.buttonConfigurationEnum = buttonConfiguration
        super.init(frame: .zero)
        
        if #available(iOS 15.0, *) {
            var config = createButtonConfiguration()
            config.baseBackgroundColor = Colors.primaryPurple
            config.image = image.withRenderingMode(.alwaysTemplate)
            self.configuration = config
            return
        }
        
        self.imageView?.layer.masksToBounds = true
        self.imageView?.contentMode = .scaleAspectFit
    }
    
    public init(title: String, buttonConfiguration: ButtonConfigurationTypeEnum) {
        self.buttonConfigurationEnum = buttonConfiguration
        super.init(frame: .zero)
        
        if #available(iOS 15.0, *) {
            var config = createButtonConfiguration()
            var attributeContainer = AttributeContainer()
            attributeContainer.font = self.font
            config.title = title
            config.attributedTitle = AttributedString(title, attributes: attributeContainer)
            self.configuration = config
            return
        }
        
        switch buttonConfiguration {
        case .plain:
            self.backgroundColor = .clear
        case .filled:
            self.backgroundColor = Colors.primaryPurple
        case .tinted:
            self.backgroundColor = Colors.primaryPurple?.withAlphaComponent(0.40)
        case .gray:
            break
        case .bordered:
            self.layer.borderColor = Colors.primaryPurple?.cgColor
            self.layer.borderWidth = 1
        case .accent:
            break
        }
        
        self.titleLabel?.font = self.font
        self.setTitle(title, for: .normal)
        self.setTitleColor(.white)
        
    }
    
    public init(image: UIImage, title: String, buttonConfiguration: ButtonConfigurationTypeEnum, primaryAction: UIKit.UIAction? = nil) {
        self.buttonConfigurationEnum = buttonConfiguration
        super.init(frame: .zero)
        
        if #available(iOS 15.0, *) {
            var config = createButtonConfiguration()
            config.baseBackgroundColor = Colors.primaryPurple
            config.baseForegroundColor = .white
            
            var container = AttributeContainer()
            container.font = self.font
            config.title = title
            config.image = image.withTintColor(.systemRed, renderingMode: .alwaysTemplate)
            config.imagePadding = 8
            config.attributedTitle = AttributedString(title, attributes: container)
            self.configuration = config
            return
        }
        
        switch buttonConfiguration {
        case .plain:
            self.backgroundColor = .clear
        case .filled:
            self.backgroundColor = Colors.primaryPurple
        case .tinted:
            self.backgroundColor = Colors.primaryPurple?.withAlphaComponent(0.40)
        case .gray:
            break
        case .bordered:
            self.layer.borderColor = Colors.primaryPurple?.cgColor
            self.layer.borderWidth = 1
        case .accent:
            break
        }
        
        self.titleLabel?.font = self.font
        self.setTitle(title, for: .normal)
        self.setTitleColor(.white)
        
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    @available(iOS 15.0, *)
    internal func createButtonConfiguration() -> UIButton.Configuration {
        switch buttonConfigurationEnum {
        case .plain:
            var config = Configuration.plain()
            config.baseBackgroundColor = .clear
            config.baseForegroundColor = Colors.primaryText
            return config
        case .filled:
            var config = Configuration.filled()
            config.baseBackgroundColor = Colors.primaryPurple
            config.baseForegroundColor = .white
            return config
        case .tinted:
            var config = Configuration.tinted()
            config.baseBackgroundColor = Colors.primaryPurple
            config.baseForegroundColor = .white
            return config
        case .gray:
            var config = Configuration.gray()
            config.baseBackgroundColor = Colors.primaryPurple
            config.baseForegroundColor = .white
            return config
        case .bordered:
            var config = Configuration.bordered()
            config.baseBackgroundColor = .clear
            config.baseForegroundColor = .white
            config.background.strokeWidth = 1
            config.background.strokeColor = Colors.primaryPurple
            return config
        case .accent:
            var config = Configuration.filled()
            config.baseBackgroundColor = Colors.accent
            config.baseForegroundColor = Colors.primaryText
            return config
        }
    }
    
    public func setStyle(_ s: ButtonConfigurationTypeEnum) {
        self.buttonConfigurationEnum = s
        switch buttonConfigurationEnum {
        case .plain:
            var config = Configuration.plain()
            config.baseBackgroundColor = .clear
            config.baseForegroundColor = .white
            self.configuration = config
        case .filled:
            var config = Configuration.filled()
            config.baseBackgroundColor = Colors.primaryPurple
            config.baseForegroundColor = .white
            self.configuration = config
        case .tinted:
            var config = Configuration.tinted()
            config.baseBackgroundColor = Colors.primaryPurple
            config.baseForegroundColor = .white
            self.configuration = config
        case .gray:
            var config = Configuration.gray()
            config.baseBackgroundColor = Colors.primaryPurple
            config.baseForegroundColor = .white
            self.configuration = config
        case .bordered:
            var config = Configuration.bordered()
            config.baseBackgroundColor = .clear
            config.baseForegroundColor = .white
            config.background.strokeWidth = 1
            config.background.strokeColor = Colors.primaryPurple
            self.configuration = config
        case .accent:
            var config = Configuration.filled()
            config.baseBackgroundColor = Colors.accent
            config.baseForegroundColor = .white
            self.configuration = config
        }
        
    }
    
    public func setBackgroundColor(_ c: UIColor?) {
        if #available(iOS 15.0, *) {
            var config = self.configuration
            config?.baseBackgroundColor = c
            self.configuration = config
            return
        }
        self.backgroundColor = c
    }
    
    public func setImageTint(_ color: UIColor?) {
        if #available(iOS 15.0, *) {
            var config = self.configuration
            config?.imageColorTransformer = UIConfigurationColorTransformer({ button in
                return color!
            })
            self.configuration = config
            return
        }
        
        self.imageView?.image = self.imageView?.image?.withTintColor(color!, renderingMode: .alwaysTemplate)
    }
    
    public override func setTitle(_ title: String?, for state: UIControl.State) {
        self.setTitle(title ?? "")
    }
    
    public func setTitle<T>(_ title: T) {
        if #available(iOS 15.0, *) {
            var config = self.configuration
            config?.title = "\(title)"
            
            var container = AttributeContainer()
            container.font = self.font
            config?.attributedTitle = AttributedString("\(title)", attributes: container)
            self.configuration = config
            return
        }
        self.setTitle("\(title)", for: .normal)
    }
    
    public func setTitleColor(_ color: UIColor?) {
        self.setTitleColor(color, for: .normal)
        if #available(iOS 15.0, *) {
            var config = self.configuration
            config?.baseForegroundColor = color
            self.configuration = config
        }
    }
    
    public func setFont(_ font: UIFont?) {
        self.titleLabel?.font = font
        if #available(iOS 15.0, *) {
            var config = self.configuration
            var attributeContainer = AttributeContainer()
            attributeContainer.font = font
            self.font = font
            let configTitle = config?.title ?? ""
            config?.attributedTitle = AttributedString(configTitle, attributes: attributeContainer)
            self.configuration = config
            return
        }
    }
    
    public func setCornerRadius(_ radius: CGFloat) {
        if #available(iOS 15.0, *) {
            var config = self.configuration
            config?.background.cornerRadius = radius
            self.configuration = config
            return
        }
        self.layer.cornerRadius = radius
    }
    
    public func setImage(_ image: UIImage?, renderingMode: UIImage.RenderingMode = .alwaysTemplate) {
        if #available(iOS 15.0, *) {
            var config = self.configuration
            config?.image = image
            self.configuration = config
            return
        }
        self.imageView?.image = image
    }
    
    public func setAlignment(_ alignment: ButtonContentAlignment) {
        switch alignment {
        case .leading:
            if #available(iOS 15.0, *) {
                self.setTitleAlignment(.leading)
            } else {
                self.titleLabel?.textAlignment = .left
            }
        case .center:
            if #available(iOS 15.0, *) {
                self.setTitleAlignment(.center)
            } else {
                self.titleLabel?.textAlignment = .center
            }
        case .trailing:
            if #available(iOS 15.0, *) {
                self.setTitleAlignment(.trailing)
            } else {
                self.titleLabel?.textAlignment = .right
            }
        }
    }
    
    public func setPadding(top: CGFloat = 0, leading: CGFloat = 0, bottom: CGFloat = 0, trailing: CGFloat = 0) {
        if #available(iOS 15.0, *) {
            var config = self.configuration
            config?.contentInsets = NSDirectionalEdgeInsets(top: top, leading: leading, bottom: bottom, trailing: trailing)
            self.configuration = config
        } else {
            self.titleEdgeInsets = UIEdgeInsets(top: top, left: leading, bottom: bottom, right: trailing)
        }
        
    }
    
    @available(iOS 15.0, *)
    private func setTitleAlignment(_ alignment: UIButton.Configuration.TitleAlignment) {
        var config = self.configuration
        config?.titleAlignment = alignment
        self.configuration = config
    }
}
