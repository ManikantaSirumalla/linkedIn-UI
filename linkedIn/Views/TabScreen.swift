//
//  TabScreen.swift
//  linkedIn
//
//  Created by Manikanta Sirumalla on 17/11/22.
//

import SwiftUI

struct TabScreen: View {
    var body: some View {
        TabView {
            HomeScreen()
                .tabItem {
                    Image(systemName: "house.fill")
                        Text("Home")
                }
            myNetworkScreen()
                .tabItem {
                    Image(systemName: "person.2.fill")
                        Text("MyNetwork")
                }
            PostView()
                .tabItem {
                    Image(systemName: "plus.app.fill")
                        Text("Post")
                }
            Text("Notifications")
                .tabItem {
                    Image(systemName: "bell.badge.fill")
                        Text("Notifications")
                }
            Text("Jobs")
                .tabItem {
                    Image(systemName: "briefcase.fill")
                        Text("Jobs")
                }
        }
    }
}

struct TabScreen_Previews: PreviewProvider {
    static var previews: some View {
        TabScreen()
    }
}
