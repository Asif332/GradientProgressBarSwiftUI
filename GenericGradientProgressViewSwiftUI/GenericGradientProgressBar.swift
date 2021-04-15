//
//  GenericGradientProgressBar.swift
//  GenericGradientProgressViewSwiftUI
//
//  Created by Mohammad Asif on 15/04/21.
//

import SwiftUI

struct GenericGradientProgressBar: View {
    var progressValue: Float
    var height: Float
    var progressTintColor: Color
    var gradientColors:  [Color]
    
    init(progressValue: Float, height: Float, progressTintColor: Color, gradientColors: [Color]) {
        self.progressValue = progressValue
        self.height = height
        self.progressTintColor = progressTintColor
        self.gradientColors = gradientColors
    }
    
    var body: some View {
        GeometryReader { geometry in
            ZStack(alignment: .leading) {
                Rectangle().frame(width: geometry.size.width , height: geometry.size.height)
                    .foregroundColor(progressTintColor)
                LinearGradient(
                    gradient: Gradient(colors: gradientColors),
                    startPoint: .leading,
                    endPoint: .trailing
                ).frame(width: min(CGFloat(self.progressValue)*geometry.size.width, geometry.size.width), height: geometry.size.height)
                .animation(.linear)
            }.frame(height: CGFloat(self.height))
            .cornerRadius(CGFloat(self.height/2))
        }
    }
}

struct GenericGradientProgressView_Previews: PreviewProvider {
    static var previews: some View {
        GenericGradientProgressBar(progressValue: 0.75, height: 15, progressTintColor: Color.gray.opacity(0.3), gradientColors: [.orange,.red,.purple])
            .padding(.horizontal)
            .padding(.top,250)
    }
}

