//
//  ProfileAndPostView.swift
//  linkedIn
//
//  Created by Manikanta Sirumalla on 16/11/22.
//

import SwiftUI

struct ProfileAndPostView: View {
    var body: some View {
        VStack(alignment: .leading){
            searchBarView()
            Divider()
            HStack{
                Image(systemName: "square.and.pencil")
                Text("Share a post")
                    
            }.padding(.horizontal)
            Divider()
            HStack {
                Image(systemName: "photo")
                    .foregroundColor(.blue)
                Text("photo")
                Spacer()
                Image(systemName: "video.fill")
                    .foregroundColor(.green)
                Text("video")
                Spacer()
                Image(systemName: "calendar")
                    .foregroundColor(.orange)
                Text("Calendar")
            }.padding(.horizontal)
            
        }
    }
}

struct ProfileAndPostView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileAndPostView()
    }
}
