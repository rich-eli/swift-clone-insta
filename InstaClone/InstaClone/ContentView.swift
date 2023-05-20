//
//  ContentView.swift
//  InstaClone
//
//  Created by EL on 12/05/23.
//

import SwiftUI
import struct InstaClone.HomeStories
import struct InstaClone.PostLabels
struct ContentView: View {
    var body: some View {
        VStack {
            HeaderView()
            
            
            
            ScrollView(.vertical,showsIndicators: false){
                HomeStories()
                
                Divider()
                
                PostView()
                PostView()
                PostView()
                PostView()
                PostView()
                
                
            }
            
            VStack(spacing : 0){
                Divider()
                HStack{
                    
                    Image(systemName: "house")
                    Spacer()
                    Image(systemName: "magnifyingglass")
                    Spacer()
                    Image(systemName: "plus.app")
                    Spacer()
                    Image(systemName: "play.square")
                    Spacer()
                    Image(systemName: "person.crop.circle")
                    
                    
                }
                .font(.system(size: 20))
                .padding(.horizontal,24)
                .padding(.top,12)
            }
            
            
            
            
            Spacer()
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}



struct StoryView: View {
    
    var image:String
    var name : String
    
    public init(image: String, name: String) {
        self.image = image
        self.name = name
    }
    
    var body: some View {
        VStack{
            VStack{
                Image(image)
                    .resizable()
                    .frame(width: 60,height: 60)
                    .cornerRadius(60)
                    .overlay(
                        Circle()
                            .stroke(LinearGradient(colors: [.blue,.purple,.red,.pink,.yellow,.orange], startPoint: .topLeading, endPoint: .bottomTrailing)
                                    ,lineWidth: 2.5
                                   )
                            .frame(width: 68,height: 68)
                    )
            }
            .frame(width: 70,height: 70)
            Text(name)
                .font(.caption)
        }
    }
}

struct HomeStories: View {
    var body: some View {
        ScrollView(.horizontal,showsIndicators: false){
            HStack(spacing:16){
                StoryView(image: "person_1", name: "linching")
                StoryView(image: "person_1", name: "linching")
                StoryView(image: "person_1", name: "linching")
                StoryView(image: "person_1", name: "linching")
                StoryView(image: "person_1", name: "linching")
                StoryView(image: "person_1", name: "linching")
            }
            .padding(.horizontal,8)
        }
        .padding(.vertical,12)
    }
}

struct PostHeaderView: View {
    var body: some View {
        HStack{
            HStack{
                Image("person_1")
                    .resizable()
                    .frame(width: 40,height: 40)
                    .cornerRadius(40)
                Text("linching")
                    .font(.caption)
                    .fontWeight(.bold)
            }
            Spacer()
            
            Image(systemName: "ellipsis")
        }
        .padding(.vertical,8)
        .padding(.horizontal,12)
    }
}

struct PostLabels: View {
    var body: some View {
        VStack{
            Image("post_1")
                .resizable()
                .frame(width: .infinity,height: 400)
//                .aspectRatio(contentMode: .fit)
            HStack{
                HStack{
                    Image(systemName: "heart")
                    Image(systemName: "message")
                    Image(systemName: "paperplane")
                }
                Spacer()
                
                Image(systemName: "bookmark")
            }
            .font(.system(size: 24))
            .padding(.horizontal,12)
            .padding(.vertical,8)
        }
    }
}

struct PostDescriptionView: View {
    var body: some View {
        VStack(alignment: .leading){
            Text("7770 likes")
            Text("User desc")
            
            HStack{
                HStack{
                    Text("View all 10 comments")
                        .foregroundColor(.secondary)
                    
                }
                Spacer()
            }
            
            
        }
        .frame(width: .infinity)
        .padding(.horizontal,12)
    }
}

struct PostView: View {
    var body: some View {
        VStack(alignment: .leading, spacing : 0){
            PostHeaderView()
            
            PostLabels()
            
            PostDescriptionView()
        }
    }
}
