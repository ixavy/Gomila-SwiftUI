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
            HStack {
                Image("car_mercedes")
                    .resizable()
                    .frame(height: 200)
            }
            Spacer()
                .padding(.all)
                .frame(height: 5.0)
                
            
            Image("hamilton")
                .padding()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
