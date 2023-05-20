//
//  HeaderView.swift
//  InstaClone
//
//  Created by EL on 13/05/23.
//

import SwiftUI

struct HeaderView: View {
    var body: some View {
        HStack{
            Image("logo")
                .resizable()
                .frame(width:120,height:48)
            Image(systemName: "chevron.down")
                .resizable()
                .frame(width:10,height:5)
            
            Spacer()
            HStack{
                Image(systemName: "heart")
                    .padding(.trailing,4)
                Image(systemName: "paperplane")
                
                
            }
            .font(.system(size: 24))
        }
        .padding(.vertical, 16)
        .padding(.horizontal,8)
    }
}

struct HeaderView_Previews: PreviewProvider {
    static var previews: some View {
        HeaderView()
    }
}
