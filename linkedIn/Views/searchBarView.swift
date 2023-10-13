//
//  searchBarView.swift
//  linkedIn
//
//  Created by Manikanta Sirumalla on 16/11/22.
//

import SwiftUI

struct searchBarView: View {
    var body: some View {
        HStack(alignment: .center){
            Image("demo")
                .resizable()
                .aspectRatio(contentMode: .fit)
                .edgesIgnoringSafeArea(.all)
                .clipShape(Circle())
                .frame(width: 50, height: 50)
            //SEarch bar
            
            RoundedRectangle(cornerRadius: 10)
                .foregroundColor(.gray.opacity(0.2))
                .frame(width: 270, height: 30)
                .overlay(
                    HStack{
                        Image(systemName: "magnifyingglass")
                        Text("Search")
                            .font(.body)
                            .multilineTextAlignment(.leading)
                            .foregroundColor(.gray)
                    }.padding()
                    
                )
            //message box
            Image(systemName: "ellipses.bubble.fill")
                .resizable()
                .foregroundColor(.gray)
                .aspectRatio( contentMode: .fit)
                .frame(width: 30, height: 30)
            
        }.padding(.top  )
    }
}

struct searchBarView_Previews: PreviewProvider {
    static var previews: some View {
        searchBarView()
    }
}
