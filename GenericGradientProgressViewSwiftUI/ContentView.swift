//
//  ContentView.swift
//  GenericGradientProgressViewSwiftUI
//
//  Created by Mohammad Asif on 14/04/21.
//

import SwiftUI

struct ContentView: View {

    var body: some View {
        Text("Mohammad Asif").font(.headline)
            .padding(.top,50)
        VStack(alignment: .leading, spacing: 50) {
            Spacer()
            Text("Generic Gradient ProgressBar").font(.largeTitle)
            GenericGradientProgressBar(progressValue: 0.75, height: 15, progressTintColor: Color.gray.opacity(0.3), gradientColors: [.orange,.red,.purple])
        }.padding(.horizontal)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
