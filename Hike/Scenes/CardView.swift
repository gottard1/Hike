//
//  CardView.swift
//  Hike
//
//  Created by Marcel Felipe Gottardi Anesi on 18/03/24.
//

import SwiftUI

struct CardView: View {
    @State private var imageNumber: Int = 1
    @State private var randomNumber: Int = 1
    @State private var isShowingSheet: Bool = false
    
    var body: some View {
        ZStack {
            CustomBackgroundView()
            
            VStack {
                headerTexts
                
                circleImage
                
                footerButton
            }
        }
        .padding()
    }
}

// MARK: - Functions
extension CardView {
    
    func randomImage() {
        repeat {
            randomNumber = Int.random(in: 1...5)
        } while randomNumber == imageNumber
        
        imageNumber = randomNumber
    }
    
}

// MARK: - Layout
extension CardView {
    
    var headerTexts: some View {
        VStack(alignment: .leading, spacing: 8) {
            HStack {
                Text("Hiking")
                    .fontWeight(.black)
                    .font(.system(size: 52))
                    .foregroundStyle(
                        LinearGradient(
                            colors: [
                                .grayLight,
                                .grayMedium
                            ],
                            startPoint: .top,
                            endPoint: .bottom
                        )
                )
                
                Spacer()
                
                Button {
                    isShowingSheet.toggle()
                } label: {
                    CustomButtonView()
                }
                .sheet(isPresented: $isShowingSheet) {
                    SettingsView()
                        .presentationDragIndicator(.visible)
                        .presentationDetents([.medium, .large])
                }
            }
            
            Text("Atividades ao ar livre divertida e agradável para amigos e famílias.")
                .multilineTextAlignment(.leading)
                .italic()
                .foregroundStyle(.grayMedium)
        }
        .padding(.horizontal, 32)
    }
    
    var circleImage: some View {
        ZStack {
            CustomCircleView()
            
            Image("image-\(imageNumber)")
                .resizable()
                .scaledToFit()
                .animation(.default, value: imageNumber)
        }
    }
    
    var footerButton: some View {
        Button {
            randomImage()
        } label: {
            Text("EXPLORAR MAIS")
                .font(.title2)
                .fontWeight(.heavy)
                .foregroundStyle(
                    LinearGradient(
                        colors: [
                            .greenLight,
                            .greenMedium
                        ],
                        startPoint: .top,
                        endPoint: .bottom)
                )
                .shadow(color: .black.opacity(0.25), radius: 0.25, x: 1, y: 2)
        }
        .buttonStyle(GradientButton())
    }
    
}

#Preview {
    CardView()
}
