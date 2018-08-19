//
//  ViewController.swift
//  ZooApp
//
//  Created by Muhammad abduh Siregar on 15/08/18.
//  Copyright © 2018 Muhammad abduh Siregar. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    var listOfKillerAnimals = [Animal]()
    var listOfNotKillerAnimals = [Animal]()
    var AnimalType = ["Not Killer", "Killer"]
    @IBOutlet weak var tvListAnimals: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        listOfNotKillerAnimals.append(Animal(name: "baboon", desc: "live in big place with tree....", image: "baboon"))
        listOfNotKillerAnimals.append(Animal(name: "bulldog", desc: "live in big place with tree....", image: "bulldog"))
        listOfKillerAnimals.append(Animal(name: "panda", desc: "live in big place with tree....", image: "panda"))
        listOfNotKillerAnimals.append(Animal(name: "swallow", desc: "live in big place with tree....", image: "swallow"))
        listOfKillerAnimals.append(Animal(name: "whitetiger", desc: "live in big place with tree....", image: "whitetiger"))
        listOfNotKillerAnimals.append(Animal(name: "zebra", desc: "live in big place with tree....", image: "zebra"))
        // Do any additional setup after loading the view, typically from a nib.
        
        tvListAnimals.delegate = self
        tvListAnimals.dataSource = self
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return AnimalType[section]
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0 {
            return listOfNotKillerAnimals.count
        } else {
            return listOfKillerAnimals.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellAnimal:TVCAnimal = tableView.dequeueReusableCell(withIdentifier: "cellAnimal", for:indexPath) as! TVCAnimal
        if indexPath.section == 0 {
            cellAnimal.setAnimal(animal: listOfNotKillerAnimals[indexPath.row])
        } else {
            cellAnimal.setAnimal(animal: listOfKillerAnimals[indexPath.row])
        }
        return cellAnimal
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        if indexPath.section==0 {
            print(listOfNotKillerAnimals[indexPath.row].image!)
            listOfNotKillerAnimals.append(listOfNotKillerAnimals[indexPath.row])
        } else {
            print(listOfKillerAnimals[indexPath.row].name!)
            listOfKillerAnimals.append(listOfKillerAnimals[indexPath.row])
        }
    }
}

