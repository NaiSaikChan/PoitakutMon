//
//  TabBarButton.swift
//  PoitakutMon
//
//  Created by Silarcara on 4/8/24.
//

import SwiftUI

struct TabBarButton: View {
    
    var buttonText: String
    var imgName: String
    var isActive: Bool
    
    var body: some View {
        GeometryReader { geo in
            if isActive {
                Rectangle()
                    .foregroundColor(.blue)
                    .frame(width: geo.size.width/2, height: 4)
                    .padding(.leading, geo.size.width/4)
            }
            
            VStack(alignment: .center,spacing: 4){
                Image(systemName: imgName)
                    .resizable()
                    .foregroundColor(Color.gray)
                    .scaledToFit()
                    .frame(width: 30, height: 30)
                Text(buttonText)
                    .font(.custom("Pyidaungsu", size: 14))
                    .fontWeight(.regular)
                    .foregroundColor(Color.black)
                    .multilineTextAlignment(.center)
            }
            .frame(width: geo.size.width, height: geo.size.height)
        }
    }
}

#Preview {
    TabBarButton(buttonText: "Vinya", imgName: "book.fill", isActive: true)
}
