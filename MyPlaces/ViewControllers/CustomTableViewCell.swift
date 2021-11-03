

import UIKit

class CustomTableViewCell: UITableViewCell {

    @IBOutlet weak var imageOfPlace: UIImageView! {
        didSet {
            imageOfPlace.layer.cornerRadius = imageOfPlace.frame.size.height / 2
            imageOfPlace.clipsToBounds = true
        }
    }
    @IBOutlet weak var nameLable: UILabel!
    @IBOutlet weak var locationLable: UILabel!
    @IBOutlet weak var typeLable: UILabel!
    @IBOutlet weak var starsStackView: UIStackView!
}
