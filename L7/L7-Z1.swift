import UIKit

struct Dom{
    var nazwa: String
    var powierzchnia: Double
    var liczbaPokoi: Int
    var wDzialki: Double
    var lPieter: Int
}
struct Mieszkanie{
    var nazwa: String
    var powierzchnia: Double
    var liczbaPokoi: Int
    var czyDwupoziom: Bool
}

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    let domy: [Dom] = [Dom(nazwa: "Dom 1", powierzchnia:200, liczbaPokoi: 5, wDzialki: 30.0, lPieter:2),
                       Dom(nazwa: "Dom 2", powierzchnia:300, liczbaPokoi: 3, wDzialki: 20.0, lPieter: 4)
    ]
    let mieszkania: [Mieszkanie] = [Mieszkanie(nazwa: "Mieszkanie 1", powierzchnia: 30, liczbaPokoi: 5, czyDwupoziom: true),
                                    Mieszkanie(nazwa: "Mieszkanie 2", powierzchnia: 50, liczbaPokoi: 3, czyDwupoziom: false)
    ]
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        switch(section){
        case 0: return domy.count
        case 1: return mieszkania.count
        default: return 1
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        if(indexPath.section == 0){
            cell.textLabel?.text = domy[indexPath.row].nazwa + " Powierzchnia: "
            cell.textLabel?.text! += String(domy[indexPath.row].powierzchnia) + " Liczba pokoi: "
            cell.textLabel?.text! += String(domy[indexPath.row].liczbaPokoi)
        }
        else{
            cell.textLabel?.text = mieszkania[indexPath.row].nazwa + " Powierzchnia: "
            cell.textLabel?.text! += String(mieszkania[indexPath.row].powierzchnia) + " Liczba Pokoi: "
            cell.textLabel?.text! += String(mieszkania[indexPath.row].liczbaPokoi)
        }
        return cell
    }
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}

