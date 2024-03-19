//
//  CustomBackgroundView.swift
//  Hike
//
//  Created by Marcel Felipe Gottardi Anesi on 18/03/24.
//

import SwiftUI

struct CustomBackgroundView: View {
    var body: some View {
        ZStack {
            Color.greenDark
                .cornerRadius(40)
                .offset(y: 12)
            
            Color.greenLight
                .cornerRadius(40)
                .offset(y: 3)
                .opacity(0.85)
            
            LinearGradient(
                colors: [
                    .greenLight,
                    .greenMedium
                ],
                startPoint: .top,
                endPoint: .bottom
            )
            .cornerRadius(40)
        }
    }
}
 
#Preview {
    CustomBackgroundView()
        .padding()
}
