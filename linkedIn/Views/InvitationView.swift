//
//  InvitationView.swift
//  linkedIn
//
//  Created by Manikanta Sirumalla on 16/11/22.
//

import SwiftUI

let sampleData = NetworkModel(id: 1, name: "Manikanta Sirumalla", position: "iOS developer @ Apple.inc", mutual: 12, image: "01")

struct InvitationView: View {
    var Data : NetworkModel
    var body: some View {
        HStack(alignment: .center, spacing: 10){
            Image(Data.image)
                .resizable()
                .aspectRatio( contentMode: .fit)
                .clipShape(Circle())
                .frame(width: 70, height: 70,alignment: .leading)
               
            VStack(alignment: .leading) {
                Text(Data.name)
                    .font(.body)
                Text(Data.position)
                    .font(.subheadline)
                    .foregroundColor(.gray)
                Text("\(Data.mutual) mutual Connections")
                    .font(.caption)
                    .foregroundColor(.gray)
                
            }.frame(width: 190, height: 20, alignment: .leading)
            
            HStack{
                
                Image(systemName: "multiply.circle")
                    .font(.system(size: 35))
                    .foregroundColor(.red.opacity(0.8))
                
                Image(systemName: "checkmark.circle")
                    .font(.system(size: 35))
                    .foregroundColor(.green.opacity(0.8))
            }.padding(.horizontal)
        }.frame(width: .infinity, height: .infinity)
            .padding(.leading)
    }
}

struct InvitationView_Previews: PreviewProvider {
    static var previews: some View {
        InvitationView(Data: sampleData)
    }
}
