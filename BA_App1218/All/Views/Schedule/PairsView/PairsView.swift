//
//  PairsView.swift
//  BA_App1218
//
//  Created by IGOR on 10/02/2025.
//

import SwiftUI

struct PairsView: View {

    @StateObject var viewModel: ScheduleViewModel
    
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
                
                Text("exchange rate")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .bold))
                    .padding(.horizontal)
                    .frame(maxWidth: .infinity, alignment: .leading)
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    VStack(alignment: .leading, spacing: 8) {
                        
                        ForEach(viewModel.valuts, id: \.self) { index in
                        
                            Button(action: {
                                
                                viewModel.selected_valut = index
                                
                            }, label: {
                                
                                HStack {
                                    
                                    Text(index)
                                        .foregroundColor(.black)
                                        .font(.system(size: 18, weight: .regular))
                                    
                                    Spacer()
                                    
                                    Text("0.\(String(format: "%.f", Double(.random(in: 1...99999))))")
                                        .foregroundColor(.gray)
                                        .font(.system(size: 12, weight: .regular))
                                    
                                    ZStack {
                                        
                                        Circle()
                                            .stroke(.green)
                                            .frame(width: 20, height: 20)
                                        
                                        Circle()
                                            .fill(.green)
                                            .frame(width: 13, height: 13)
                                            .opacity(viewModel.selected_valut == index ? 1 : 0)
                                    }
                                }
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 10).fill(.white))
                            })
                        }
                    }
                }
                .padding()
                .frame(maxWidth: .infinity)
                .background(Color("bg3"))
                
            }
        }
    }
}

#Preview {
    PairsView(viewModel: ScheduleViewModel())
}
