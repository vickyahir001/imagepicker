
   var number = ["1","2","3","4","5","6","7","8","9","10","11","12","13"]
   var img1 = [UIImage(named:"1"),UIImage(named:"2"),UIImage(named:"3"),UIImage(named:"4"),UIImage(named:"5"),UIImage(named:"6"),UIImage(named:"7"),UIImage(named:"8"),UIImage(named:"9"),UIImage(named:"10"),UIImage(named:"11"),UIImage(named:"12"),UIImage(named:"13")]
   var name = ["Green","Red","Raimbow","White","Gray","Black","Blue","SkyBlue","Yellow","DarkRed","PinkHuddie","Pista","RedHuddie"]

   @IBOutlet weak var tableview: UITableView!
   override func viewDidLoad() {
       super.viewDidLoad()
      
   }
   func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
       return number.count
   }
   
   func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
       let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! TableViewCell
       cell.img.image = img1[indexPath.row]
       cell.numberLabel.text = number[indexPath.row]
       cell.nameLabel.text = name[indexPath.row]
       return cell
   }
   func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
       return 200
   }
   func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
       navigation(datanumber: number[indexPath.row], dataname: name[indexPath.row], dataimage: img1[indexPath.row]!)
   }
   func navigation(datanumber:String,dataname:String,dataimage:UIImage)
   {
       let naviget = storyboard?.instantiateViewController(withIdentifier: "ViewController2") as! ViewController2
       naviget.number = datanumber
       naviget.name = dataname
       naviget.image = dataimage
       navigationController?.pushViewController(naviget, animated: true)
   }

