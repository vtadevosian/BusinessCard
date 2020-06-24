//
//  InfoView.swift
//  BusinessCard
//
//  Created by Vahram Tadevosian on 6/24/20.
//  Copyright © 2020 Vahram Tadevosian. All rights reserved.
//

import SwiftUI

struct InfoView: View {
        
        let text: String
        let imageName: String
        
        var body: some View {
                RoundedRectangle(cornerRadius: 20)
                        .frame(height: 50)
                        .foregroundColor(.white)
                        .overlay(HStack {
                                Image(systemName: imageName)
                                        .foregroundColor(Color(red: 0.33, green: 0.36, blue: 0.41))
                                Text(text)
                                        .foregroundColor(Color(red: 0.33, green: 0.36, blue: 0.41))
                        })
                        .padding(.all)
        }
}

struct InfoView_Previews: PreviewProvider {
    static var previews: some View {
        InfoView(text: "Info Text", imageName: "info.circle.fill")
            .previewLayout(.sizeThatFits)
    }
}
