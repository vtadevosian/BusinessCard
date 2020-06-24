//
//  ContentView.swift
//  BusinessCard
//
//  Created by Vahram Tadevosian on 6/24/20.
//  Copyright © 2020 Vahram Tadevosian. All rights reserved.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.58, green: 0.69, blue: 0.75).edgesIgnoringSafeArea(.all)
            VStack {
                Image(systemName: "person.fill")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 150, height: 150)
                    .foregroundColor(.white)
                    .clipShape(Circle())
                    .overlay(Circle().stroke(Color.white, lineWidth: 5))
                Text(" John Appleseed ")
                    .font(Font.custom("Satisfy", size: 40))
                    .bold()
                    .foregroundColor(.white)
                Text("Job title")
                    .foregroundColor(.white)
                    .font(.system(size: 15))
                Divider()
                InfoView(text: "+XXX XXX XXX XXX", imageName: "phone.fill")
                InfoView(text: "email@domain.com", imageName: "envelope.fill")
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView().previewDevice(PreviewDevice(rawValue: "iPhone 11"))
    }
}
