//
//  TermDetail.swift
//  BA_App1218
//
//  Created by IGOR on 10/02/2025.
//

import SwiftUI

struct TermDetail: View {

    @StateObject var viewModel: TermsViewModel
    
    var body: some View {

        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack {
                
                HStack {
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isDetail = false
                        }
                        
                    }, label: {
                        
                        HStack {
                            
                            Image(systemName: "chevron.left")
                                .foregroundColor(.white)
                                .font(.system(size: 17, weight: .medium))
                         
                            Text("Back")
                                .foregroundColor(.white)
                                .font(.system(size: 16, weight: .regular))
                        }
                    })
                    
                    Spacer()
                    
                    Button(action: {
                        
                        withAnimation(.spring()) {
                            
                            viewModel.isDetail = false
                        }
                        
                    }, label: {
                        
                        Text("Done")
                            .foregroundColor(.white)
                            .font(.system(size: 16, weight: .regular))
                    })
                }
                .padding()
                
                Text("Terms")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .bold))
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(alignment: .leading, spacing: 8) {
                        
                        Text(viewModel.selectedTerm?.title ?? "")
                            .foregroundColor(.white)
                            .font(.system(size: 28, weight: .semibold))
                        
                        Text(viewModel.selectedTerm?.information ?? "")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .regular))

                    }
                    .padding()
                    .frame(maxWidth: .infinity)
                    .background(RoundedRectangle(cornerRadius: 15).fill(Color("bg2")))
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color("bg"))
            }
        }
    }
}

#Preview {
    TermDetail(viewModel: TermsViewModel())
}
