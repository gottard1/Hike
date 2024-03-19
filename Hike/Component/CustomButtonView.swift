//
//  CustomButtonView.swift
//  Hike
//
//  Created by Marcel Felipe Gottardi Anesi on 19/03/24.
//

import SwiftUI

struct CustomButtonView: View {
    var body: some View {
        ZStack {
            Circle()
                .fill(
                LinearGradient(
                    colors: [
                        .greenLight,
                        .greenMedium
                    ],
                    startPoint: .top,
                    endPoint: .bottom)
                )
                
            Circle()
                .stroke(
                    LinearGradient(
                        colors: [
                            .grayLight,
                            .grayMedium
                        ],
                        startPoint: .top,
                        endPoint: .bottom
                    ),
                    lineWidth: 4
                )
            
            Image(systemName: "figure.hiking")
                .fontWeight(.black)
                .font(.system(size: 32))
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .grayLight,
                            .grayMedium
                        ],
                        startPoint: .top,
                        endPoint: .bottom)
                )
        }
        .frame(width: 58 ,height: 58)
    }
}

#Preview {
    CustomButtonView()
        .previewLayout(.sizeThatFits)
        .padding()
}
