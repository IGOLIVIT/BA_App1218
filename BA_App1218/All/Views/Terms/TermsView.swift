//
//  TermsView.swift
//  BA_App1218
//
//  Created by IGOR on 08/02/2025.
//

import SwiftUI

struct TermsView: View {

    @StateObject var viewModel = TermsViewModel()
    
    var body: some View {

        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack {
                
                Text("Terms")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .bold))
                    .padding()
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    LazyVStack {
                        
                        ForEach(viewModel.terms, id: \.self) { index in
                        
                            Button(action: {
                                
                                viewModel.selectedTerm = index
                                
                                withAnimation(.spring()) {
                                    
                                    viewModel.isDetail = true
                                }
                                
                            }, label: {
                                
                                VStack(spacing: 12) {
                                    
                                    Image(index.photo)
                                        .resizable()
                                        .aspectRatio(contentMode: .fit)
                                        .frame(maxWidth: .infinity)
                                    
                                    Text(index.title)
                                        .foregroundColor(.white)
                                        .font(.system(size: 16, weight: .regular))
                                }
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(RoundedRectangle(cornerRadius: 15).fill(.black))
                            })
                        }
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color("bg"))
            }
        }
        .sheet(isPresented: $viewModel.isDetail, content: {
            
            TermDetail(viewModel: viewModel)
        })
    }
}

#Preview {
    TermsView()
}
