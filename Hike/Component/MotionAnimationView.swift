//
//  MotionAnimationView.swift
//  Hike
//
//  Created by Marcel Felipe Gottardi Anesi on 19/03/24.
//

import SwiftUI

struct MotionAnimationView: View {
    @State private var randomCircle: Int = Int.random(in: 6...12)
    @State private var isAnimating: Bool = false
    
    
    var body: some View {
        ZStack {
            ForEach(0...randomCircle, id: \.self) { item in
                Circle()
                    .foregroundStyle(.white)
                    .opacity(0.25)
                    .frame(
                        width: randomSize(),
                        height: randomSize()
                    )
                    .position(
                        x: randomCoordinate(), 
                        y: randomCoordinate()
                    )
                    .scaleEffect(isAnimating ? randomScale() : 1)
                    .onAppear(perform: {
                        withAnimation(
                            .interpolatingSpring(stiffness: 0.25, damping: 0.25)
                            .repeatForever()
                            .speed(randomSpeed())
                            .delay(randomDelay())
                        ) {
                            isAnimating = true
                        }
                    })
            }
        }
        .frame(width: 256, height: 256)
        .mask {
            Circle()
        }
        .drawingGroup()
    }
}

// MARK: - Functions
extension MotionAnimationView {
    
    func randomCoordinate() -> CGFloat {
        CGFloat.random(in: 0...256)
    }
    
    func randomSize() -> CGFloat {
        CGFloat.random(in: 4...80)
    }
    
    func randomScale() -> CGFloat {
        CGFloat(Double.random(in: 0.1...2.0))
    }
    
    func randomSpeed() -> Double {
        Double.random(in: 0.05...1.0)
    }
    
    func randomDelay() -> Double {
        Double.random(in: 0...2)
    }
    
}

#Preview {
    ZStack {
        Color.teal
            .ignoresSafeArea()
        
        MotionAnimationView()
    }
}
