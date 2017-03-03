//
//  ViewController.swift
//  saludoStarcraft
//
//  Created by Eduardo D De La Cruz Marr on 12/1/17.
//  Copyright © 2017 Eduardo D De La Cruz Marrero. All rights reserved.
//

import UIKit

class ViewController : UIViewController
{
    
    @IBOutlet var backgroundPhoto : UIImageView!
    @IBOutlet var welcomeLabel : UILabel!
    @IBOutlet var nameText : UITextField!
    @IBOutlet var humanButton : UIButton!
    @IBOutlet var protossButton : UIButton!
    @IBOutlet var zergButton : UIButton!
    @IBOutlet var raceSelectLabel : UILabel!
    @IBOutlet var messageLabel: UILabel!
    @IBOutlet var backButton: UIButton!
    @IBOutlet var logoSC: UIImageView!
    
    
    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning()
    {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func humanButtonPressed(_ sender : UIButton)
    {
        let name = nameText.text!
        backgroundPhoto.image = #imageLiteral(resourceName: "Raynor")
        logoSC.alpha = 0
        welcomeLabel.alpha = 0
        raceSelectLabel.alpha = 0
        nameText.alpha = 0
        humanButton.alpha = 0
        zergButton.alpha = 0
        protossButton.alpha = 0
        messageLabel.alpha = 1
        backButton.alpha = 1
        messageLabel.text = "Al fin llegan los refuerzos Marine \(name), vaya al bunker del sureste, BIENVENIDO A LA MAYOR BATALLA DE SU VIDA"
        
        let alert : UIAlertController = UIAlertController(title: "Marine, \(name)", message: "Has seleccionado TERRAN", preferredStyle: .alert)
        
        let okAction : UIAlertAction = UIAlertAction(title: "Entendido", style: .default, handler: nil)
        
        alert.addAction(okAction)
        
        present(alert, animated : true, completion : nil)
    }
    
    @IBAction func protossButtonPressed(_ sender : UIButton)
    {
        let name = nameText.text!
        backgroundPhoto.image = #imageLiteral(resourceName: "Artanis 2")
        logoSC.alpha = 0
        welcomeLabel.alpha = 0
        raceSelectLabel.alpha = 0
        nameText.alpha = 0
        humanButton.alpha = 0
        zergButton.alpha = 0
        protossButton.alpha = 0
        messageLabel.alpha = 1
        backButton.alpha = 1
        messageLabel.text = "Entaro Tassadar Ejecutor \(name), debemos unir fuerzas para recuperar AIUR y destruir a Amon"
        
        let alert : UIAlertController = UIAlertController(title: "Ejecutor, \(name)", message: "Has seleccionado PROTOSS", preferredStyle: .alert)
        
        let okAction : UIAlertAction = UIAlertAction(title: "Entendido", style: .default, handler: nil)
        
        alert.addAction(okAction)
        
        present(alert, animated : true, completion : nil)
    }
    
    @IBAction func zergButtonPressed(_ sender : UIButton)
    {
        let name = nameText.text!
        backgroundPhoto.image = #imageLiteral(resourceName: "Kerrigan")
        logoSC.alpha = 0
        welcomeLabel.alpha = 0
        raceSelectLabel.alpha = 0
        nameText.alpha = 0
        humanButton.alpha = 0
        zergButton.alpha = 0
        protossButton.alpha = 0
        messageLabel.alpha = 1
        backButton.alpha = 1
        messageLabel.text = "Bienvenido a la vida cria \(name), hagamos que el enjambre sea indestructible y apoderemonos del universo"
        
        let alert : UIAlertController = UIAlertController(title: "Cerebrado, \(name)", message: "Has seleccionado ZERG", preferredStyle: .alert)
        
        let okAction : UIAlertAction = UIAlertAction(title: "Entendido", style: .default, handler: nil)
        
        alert.addAction(okAction)
        
        present(alert, animated : true, completion : nil)
    }
    
    @IBAction func backButtonPressed(_ sender: UIButton)
    {
        backgroundPhoto.image = nil
        logoSC.alpha = 1
        welcomeLabel.alpha = 1
        raceSelectLabel.alpha = 1
        nameText.alpha = 1
        humanButton.alpha = 1
        zergButton.alpha = 1
        protossButton.alpha = 1
        messageLabel.alpha = 0
        backButton.alpha = 0
        messageLabel.text = ""
        nameText.text = ""
    }
}
