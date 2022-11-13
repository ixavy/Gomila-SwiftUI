//
//  ContentView.swift
//  01-MiPrimeraApp
//
//  Created by iXavy on 12/11/22.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Image("car_mercedes")
                .resizable()
                .frame(height: 230)
            Image("hamilton")
                .clipShape(Circle())
                .background(Circle().foregroundColor(.white))
                .overlay(Circle().stroke(.white, lineWidth: 3))
                .shadow(radius: 18)
                .offset(x: 0, y: -65)
            Text("Lewis Hamilton")
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
