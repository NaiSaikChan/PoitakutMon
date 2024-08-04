//
//  CustomTabBar.swift
//  PoitakutMon
//
//  Created by Silarcara on 4/8/24.
//

import SwiftUI

enum Tabs: Int {
    case Vinya = 0
    case Sutta = 1
    case Abhi = 2
}

struct CustomTabBar: View {
    
    @Binding var selectedTab : Tabs
    
    var body: some View {
        
        HStack(alignment: .center) {
            
            Button(action: {
                // Switch to Vinyana
                selectedTab = .Vinya
            }, label: {
                
                TabBarButton(buttonText: "ဝိနယ်", imgName: "book.fill", isActive: selectedTab == .Vinya)
                
            })
            
            Button(action: {
                // Switch to Sutta
                selectedTab = .Sutta
            }, label: {
                
                TabBarButton(buttonText: "သုတ်", imgName: "magazine", isActive: selectedTab == .Sutta)
                
            })
            
            Button(action: {
                // Switch to Abidhamma
                selectedTab = .Abhi
            }, label: {
                
                TabBarButton(buttonText: "အဘိဓရ်", imgName: "book.closed", isActive: selectedTab == .Abhi)
                
            })
        }
        .frame(height: 60)
    }
}

#Preview {
    CustomTabBar(selectedTab: .constant(.Vinya))
}
