
import UIKit

class MainViewController: UIViewController {

    @IBOutlet weak var tableView: UITableView!
    
    //var places = Place.getPlaces()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
//        tableView.dataSource = self
//        tableView.delegate = self

    }
    
    @IBAction func unwindSegue(_ segue: UIStoryboardSegue) {
        guard let newPlaceVC = segue.source as? NewPlaceViewController else { return }
        
        newPlaceVC.saveNewPlace()
        //places.append(newPlaceVC.newPlace!)
        tableView.reloadData()
    }
}

//extension MainViewController: UITableViewDataSource, UITableViewDelegate {
//
//     // MARK: - Table view data source
//    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
//        return places.count
//    }
//
//    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
//        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
//
//        let place = places[indexPath.row]
//
//        cell.nameLable.text = place.name
//        cell.locationLable.text = place.location
//        cell.typeLable.text = place.type
//
//        if place.image == nil {
//            cell.imageOfPlace.image = UIImage(named: place.restaurantImage!)
//        } else {
//            cell.imageOfPlace.image = place.image
//        }
//
//        cell.imageOfPlace.layer.cornerRadius = cell.imageOfPlace.frame.size.height / 2
//        cell.imageOfPlace.clipsToBounds = true
//
//        return cell
//    }
//}
