//
//  DetailView.swift
//  01-MiPrimeraApp
//
//  Created by iXavy on 12/11/22.
//

import SwiftUI

struct DetailView: View {
    var driver: Driver
    
    var body: some View {
        VStack {
            
            Image(driver.team.imageName)
                .resizable()
                .frame(height: 230)
            Image(driver.imageName)
                .clipShape(Circle())
                .background(Circle().foregroundColor(.white))
                .overlay(Circle().stroke(.white, lineWidth: 3))
                .shadow(radius: 18)
                .offset(x: 0, y: -65)
                .padding(.bottom, -60)
            Text(driver.name)
                .font(.system(size: 45))
                .fontWeight(.bold)
                .padding(.bottom, 80)
            StatsRow(statKey: "Edad", statValue: String(driver.age))
            StatsRow(statKey: "Numero", statValue: String(driver.number))
            StatsRow(statKey: "Origen", statValue: driver.birthPlace)
            Spacer()
        }.edgesIgnoringSafeArea(.top)
        
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        DetailView(driver: drivers[0])
    }
}
