//
//  SettingsView.swift
//  BA_App1218
//
//  Created by IGOR on 08/02/2025.
//

import SwiftUI
import StoreKit

struct SettingsView: View {
    var body: some View {

        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack {
                                
                Text("Settings")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .bold))
                    .padding(.horizontal)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(alignment: .leading, spacing: 8) {
                        
                        Button(action: {
                            
                            guard let url = URL(string: "https://www.termsfeed.com/live/fbe08d76-1c0c-48bc-8709-58f32740bebb") else { return }
                            
                            UIApplication.shared.open(url)
                            
                        }, label: {
                            
                            HStack {
                                
                               Image(systemName: "doc.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 17, weight: .regular))
                                    .padding(.horizontal)
                                
                                Text("Usage Policy")
                                    .foregroundColor(.white)
                                    .font(.system(size: 17, weight: .regular))
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 18, weight: .regular))
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                        })
                        
                        Button(action: {
                            
                            SKStoreReviewController.requestReview()
                            
                        }, label: {
                            
                            HStack {
                                
                               Image(systemName: "star.fill")
                                    .foregroundColor(.white)
                                    .font(.system(size: 17, weight: .regular))
                                    .padding(.horizontal)
                                
                                Text("Rate us")
                                    .foregroundColor(.white)
                                    .font(.system(size: 17, weight: .regular))
                                
                                Spacer()
                                
                                Image(systemName: "chevron.right")
                                    .foregroundColor(.gray)
                                    .font(.system(size: 18, weight: .regular))
                            }
                            .padding()
                            .frame(maxWidth: .infinity)
                            .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                        })
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color("bg"))
            }
        }
    }
}

#Preview {
    SettingsView()
}
