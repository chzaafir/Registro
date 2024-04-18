//
//  RegistroView.swift
//  Registro
//
//  Created by Zaafir on 18/4/24.
//

import SwiftUI

struct RegistroView: View {
    @StateObject var store: RegistroViewModel = RegistroViewModel()
    var body: some View {
        VStack{
            VStack{
            
            TextField("Usuario:", text: $store.nombre).padding(15).background(.blue.opacity(0.5)).font(.title).foregroundColor(.black).cornerRadius(20).padding(.horizontal, 50)
            SecureField("Contraseña:", text: $store.contraseña).padding(15).background(.blue.opacity(0.5)).font(.title).foregroundColor(.black).cornerRadius(20).padding(.horizontal, 50)
            
            Button(action: {
                store.Registrar(nombre: store.nombre, contraseña: store.contraseña)
            }){
                Text("Registrar").foregroundColor(.blue).font(.title)
                   }
                Button(action: {
                    store.Registrar(nombre: store.nombre, contraseña: store.contraseña)
                }){
                    Text("Iniciar Sesion").foregroundColor(.blue).font(.title)
                       }
            }
        }
    }
}

struct RegistroView_Previews: PreviewProvider {
    static var previews: some View {
        RegistroView()
    }
}
