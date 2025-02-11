//
//  ContentView.swift
//  BA_App1218
//
//  Created by IGOR on 08/02/2025.
//

import SwiftUI

struct ContentView: View {
    
    @State var current_tab: Tab = Tab.Guides

    @AppStorage("status") var status: Bool = false
    
    init() {
        
        UITabBar.appearance().isHidden = true
    }
    
    var body: some View {
        
        ZStack {
            
            Color.white
                .ignoresSafeArea()
                        
            VStack(spacing: 0, content: {
            
                    TabView(selection: $current_tab, content: {

                        GuidesView()
                            .tag(Tab.Guides)
                        
                        TermsView()
                            .tag(Tab.Terms)
                        
                        ScheduleView()
                            .tag(Tab.Schedule)
                        
                        SettingsView()
                            .tag(Tab.Settings)
                        
                    })
                    
                    TabBar(selectedTab: $current_tab)
                })
                    .ignoresSafeArea(.all, edges: .bottom)


        }
    }
}

#Preview {
    ContentView()
}
