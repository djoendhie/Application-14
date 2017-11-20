//
//  ArtikelTableViewCell.swift
//  PosttestTestArtikel
//
//  Created by SMK IDN MI on 10/24/17.
//  Copyright © 2017 Be Dev. All rights reserved.
//

import UIKit

class ArtikelTableViewCell: UITableViewCell {
    @IBOutlet weak var imgPreview: UIImageView!
    @IBOutlet weak var labelKategori: UILabel!
    @IBOutlet weak var labelIsi: UILabel!
    @IBOutlet weak var labelRilis: UILabel!
    @IBOutlet weak var labelJudul: UILabel!
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

}
