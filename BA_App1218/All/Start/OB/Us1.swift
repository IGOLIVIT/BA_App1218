//
//  Us1.swift
//  BA_App1218
//
//  Created by IGOR on 23/02/2025.
//

import SwiftUI

struct Us1: View {
    var body: some View {

        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Image("U1")
                        .resizable()
                        .ignoresSafeArea()
                 
                    VStack {
                        
                        Text("Control your own finances")
                            .foregroundColor(.white)
                            .font(.system(size: 32, weight: .bold))
                            .padding()
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                        
                        NavigationLink(destination: {
                            
                            Us2()
                                .navigationBarBackButtonHidden()
                            
                        }, label: {
                            
                            Text("Next")
                                .foregroundColor(.white)
                                .font(.system(size: 15, weight: .regular))
                                .frame(maxWidth: .infinity)
                                .frame(height: 50)
                                .background(RoundedRectangle(cornerRadius: 10).fill(Color("prim")))
                                .padding()
                        })
                    }
                }
            }
        }
    }
}

#Preview {
    Us1()
}
