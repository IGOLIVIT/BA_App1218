//
//  ScheduleView.swift
//  BA_App1218
//
//  Created by IGOR on 08/02/2025.
//

import SwiftUI

struct ScheduleView: View {

    @StateObject var viewModel = ScheduleViewModel()
    
    var body: some View {

        ZStack {
            
            Color.black
                .ignoresSafeArea()
            
            VStack {
                
                Text("Schedule")
                    .foregroundColor(.white)
                    .font(.system(size: 30, weight: .bold))
                    .padding()
                
                ScrollView(.vertical, showsIndicators: false) {
                    
                    LazyVStack {
                        
                        ZStack {
                            
                            Image("graph")
                                .resizable()
                                .frame(maxWidth: .infinity)
                                .frame(height: 500)
                         
                            VStack {
                                
                                Button(action: {
                                    
                                    withAnimation(.spring()) {
                                        
                                        viewModel.isDetail = true
                                    }
                                    
                                }, label: {
                                    
                                    ZStack {
                                        
                                        Text(viewModel.selected_valut)
                                            .foregroundColor(.black)
                                            .font(.system(size: 18, weight: .regular))

                                        HStack {
                                            
                                            Spacer()
                                            
                                            ZStack {
                                                
                                                Circle()
                                                    .stroke(.green)
                                                    .frame(width: 20, height: 20)
                                                
                                                Circle()
                                                    .fill(.green)
                                                    .frame(width: 13, height: 13)
                                            }
                                        }
                                    }
                                    .padding()
                                    .background(RoundedRectangle(cornerRadius: 15).fill(.white).shadow(radius: 3))
                                })
                                .padding()
                                
                                Spacer()
                            }
                        }
                        
                        Image("perc")
                            .resizable()
                            .frame(maxWidth: .infinity)
                            .aspectRatio(contentMode: .fit)
                            .padding(.horizontal)
                        
                        HStack {
                            
                            Image(systemName: "creditcard")
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .medium))
                            
                            Spacer()
                            
                            Text("your balance: \(viewModel.money)$")
                                .foregroundColor(.black)
                                .font(.system(size: 15, weight: .medium))
                        }
                        .padding()
                        .background(RoundedRectangle(cornerRadius: 10).fill(.white))
                        .padding(.horizontal)
                        
                        HStack {
                            
                            Menu {
                                
                                ForEach(viewModel.amount_list, id: \.self) { index in
                                    
                                    Button(action: {
                                        
                                        viewModel.current_amount = index
                                        
                                    }, label: {
                                        
                                        HStack {
                                            
                                            Text("\(index)$")
                                            
                                            Spacer()
                                            
                                            if viewModel.current_amount == index {
                                                
                                                Image(systemName: "xmark")
                                                    .foregroundColor(.white)
                                            }
                                        }
                                    })
                                }
                                
                            } label: {
                                
                                HStack {
                                    
                                    Image(systemName: "creditcard")
                                        .foregroundColor(.black)
                                        .font(.system(size: 15, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(viewModel.current_amount)$")
                                        .foregroundColor(.black)
                                        .font(.system(size: 15, weight: .medium))
                                    
                                }
                                    .frame(height: 45)
                                    .padding(.horizontal)
                                    .background(RoundedRectangle(cornerRadius: 10).fill(.white))
                            }
                            
                            Menu {
                                
                                ForEach(viewModel.time_list, id: \.self) { index in
                                    
                                    Button(action: {
                                        
                                        viewModel.time = index
                                        
                                    }, label: {
                                        
                                        HStack {
                                            
                                            Text("\(index) sec")
                                            
                                            Spacer()
                                            
                                            if viewModel.time == index {
                                                
                                                Image(systemName: "xmark")
                                            }
                                        }
                                    })
                                }
                                
                            } label: {
                                
                                HStack {
                                    
                                    Image(systemName: "timer")
                                        .foregroundColor(.black)
                                        .font(.system(size: 15, weight: .medium))
                                    
                                    Spacer()
                                    
                                    Text("\(viewModel.time) sec.")
                                        .foregroundColor(.black)
                                        .font(.system(size: 15, weight: .medium))
                                    
                                }
                                    .frame(height: 45)
                                    .padding(.horizontal)
                                    .background(RoundedRectangle(cornerRadius: 10).fill(.white))
                            }
                        }
                        .padding(.horizontal)
                        
                        HStack {

                            Button(action: {
                                
                                if viewModel.time < 0 && viewModel.money < Int(viewModel.current_amount) ?? 0 && viewModel.current_amount.isEmpty {
                                    
                                    viewModel.resultText = "Not enough money"
                                    
                                } else {
                                    
                                    viewModel.timer_sys_start()
                                }
                                
                            }, label: {

                                    Text("SELL")
                                        .foregroundColor(.white)
                                        .font(.system(size: 15, weight: .medium))
                                        .frame(maxWidth: .infinity)
                                .padding()
                                .background(RoundedRectangle(cornerRadius: 10).fill(.red))
                            })
                                                        
                            Button(action: {
                                
                                if viewModel.time < 0 && viewModel.money < Int(viewModel.current_amount) ?? 0 && viewModel.current_amount.isEmpty {
                                    
                                    viewModel.resultText = "Not enough money"
                                    
                                } else {
                                    
                                    viewModel.timer_sys_start()
                                }
                                
                            }, label: {

                                    Text("BUY")
                                        .foregroundColor(.white)
                                        .font(.system(size: 15, weight: .medium))
                                .padding()
                                .frame(maxWidth: .infinity)
                                .background(RoundedRectangle(cornerRadius: 10).fill(.green))
                            })
                        }
                        .padding(.horizontal)
                        .opacity(viewModel.isRunned ? 0.5 : 1)
                    }
                }
                .frame(maxWidth: .infinity)
                .background(Color("bg3"))
            }
        }
        .onReceive(viewModel.timer_sys, perform: { _ in
            
            if viewModel.isRunned {
                
                if viewModel.time > 0 {
                    
                    viewModel.time -= 1
                    
                } else {
                    
                    viewModel.timer_sys_stop()
                }
            }
        })
        .disabled(viewModel.isRunned ? true : false)
        .overlay (
        
            ZStack {
                
                Color.black.opacity(0.4)
                    .ignoresSafeArea()
                
                VStack {
                    
                    Text("\(viewModel.resultText)")
                        .foregroundColor(.black)
                        .font(.system(size: 15, weight: .medium))
                        .padding(10)
                        .background(RoundedRectangle(cornerRadius: 5).fill(Color("blue")))
                }
            }
                .opacity(viewModel.resultText.isEmpty ? 0 : 1)
        )
        .sheet(isPresented: $viewModel.isDetail, content: {
            
            PairsView(viewModel: viewModel)
        })
    }
}

#Preview {
    ScheduleView()
}
