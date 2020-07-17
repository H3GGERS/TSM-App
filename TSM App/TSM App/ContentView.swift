//
//  ContentView.swift
//  TSM App
//
//  Created by Kyle Hegge on 7/17/20.
//  Copyright © 2020 Kyle Hegge. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Logo()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}




struct Logo: View {
    var body: some View {
        VStack(alignment: .leading, spacing: 5.0) {
            VStack(alignment: .leading, spacing: -14.0) {
                Text("TRADE")
                    .font(.custom("Montserrat-Bold", size: 54))
                
                Text("SKILL")
                    .font(.custom("Montserrat-Bold", size: 54))
                
                Text("MASTER")
                    .font(.custom("Montserrat-Bold", size: 54))
                    .frame(width: 327, alignment: .leading)
            }
            .frame(width: 327, height: 164)
            VStack(alignment: .leading) {
                Text("LEDGER")
                    .font(.custom("Montserrat-Regular", size: 23))
                    .multilineTextAlignment(.leading)
                    .frame(width: 327, alignment: .leading)
            }
        }
    }
}
