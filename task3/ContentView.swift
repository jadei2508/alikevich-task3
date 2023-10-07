//
//  ContentView.swift
//  task3
//
//  Created by Роман on 07/10/2023.
//

import SwiftUI

struct ContentView: View {
    @State private var isActive: Bool = false

    var body: some View {
        Button(action: {
            withAnimation(.interpolatingSpring(stiffness: 100, damping: 15)) {
                isActive = true
            }
            DispatchQueue.main.asyncAfter(deadline: .now() + 0.3) {
                isActive = false
            }
        }){
            HStack(spacing: 0) {
                ZStack {
                    Image(systemName: "play.fill")
                        .resizable()
                        .scaledToFit()
                        .offset(x: isActive ? 32 : 0)

                    Image(systemName: "play.fill")
                        .resizable()
                        .scaledToFit()
                        .offset(x: isActive ? 0 : -16)
                        .opacity(isActive ? 1 : 0)
                        .scaleEffect(isActive ? 1 : 0.2)
                }
                Image(systemName: "play.fill")
                    .resizable()
                    .scaledToFit()
                        .offset(x: isActive ? 16 : 0)
                        .opacity(isActive ? 0 : 1)
                        .scaleEffect(isActive ? 0.2 : 1)
            }.frame(width: 64, height: 64)
        }
    }
}


struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
