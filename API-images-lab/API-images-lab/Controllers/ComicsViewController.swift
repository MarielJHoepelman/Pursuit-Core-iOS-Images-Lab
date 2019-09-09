//
//  ComicsViewController.swift
//  API-images-lab
//
//  Created by Mariel Hoepelman on 9/6/19.
//  Copyright © 2019 Mariel Hoepelman. All rights reserved.
//

import UIKit

class ComicsViewController: UIViewController {
 
    @IBOutlet weak var comicsImageView: UIImageView!
    @IBOutlet weak var stepper: UIStepper!
    @IBOutlet weak var comicstextField: UITextField!
    @IBOutlet weak var mostRecentButton: UIButton!
    @IBOutlet weak var randomComicButton: UIButton!
    
    var comics: ComicsFromJSON! {
        didSet {
            setDataToView()
        }
    }
    
    var comicId:Int = 1
    
    var url: String {
        return "https://xkcd.com/\(comicId)/info.0.json"
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        loadData()
    }
    
    
    @IBAction func stepperClick(_ sender: UIStepper) {
        comicId = Int(sender.value)
        loadData()
    }
    
    private func loadData() {
        ComicsFromJSON.getComics(url: url) { (result) in
            DispatchQueue.main.async {
                switch result {
                case .success(let comicsFromOnline):
                    self.comics = comicsFromOnline
                case .failure(let error) :
                    print(error)
                }
            }
        }
    }
    
    private func setDataToView() -> Void {
        comicstextField.text = comics?.safe_title
    }
}

