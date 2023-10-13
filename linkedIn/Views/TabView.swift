//
//  TabView.swift
//  linkedIn
//
//  Created by Manikanta Sirumalla on 16/11/22.
//

import SwiftUI

struct TabScreen: View {
    var body: some View {
        TabView{
            HomeScreen()
        }
      
    }
}

struct TabView_Previews: PreviewProvider {
    static var previews: some View {
        TabView()
    }
}
