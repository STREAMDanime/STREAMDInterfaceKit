//
//  SwiftUIView.swift
//  
//
//  Created by Jules Labador on 1/19/22.
//

import SwiftUI

public struct TextField_SwiftUI: View {
    
    private let title: String
    private let placeholder: String
    
    @Binding var text: String
    
    public init(title: String, placeholder: String, text: Binding<String>, keyboardType: UIKeyboardType) {
        self.title = title
        self.placeholder = placeholder
        self._text = text
    }
    
    public var body: some View {
        VStack {
            Text(title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 16)
                .padding(.horizontal, 12)
                .font(Font.custom("Avenir-Heavy", size: 12))
                .foregroundColor(.STREAMDColors.secondaryText)
            TextField(placeholder, text: $text)
                .disableAutocorrection(true)
                .padding(.horizontal, 12)
                .padding(.bottom, 12)
                .font(Font.custom("Avenir-Heavy", size: 14))
                .foregroundColor(.STREAMDColors.primaryText)
                .keyboardType(keyboardType)
        }
        .background(Color.STREAMDColors.accent)
        .cornerRadius(6)
    }
}

struct TextField_SwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        TextField_SwiftUI(title: "TITLE", placeholder: "Placeholder", text: .constant("text"))
    }
}
