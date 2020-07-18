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
            Spacer()
                .frame(height: 178)
            
            Logo()
            
            Spacer()
                .frame(height: 48)
            
            VStack {
                TextField(/*@START_MENU_TOKEN@*/"Email address"/*@END_MENU_TOKEN@*/, text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding(8)
                .frame(width: 327, height: 40)
                .font(.custom("Montserrat-Regular", size: 14))
                .foregroundColor(Color("Active Alt"))
                .overlay(RoundedRectangle(cornerRadius: 4)
                    .stroke(Color("Primary"), lineWidth: 1)
                    .frame(width: 327, height: 40))
                
             TextField("Password", text: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant("")/*@END_MENU_TOKEN@*/)
                .padding(8)
                .frame(width: 327, height: 40)
                .font(.custom("Montserrat-Regular", size: 14))
                .foregroundColor(Color("Active Alt"))
                .overlay(RoundedRectangle(cornerRadius: 4)
                    .stroke(Color("Primary"), lineWidth: 1)
                    .frame(width: 327, height: 40))
                
                Text("Forgot your password?")
                .font(.custom("Montserrat-Regular", size: 14))
                .foregroundColor(Color("Primary"))
                .frame(width: 327, alignment: .leading)
            }
                
            Spacer()
                .frame(height:48)
                
            VStack {
                Button(action: /*@START_MENU_TOKEN@*/{}/*@END_MENU_TOKEN@*/) {
                    Text("Sign In".uppercased())
                    .font(.custom("Montserrat-Bold", size: 16))
                        .frame(width: 327, height: 40)
//                        .padding()
                        .background(Color("Primary"))
                        .foregroundColor(Color("Text"))
                        .cornerRadius(32)
                }
            }
            
            Spacer()
                .frame(height: 178)
            
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
