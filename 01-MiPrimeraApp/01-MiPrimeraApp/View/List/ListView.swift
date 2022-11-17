//
//  ListView.swift
//  01-MiPrimeraApp
//
//  Created by iXavy on 14/11/22.
//

import SwiftUI

struct ListView: View {
    
    var body: some View {
        NavigationView {
            List(drivers) { driver in
                NavigationLink(destination: DetailView(driver: driver)) {
                    CellView(driver: driver)
                }
            }
        }
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView()
    }
}

