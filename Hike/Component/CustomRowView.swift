//
//  CustomRowView.swift
//  Hike
//
//  Created by Marcel Felipe Gottardi Anesi on 19/03/24.
//

import SwiftUI

struct CustomRowView: View {
    @State var rowLabel: String
    @State var rowIcon: String
    @State var rowContent: String
    @State var rowTintColor: Color
    
    var body: some View {
        LabeledContent {
            Text(rowContent)
                .foregroundStyle(.primary)
                .fontWeight(.heavy)
        } label: {
            HStack {
                ZStack {
                    RoundedRectangle(cornerRadius: 8)
                        .frame(width: 30, height: 30)
                        .foregroundStyle(rowTintColor)
                    
                    Image(systemName: rowIcon)
                        .foregroundStyle(.white)
                        .fontWeight(.semibold)
                }
                
                Text(rowLabel)
            }
        }
    }
}

#Preview {
    List {
        CustomRowView(rowLabel: "Design", rowIcon: "paintpalette", rowContent: "paint", rowTintColor: .pink)
    }
}
