//
//  StatsRow.swift
//  01-MiPrimeraApp
//
//  Created by iXavy on 14/11/22.
//

import SwiftUI

struct StatsRow: View {
    
    var statKey: String
    var statValue: String
    let fontSizeKey: Font = Font.system(size: 25)
    let fontSizeValue: Font  = Font.system(size: 30)
    
    var body: some View {
        HStack {
            Text(statKey + ":")
                .font(fontSizeKey)
                .fontWeight(.bold)
                .padding(.leading, 40)
            Text(statValue)
                .font(fontSizeValue)
                .fontWeight(.ultraLight)
                .padding(EdgeInsets(top: 0, leading: 15, bottom: 0, trailing: 40))
            Spacer()
        }
    }
}

struct DetailView_Previews: PreviewProvider {
    static var previews: some View {
        StatsRow(statKey: "Key", statValue: "Value")
    }
}
