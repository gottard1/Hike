//
//  GradientButtonStyle.swift
//  Hike
//
//  Created by Marcel Felipe Gottardi Anesi on 19/03/24.
//

import SwiftUI

struct GradientButton: ButtonStyle {
    
    func makeBody(configuration: Configuration) -> some View {
        configuration
            .label
            .padding(.vertical)
            .padding(.horizontal)
            .background(
                configuration.isPressed ?
                LinearGradient(
                    colors: [
                        .grayMedium,
                        .grayLight
                    ],
                    startPoint: .top,
                    endPoint: .bottom)
                :
                LinearGradient(
                    colors: [
                        .grayLight,
                        .grayMedium
                    ],
                    startPoint: .top,
                    endPoint: .bottom)
            )
            .cornerRadius(40)
        
        
    }
    
}
