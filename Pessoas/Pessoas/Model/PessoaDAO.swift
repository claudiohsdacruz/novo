//
//  PessoaDAO.swift
//  Pessoas
//
//  Created by Claudio Henrique Soares da Cruz on 30/05/21.
//

import Foundation
import UIKit
import CoreData

class PessoaDAO {
    
    var delegate: AppDelegate
    
    init(){
        self.delegate = (UIApplication.shared.delegate as! AppDelegate)
    }
    
    func add(nome: String, idade: Int16) {
        let pessoa = Pessoa(context: self.delegate.persistentContainer.viewContext)
        pessoa.nome = nome
        pessoa.idade = idade
        self.delegate.saveContext()
        
    }
    
    func get() -> Array<Pessoa> {
        let requisicao : NSFetchRequest<Pessoa> = Pessoa.fetchRequest()
        do {
            let pessoas = try self.delegate.persistentContainer.viewContext.fetch(requisicao)
            return pessoas
        } catch  {
            return Array<Pessoa>()
        }
    }
    
    func del(pessoa : Pessoa) {
        self.delegate.persistentContainer.viewContext.delete(pessoa)
        self.delegate.saveContext()
    }
    
    func update () {
        self.delegate.saveContext()
    }
    
    func get(palavra : String) -> Array<Pessoa> {
        let requisicao : NSFetchRequest<Pessoa> = Pessoa.fetchRequest()
        requisicao.predicate = NSPredicate(format: "ANY nome like '*\(palavra)*'", argumentArray: nil)
        do {
            let pessoas = try self.delegate.persistentContainer.viewContext.fetch(requisicao)
            return pessoas
        } catch  {
            return Array<Pessoa>()
        }
    }
    //tentando
    
}
