//
//  ViewModel.swift
//  Registro
//
//  Created by Zaafir on 18/4/24.
//

import Foundation

class RegistroViewModel: ObservableObject {
    @Published var nombre: String = ""
    @Published var contraseña: String = ""
    
    
    func Registrar (nombre:String, contraseña:String){
        
        let modelo = User(usuario: nombre, contraseña: contraseña)
        
        print(modelo.usuario)
        print(modelo.contraseña)

    }
}
