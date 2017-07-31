//
//  MainMenuViewController.swift
//  Vive Diabetes
//
//  Created by Admin on 20/07/17.
//  Copyright © 2017 Admin. All rights reserved.
//

import UIKit

class MainMenuViewController: UIViewController, UICollectionViewDelegateFlowLayout, UICollectionViewDataSource {

    @IBOutlet weak var menuButton: UIBarButtonItem!
    @IBOutlet weak var collectionView: UICollectionView!
    
    var imagesArray = Array<UIImage>()
    var textsArrays = Array<String>()
    let appDelegate = UIApplication.shared.delegate as! AppDelegate
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let paths = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true)
        let realPath = paths.first!
        let flag = NSKeyedUnarchiver.unarchiveObject(withFile: realPath + "/flag.bin") as? String
        if flag == nil {
            NSKeyedArchiver.archiveRootObject("Guardado", toFile: realPath + "/flag.bin")
        }
        
        self.collectionView.register(UINib.init(nibName: "MainMenuItemCollectionViewCell", bundle: nil),
                                     forCellWithReuseIdentifier: "menuCell")
        
        fillImageArray()
        sideMenu()
        appDelegate.mainMenuVC = self

        // Do any additional setup after loading the view.
    }
    
    func fillImageArray(){
        imagesArray.append(UIImage(named: "entradas")!)
        imagesArray.append(UIImage(named: "ensaladas")!)
        imagesArray.append(UIImage(named: "sopas")!)
        imagesArray.append(UIImage(named: "plato_fuerte")!)
        imagesArray.append(UIImage(named: "postres")!)
        imagesArray.append(UIImage(named: "ingredientes")!)
        
        textsArrays.append("Entradas")
        textsArrays.append("Ensaladas")
        textsArrays.append("Cremas o Sopas")
        textsArrays.append("Plato fuerte")
        textsArrays.append("Postres")
        textsArrays.append("Ingredientes")
    }
    
    func sideMenu() {
        if revealViewController() != nil {
            menuButton.target = revealViewController()
            menuButton.action = #selector(SWRevealViewController.revealToggle(_:))
            revealViewController().rearViewRevealWidth = 275
            revealViewController().rightViewRevealWidth = 160
            
            view.addGestureRecognizer(self.revealViewController().panGestureRecognizer())
        }
    }
    
    func openGlucoseController(performAction: Bool){
        if performAction {
            UIApplication.shared.sendAction(menuButton.action!, to: menuButton.target, from: self, for: nil)
        }
        
        self.performSegue(withIdentifier: "glucoseSegue", sender: self)
    }
    
    func openDashboardController(){
        UIApplication.shared.sendAction(menuButton.action!, to: menuButton.target, from: self, for: nil)
        self.performSegue(withIdentifier: "dashboardSegue", sender: self)
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        self.performSegue(withIdentifier: "receiptListSegue", sender: self)
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return 6
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "menuCell", for: indexPath) as! MainMenuItemCollectionViewCell
        cell.imageOutlet.image = imagesArray[indexPath.row]
        cell.labeOutlet.text = textsArrays[indexPath.row]
        
        cell.layer.borderColor = UIColor.gray.cgColor
        cell.layer.borderWidth = 1.5
        
        return cell
    }
    
    
    @IBAction func glucoseButtonAction(_ sender: Any) {
        openGlucoseController(performAction: false)
    }
    
}
