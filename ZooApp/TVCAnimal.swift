//
//  TVCAnimal.swift
//  ZooApp
//
//  Created by Muhammad abduh Siregar on 15/08/18.
//  Copyright © 2018 Muhammad abduh Siregar. All rights reserved.
//

import UIKit

class TVCAnimal: UITableViewCell {
    @IBOutlet weak var imageAnimal: UIImageView!
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var txtDesc: UITextView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }
    
    func setAnimal(animal:Animal){
        self.lblName.text = animal.name!
        self.txtDesc.text = animal.desc!
        self.imageAnimal.image = UIImage(named: animal.image!)
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
