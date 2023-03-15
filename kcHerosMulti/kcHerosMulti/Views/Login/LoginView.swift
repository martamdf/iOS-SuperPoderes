//
//  LoginView.swift
//  kcHerosMulti
//
//  Created by Marta Maquedano on 15/3/23.
//

import SwiftUI

struct LoginView: View {
    @State private var email = ""
    @State private var password = ""
    
    var body: some View {
        ZStack {
            Image(decorative: "backgroundLogin")
                .resizable()
                .opacity(1)
            
            Image(decorative: "")
                .resizable()
                .background(.black)
                .opacity(0.3)
            
            VStack{
                Image(decorative: "title")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 300)
                    .opacity(0.8)
                    .padding(.top, 170)
                
                Spacer()
                
                VStack{
                    
                    TextField("Email", text: $email)
                        .padding(10)
                        .background(.white)
                        .foregroundColor(.blue)
                        .cornerRadius(20)
                        .shadow(radius: 10, x:20, y:10)
                        //.autocapitalization(.none) //ios15
                        .textInputAutocapitalization(.none) //ios16
                    // .disbleAutocorrection(.true)
                        .autocorrectionDisabled()
                        .opacity(0.8)
                        .id(1)
                    
                    SecureField("Clave", text: $password)
                        .padding(10)
                        .background(.white)
                        .foregroundColor(.blue)
                        .cornerRadius(20)
                        .shadow(radius: 10, x:20, y:10)
                        //.autocapitalization(.none) //ios15
                        .textInputAutocapitalization(.none) //ios16
                    // .disbleAutocorrection(.true)
                        .autocorrectionDisabled()
                        .opacity(0.8)
                        .padding(.top) //sin fijar el valor, automáticamente se calcula en función del dispositivo para que se renderice de manera óptima
                        .id(2)
                    
                    //Booton
                    
                    Button {
                        
                    }label: {
                        Text("Entrar")
                            .font(.title)
                            .foregroundColor(.white)
                            .padding()
                            .frame(width: 300, height: 50)
                            .background(.red)
                            .cornerRadius(15)
                            .shadow(radius: 10, x:20, y:10)
                    }
                    .padding(.top, 50)
                    .opacity(0.7)
                    .id(3)
                    
                    
                }
                .padding([.leading, .trailing], 30)
                Spacer()
                
            }
        }
        .ignoresSafeArea()
    }
}

struct LoginView_Previews: PreviewProvider {
    static var previews: some View {
        LoginView()
            .environment(\.locale, .init(identifier: "es"))
    }
}
