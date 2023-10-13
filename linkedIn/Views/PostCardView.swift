//
//  PostCardView.swift
//  linkedIn
//
//  Created by Manikanta Sirumalla on 16/11/22.
//

import SwiftUI

let samplePost = PostData(id: 1, Image: "03", title: "Manikanta Sirumalla", followers: 100, profileImage: "1")

struct PostCardView: View {
    var  data: PostData
    var body: some View {
        VStack(alignment: .leading) {
            Rectangle()
                .fill(.gray.opacity(0.4))
                .frame(width: .infinity, height: 6)
                .ignoresSafeArea(.all)
            HStack(alignment: .center) {
                Image(data.profileImage)
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .clipShape(Circle())
                    .frame(width: 70, height: 70,alignment: .leading)
                    .shadow(radius: 5)
                VStack(alignment: .leading){
                    Text(data.title)
                        .font(.body)
                        .foregroundColor(.black)
                    
                    Text("\(data.followers) followers")
                        .font(.subheadline)
                        .foregroundColor(.gray)
                    
                    Text("8m")
                        .font(.caption)
                        .foregroundColor(.gray)
                }
                    Spacer()
                    Image(systemName: "ellipsis")
                    
            }.padding(.horizontal)
            
            Text("hey! how are you guys!")
            Image(data.Image)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: .infinity, height: .infinity, alignment: .center)
           
            HStack{
                Spacer()
                VStack{
                    Image(systemName: "hand.thumbsup" )
                    Text("Like")
                        .foregroundColor(.gray)
                        .font(.subheadline)
                    }
                Spacer()
                VStack{
                    Image(systemName: "text.bubble" )
                    Text("Comment")
                        .foregroundColor(.gray)
                        .font(.subheadline)
                    }
                Spacer()
                VStack{
                    Image(systemName: "arrow.turn.up.right" )
                    Text("Share")
                        .foregroundColor(.gray)
                        .font(.subheadline)
                    }
                Spacer()
                VStack{
                    Image(systemName: "paperplane.fill" )
                    Text("Send")
                        .foregroundColor(.gray)
                        .font(.subheadline)
                    }
                Spacer()
                
            }
            Divider()
            
        }.padding(.horizontal)
            
        }
       
    }


struct PostCardView_Previews: PreviewProvider {
    static var previews: some View {
        PostCardView(data: samplePost)
    }
}
