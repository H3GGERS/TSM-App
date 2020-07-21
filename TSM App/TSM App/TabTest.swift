//
//  TabTest.swift
//  TSM App
//
//  Created by Kyle Hegge on 7/21/20.
//  Copyright © 2020 Kyle Hegge. All rights reserved.
//

import SwiftUI

struct TabTest: View {
    var body: some View {
        TabView {
            Tab1().tabItem {
                Image(systemName: "house")
                Text("Home")
            }
            Tab2().tabItem {
                Image(systemName: "rectangle.3.offgrid")
                Text("Feed")
            }
            Tab3().tabItem {
                Image(systemName: "photo")
                Text("Gallery")
            }
            Tab4().tabItem {
                Image(systemName: "person")
                Text("Profile")
            }
        }
     
    }
}

struct TabTest_Previews: PreviewProvider {
    static var previews: some View {
        TabTest()
    }
}
