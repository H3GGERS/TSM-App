//
//  CustomTab.swift
//  TSM App
//
//  Created by Kyle Hegge on 7/21/20.
//  Copyright © 2020 Kyle Hegge. All rights reserved.
//

import SwiftUI

struct CustomTab: View {
    
    @ObservedObject var viewRouter = ViewRouter()
    
    var body: some View {
        GeometryReader { geometry in
            VStack {
                VStack {
                    Spacer()
                    
                    HStack{
                        HStack {
                            VStack {
                                Text("All")
                                    .frame(width: 41, height: 44)
                                    .font(.custom("Roboto-Medium", size: 14))
                                    .foregroundColor(self.viewRouter.currentView == "Tab1" ? Color("Blueberry_500") : Color("Licorice_300"))
                                    .onTapGesture {
                                        self.viewRouter.currentView = "Tab1"
                                }
                            }
                            Text("People")
                                .frame(width: 68, height: 44)
                                .font(.custom("Roboto-Medium", size: 14))
                                .foregroundColor(self.viewRouter.currentView == "Tab2" ? Color("Blueberry_500") : Color("Licorice_300"))
                                .onTapGesture {
                                    self.viewRouter.currentView = "Tab2"
                                }
                            Text("Task & Reports")
                                .frame(width: 119, height: 44)
                                .font(.custom("Roboto-Medium", size: 14))
                                .foregroundColor(self.viewRouter.currentView == "Tab3" ? Color("Blueberry_500") : Color("Licorice_300"))
                                .onTapGesture {
                                    self.viewRouter.currentView = "Tab3"
                                }
                            Text("Articles")
                                .frame(width: 73, height: 44)
                                .font(.custom("Roboto-Medium", size: 14))
                                .foregroundColor(self.viewRouter.currentView == "Tab4" ? Color("Blueberry_500") : Color("Licorice_300"))
                                .onTapGesture {
                                    self.viewRouter.currentView = "Tab4"
                                }
                            
                        }
                        .padding(.horizontal, 8.0)
                        
                    }
                    .frame(width: geometry.size.width, height: 44, alignment: .leading)
                }
                .frame(width: geometry.size.width, height: 132)
                .background(Color(#colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0))).shadow(radius: 2)
                
//                Spacer()
                
                if self.viewRouter.currentView == "Tab1" {
                    Tab1()
                    .frame(width: geometry.size.width, height: 680)
                } else if self.viewRouter.currentView == "Tab2" {
                    Tab2()
                    .frame(width: geometry.size.width, height: 680)
                } else if self.viewRouter.currentView == "Tab3" {
                    Tab3()
                    .frame(width: geometry.size.width, height: 680)
                } else if self.viewRouter.currentView == "Tab4" {
                    Tab4()
                    .frame(width: geometry.size.width, height: 680)
                }
                
                Spacer()
            }
            
        }.edgesIgnoringSafeArea(.top)
    }
}

struct CustomTab_Previews: PreviewProvider {
    static var previews: some View {
        CustomTab()
    }
}
