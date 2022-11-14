//
//  DetailView.swift
//  01-MiPrimeraApp
//
//  Created by iXavy on 12/11/22.
//

import SwiftUI

struct DetailView: View {
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
                .padding(.bottom, -60)
            Text("Lewis Hamilton")
                .font(.system(size: 45))
                .fontWeight(.bold)
                .padding(.bottom, 80)
            StatsRow(statKey: "Edad", statValue: "35")
            StatsRow(statKey: "Numero", statValue: "44")
            StatsRow(statKey: "Origen", statValue: "Reino Unido")
            Spacer()
        }.edgesIgnoringSafeArea(.top)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView()
    }
}
