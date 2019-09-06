//
//  ComicsViewController.swift
//  API-images-lab
//
//  Created by Mariel Hoepelman on 9/6/19.
//  Copyright © 2019 Mariel Hoepelman. All rights reserved.
//

import UIKit

class ComicsViewController: UIViewController {


    override func viewDidLoad() {
        super.viewDidLoad()


    }
    

}

extension ComicsViewController: UITableViewDataSource {
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        return UITableViewCell()
    }
    
    
}
