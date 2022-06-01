//
//  GradientView.swift
//  FreeTime
//
//  Created by Matthew Parker on 1/6/22.
//

import SwiftUI

struct GradientView: View {
    @State private var animateGradient = false
    var body: some View {
        LinearGradient(
            colors: [Color(#colorLiteral(red: 0.1764705926, green: 0.4980392158, blue: 0.7568627596, alpha: 1)), Color(#colorLiteral(red: 0.5568627715, green: 0.3529411852, blue: 0.9686274529, alpha: 1))],
            startPoint: animateGradient ? .topLeading : .bottomLeading,
            endPoint: animateGradient ? .bottomLeading : .top
        )
            .ignoresSafeArea()
            .blur(radius: 100.0, opaque: true)
            .onAppear {
                DispatchQueue.main.asyncAfter(deadline: .now()) {
                    withAnimation(.linear(duration: 6.0).repeatForever(autoreverses: true)) {
                        animateGradient = true
                }
            }
        }
    }
}

struct GradientView_Previews: PreviewProvider {
    static var previews: some View {
        GradientView()
    }
}
