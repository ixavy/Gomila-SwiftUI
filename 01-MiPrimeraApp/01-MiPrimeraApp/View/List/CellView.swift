//
//  CellView.swift
//  01-MiPrimeraApp
//
//  Created by iXavy on 14/11/22.
//

import SwiftUI

struct CellView: View {
    var driver: Driver
    
    var body: some View {
        HStack {
            Image(driver.imageName)
                .resizable()
                .frame(width: 30, height: 30)
                .padding(EdgeInsets(top: 0, leading: 10, bottom: 0, trailing: 10))
                .clipShape(Circle())
                .background(Circle().foregroundColor(.white))
                .overlay(Circle().stroke(.white, lineWidth: 3))
                .shadow(radius: 40)
            Text(driver.name)
                .padding(.trailing, 10)
        }
    }
}

struct CellView_Previews: PreviewProvider {
    static var previews: some View {
        CellView(driver: drivers[0])
    }
}
