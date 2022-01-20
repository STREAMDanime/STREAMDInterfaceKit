//
//  SwiftUIView.swift
//  
//
//  Created by Jules Labador on 1/19/22.
//

import SwiftUI

struct SecureTextField_SwiftUI: View {
    
    private let title: String
    private let placeholder: String
    
    @Binding var text: String = ""
    
    public init(title: String, placeholder: String, text: String) {
        self.title = title
        self.placeholder = placeholder
        self.text = text
    }
    
    var body: some View {
        VStack {
            Text(title)
                .frame(maxWidth: .infinity, alignment: .leading)
                .padding(.top, 16)
                .padding(.horizontal, 12)
                .font(Font.custom("Avenir-Heavy", size: 12))
            TextField
            TextField(placeholder, text: $text)
                .disableAutocorrection(true)
                .padding(.horizontal, 12)
                .padding(.bottom, 12)
                .font(Font.custom("Avenir-Heavy", size: 14))
        }
        .background(Color.STREAMDColors.accent)
        .cornerRadius(6)
    }
}

struct SecureTextField_SwiftUI_Previews: PreviewProvider {
    static var previews: some View {
//        @State var text: String
//        SecureTextField_SwiftUI(title: "TITLE", placeholder: "Placeholder", text: $text)
    }
}
