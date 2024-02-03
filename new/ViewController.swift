//
//  ViewController.swift
//  new
//
//  Created by Mehmet Dora on 30.01.2024.
//

import UIKit

class ViewController: UIViewController {

    var currentPagee = 0
    var imageDescriptions = ["Users will be able to go live , chat and meet with people near by.", "Connect helps you locate the people around you who are closest from your home town!","Users will be able to go live , chat and meet with people near by."]
    var anaBaşlıkDescriptions = ["Connect with people around the world","Let's build connection with new people","Feel the happiness"]
    var images = [UIImage(named: "image5"),UIImage(named: "image4"),UIImage(named: "image7")]
    
    @IBOutlet weak var getStartButon: UIButton!
    @IBOutlet weak var nextButon: UIButton!
    @IBOutlet weak var skipButon: UIButton!
    @IBOutlet weak var anaBaşlıkLabel: UILabel!
    @IBOutlet weak var imageView: UIImageView!
    @IBOutlet weak var pageController: UIPageControl!
    @IBOutlet weak var imageDescripitonLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
         
        setView()
        updatePageController()
        
    }

    @IBAction func nextButton(_ sender: UIButton) {
        if pageController.currentPage < 2{
            self.currentPagee += 1
        }
        updatePageController()
    }
    
    @IBAction func backButton(_ sender: UIButton) {
        if pageController.currentPage > 0{
            self.currentPagee -= 1
        }
        updatePageController()
    }
    
    @IBAction func getStartedButton(_ sender: UIButton) {
        
    }
    
    
    func updatePageController(){
        imageView.image = images[currentPagee]
        imageDescripitonLabel.text = imageDescriptions[currentPagee]
        anaBaşlıkLabel.text = anaBaşlıkDescriptions[currentPagee]
        pageController.currentPage = self.currentPagee
        if currentPagee == 2{
            nextButon.isHidden = true
            skipButon.isHidden = true
            getStartButon.isHidden = false
        }else{
            getStartButon.isHidden = true
        }
    }
    
    func setView(){
        
        // SETTİNG VİEW
        view.backgroundColor = UIColor(named: "AnaRenk")
        self.navigationItem.title = "Create An Account"
        
        navigationController?.navigationBar.backgroundColor =  .cyan   //UIColor(named: "AnaRenk")
        navigationController?.navigationBar.barStyle = .default
        
        let görünüm = UINavigationBarAppearance()
        görünüm.titleTextAttributes = [.foregroundColor : UIColor(named: "LabelRenk")!, .font : UIFont(name: "Pacifico-Regular", size: 30)!]
        
        navigationController?.navigationBar.scrollEdgeAppearance = görünüm
        navigationController?.navigationBar.compactAppearance = görünüm
        navigationController?.navigationBar.standardAppearance = görünüm
        
        imageDescripitonLabel.font = UIFont(name: "EastSeaDokdo-Regular",size:25)
        anaBaşlıkLabel.font = UIFont(name: "EastSeaDokdo-Regular",size:40 )
        anaBaşlıkLabel.numberOfLines = 2
        imageDescripitonLabel.numberOfLines = 2
        imageView.layer.cornerRadius = 15
    }
    
}

