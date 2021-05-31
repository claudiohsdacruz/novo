//
//  PopUpViewController.swift
//  Pessoas
//
//  Created by Claudio Henrique Soares da Cruz on 31/05/21.
//

import UIKit

class PopUpViewController: UIViewController {

    @IBOutlet weak var tfPalavra: UITextField!
    
    var lista: Array<Pessoa>!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    /*
    @IBAction func showAlertButtonTapped(_ sender: UIButton) {

            // create the alert
            let alert = UIAlertController(title: "Notice", message: "Lauching this missile will destroy the entire universe. Is this what you intended to do?", preferredStyle: UIAlertController.Style.alert)

            // add the actions (buttons)
            alert.addAction(UIAlertAction(title: "Remind Me Tomorrow", style: UIAlertAction.Style.default, handler: nil))
            alert.addAction(UIAlertAction(title: "Cancel", style: UIAlertAction.Style.cancel, handler: nil))
            alert.addAction(UIAlertAction(title: "Launch the Missile", style: UIAlertAction.Style.destructive, handler: nil))

            // show the alert
            self.present(alert, animated: true, completion: nil)
    }
     */
    
    @IBAction func exibirPopUp(_ sender: Any) {
        let menu = UIAlertController(title: "Filtro", message: "Filtra pelo nome da pessoa", preferredStyle: UIAlertController.Style.actionSheet)
        
        let input = UIAlertController(title: "Filtro", message: "Filtrar pelo nome da pessoa", preferredStyle: UIAlertController.Style.alert)
        input.addTextField { textField in
            textField.placeholder = "Informe uma mensagem"
        }
        
        input.addAction(UIAlertAction(title: "Ok", style: UIAlertAction.Style.default, handler: { alertAction in
            print("Menu com opções - 1")
        }))
        input.addAction(UIAlertAction(title: "Cancelar", style: UIAlertAction.Style.default, handler: { alertAction in
            print("Menu com opções - 2")
        }))
        input.addAction(UIAlertAction(title: "Exibir todas", style: UIAlertAction.Style.default, handler: { alertAction in
            print("Menu com opções - 3")
        }))
        
        self.present(menu, animated: true, completion: nil)
        
    }

    
}
