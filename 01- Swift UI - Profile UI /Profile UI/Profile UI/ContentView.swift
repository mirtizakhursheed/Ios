//
//  ContentView.swift
//  Profile UI
//
//  Created by Muhammad Irtiza Khursheed on 04/08/2025.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack {
            Image("background").resizable()
                .edgesIgnoringSafeArea(.all)
            
            VStack(alignment: .center) {
                Spacer()
                ProfileImageAndNameView()
                SocialMediaView()
                Spacer()
                FollowTitleView()
                FollowDetailsView()
                AboutView()
               
            }.padding()
                
        }
    
    }
}

//    ProfileImageAndNameView
// ------------------------------------------------
struct ProfileImageAndNameView: View {
    
    var body: some View {
        VStack(alignment: .center,
        spacing: 20) {
            Image("myImage").resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180,
                       alignment: .top)
                .clipShape(Circle())
                .shadow(color: .pink, radius:5,x: 5 ,y: 5)
            
            Text("Your Name")
                .font(.system(.largeTitle))
                .fontWeight(.bold)
                .foregroundColor(.white)
                .shadow(radius: 5)
            
            Text("iOS | Front End Developer")
                .font(.body)
                .foregroundColor(.white)
        }
        
    }
}

//    SocialMediaView
// ------------------------------------------------
struct SocialMediaView: View {
    
    var body: some View {
        HStack(spacing: 40) {
            Image(systemName: "heart.circle").resizable()
                .aspectRatio(contentMode: .fit)
            Image(systemName: "network").resizable()
                .aspectRatio(contentMode: .fit)
            Image(systemName: "message.circle").resizable()
                .aspectRatio(contentMode: .fit)
            Image(systemName: "phone.circle").resizable()
                .aspectRatio(contentMode: .fit)
            
        }
        .foregroundColor(.white)
        .frame(width: 250, height: 50 , alignment: .center)
        .shadow(color: .pink,  radius: 5, y: 5)
    }
}

//    FollowTitleView
// ------------------------------------------------
struct FollowTitleView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 30) {
            RoundedRectangle(cornerRadius: 120)
                .frame(width: 200, height: 50, alignment: .center)
                .foregroundColor(.white)
                .shadow(color: .pink,  radius: 8, y: 8)
                .overlay(
                    Text("Follow")
                        .fontWeight(.bold)
                        .foregroundColor(.pink)
                        .font(.system(size: 30))
                )
        }
    }
}

//    FollowDetailsView
// ------------------------------------------------
struct FollowDetailsView: View {
    var body: some View {
        HStack(alignment: .center, spacing: 60) {
            FollowDetailsSubView(title :"222", description:  "Appreciation")
            
            FollowDetailsSubView(title :"800", description:  "Followers")
            
            FollowDetailsSubView(title :"231", description:  "Following")
        }
    }
}

//    FollowDetailsSubView
// ------------------------------------------------
struct FollowDetailsSubView: View {
    var title: String
    var description: String

        
    init(title: String, description: String) {
         self.title = title
         self.description = description
    }
    
    var body: some View {
        VStack(alignment: .center) {
            Text(title)
                .foregroundColor(.pink)
                .font(.title)
            
            Text(description)
                .foregroundColor(.gray)
                .font(.caption)
        }
    }
}

//    AboutView
// -----------------------------------------------
struct AboutView: View {
    var body: some View {
        Text("About You")
            .foregroundColor(.black)
            .font(.largeTitle)
            .padding()
        
        Text("I'm an Ios Developer. Let's deep deeper and create some more exciting projects.")
            .foregroundColor(.black)
            .font(.body)
            .multilineTextAlignment(.center)
    }
}

#Preview {
    ContentView()
}
