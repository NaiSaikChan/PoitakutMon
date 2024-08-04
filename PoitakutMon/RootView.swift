//
//  RootView.swift
//  PoitakutMon
//
//  Created by Silarcara on 4/8/24.
//

import SwiftUI

struct RootView: View {
    
    @State var selectedTab: Tabs = .Vinya
    
    var body: some View {
        
        
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
        
        Spacer()
        CustomTabBar(selectedTab: $selectedTab)
    }
}


#Preview {
    RootView()
}
