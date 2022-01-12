//
//  TitleAndSubtitle_SwiftUI.swift
//  STREAMDUIKit
//
//  Created by Jules Labador on 1/7/22.
//

import SwiftUI

public struct TitleAndSubtitle_SwiftUI: View {
    
    @State var title: String = ""
    @State var subtitle: String = ""
    
    public init(title: String = "", subtitle: String = "") {
        self.title = title
        self.subtitle = subtitle
    }
    
    public var body: some View {
        VStack(alignment: .leading) {
            Text(title)
                .font(.STREAMDFonts.title)
                .foregroundColor(Color.STREAMDColors.primaryText)
                .frame(maxWidth: .infinity, alignment: .leading)
            Text(subtitle)
                .font(.STREAMDFonts.subtitle)
                .foregroundColor(Color.STREAMDColors.secondaryText)
                .frame(maxWidth: .infinity, alignment: .leading)
        }
        .background(Color.red)
    }
}

struct TitleAndSubtitle_SwiftUI_Previews: PreviewProvider {
    static var previews: some View {
        TitleAndSubtitle_SwiftUI(title: "Title",
                                 subtitle: "This is what the subtitle will look like")
    }
}
