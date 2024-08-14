//
//  SantanderLoginContentView.swift
//  LayoutAndGeometry
//
//  Created by Eliezer Rodrigo Beltramin de Sant Ana on 14/08/24.
//

import SwiftUI

struct SantanderLoginContentView: View {
    
    var body: some View {
            
        VStack {
            
            ZStack {

                VStack {
                    Image(.logoSantander)
                        .resizable()
                        .scaledToFit()
                        .frame(height: 28)
                        .padding(.top, 4)
                    
                    HStack {
                        VStack(alignment: .leading, spacing: 4) {
                            Text("Olá eliezer")
                            Text("Ag 0060 Cc 02.***480-4")
                                .bold()
                        }
                        Spacer()
                    }
                    .padding()
                }
                
                VStack(alignment: .trailing) {
                    HStack(alignment: .top) {
                        Spacer()
                        Button(action: {
                            
                        }, label: {
                            Image(.iconsFunctionalIcLocation)
                                .resizable()
                                .renderingMode(.template)
                                .colorMultiply(.white)
                                .scaledToFit()
                                .frame(height: 30)
                                
                        })
                        
                    }
                    
                    Spacer()
                }
                .padding()
                
                
                
            }
            .frame(maxWidth: .infinity, maxHeight: 130)
            .background(.redDark1)
            .foregroundStyle(.white)
            .padding(.top, 50)
            .ignoresSafeArea()
            
            
            Spacer()
            
            VStack(spacing: 20) {
                Button(action: {}, label: {
                    Text("Acessar conta")
                        .frame(maxWidth: .infinity, maxHeight: 60)
                        .background(.redDark1)
                        .foregroundStyle(.white)
                        .clipShape(.rect(cornerRadius: 4))
                        .padding(.horizontal, 24)
                })
                
                Button(action: {}, label: {
                    Text("Acessar nova conta ou usuário")
                        .underline()
                })
                
            }
            .foregroundStyle(.redDark1)
            
            Divider()
            
            HStack {
                Button("ID Santander", systemImage: "lock") {
                    
                }
                
                Spacer()
                
                Button("Outras opções", systemImage: "ellipsis") {
                    
                }
            }
            .padding()
            .foregroundStyle(.redDark1)
        }
    }
}

#Preview {
    SantanderLoginContentView()
}
