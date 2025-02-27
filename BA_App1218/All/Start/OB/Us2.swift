//
//  Us2.swift
//  BA_App1218
//
//  Created by IGOR on 23/02/2025.
//

import SwiftUI
import StoreKit

struct Us2: View {
    
    @AppStorage("status") var status: Bool = false
    
    var body: some View {

        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack {
                
                ZStack {
                    
                    Image("rev")
                        .resizable()
                        .ignoresSafeArea()
                 
                    VStack {
                        
                        Text("The best reviews are only here")
                            .foregroundColor(.white)
                            .font(.system(size: 32, weight: .bold))
                            .padding()
                            .multilineTextAlignment(.center)
                        
                        Spacer()
                        
                        Button(action: {
                            
                            status = true
                            
                        }, label: {
                            
                            Text("Continue")
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
        .onAppear {
            
            SKStoreReviewController.requestReview()
        }
    }
}

#Preview {
    Us2()
}
