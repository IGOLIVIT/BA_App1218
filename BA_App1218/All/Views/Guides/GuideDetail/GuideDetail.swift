//
//  GuideDetail.swift
//  BA_App1218
//
//  Created by IGOR on 10/02/2025.
//

import SwiftUI

struct GuideDetail: View {

    @StateObject var viewModel: GuidesViewModel
    
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
                
                Text("Guides")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .bold))
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(alignment: .leading, spacing: 8) {
                        
                        Text(viewModel.selectedGuide?.title ?? "")
                            .foregroundColor(.white)
                            .font(.system(size: 28, weight: .semibold))
                        
                        Text(viewModel.selectedGuide?.information ?? "")
                            .foregroundColor(.white)
                            .font(.system(size: 18, weight: .regular))
                        
                        Image(viewModel.selectedGuide?.photo ?? "")
                            .resizable()
                            .aspectRatio(contentMode: .fit)
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
    GuideDetail(viewModel: GuidesViewModel())
}
