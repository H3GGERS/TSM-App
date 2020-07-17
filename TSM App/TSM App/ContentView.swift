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
            TextField(/*@START_MENU_TOKEN@*/"Email address"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
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
        VStack(spacing: 5.0) {
            VStack(spacing: -14.0) {
                Text("TRADE")
                    .font(.custom("Montserrat-Bold", size: 54))
                    .foregroundColor(Color("Primary"))
                    .frame(width: 327, alignment: .leading)
                
                Text("SKILL")
                    .font(.custom("Montserrat-Bold", size: 54))
                    .foregroundColor(Color("Primary"))
                    .frame(width: 327, alignment: .leading)
                
                Text("MASTER")
                    .font(.custom("Montserrat-Bold", size: 54))
                    .foregroundColor(Color("Primary"))
                    .frame(width: 327, alignment: .leading)
            }
            .frame(width: 327, height: 164)
            VStack {
                Text("LEDGER")
                    .font(.custom("Montserrat-Regular", size: 23))
                    .foregroundColor(Color("Primary"))
                    .frame(width: 327, alignment: .leading)
            }
        }
    }
}
