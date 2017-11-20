//
//  CostumCellTableViewController.swift
//  PosttestTestArtikel
//
//  Created by SMK IDN MI on 10/24/17.
//  Copyright © 2017 Be Dev. All rights reserved.
//

import UIKit
class CostumCellTableViewController: UITableViewController {
    
    let category:[String] = ["Aqidah", "Fiqih Remaja", "Nasehat", "UnCategorized", "Akhlaq"]
    let tglData:[String] = ["Kamis, 25 Maret 2016", "Jum'at, 16 Juni 2016", "Sabtu, 8 Desember 2016", "Senin, 30 Desember 2016", "Sabtu, 19 Desember 2107"]
    let judulBerita: [String] = ["Hukum Memperlajari Ilmu Filsafat", "Masih Malas Bangun Shubuh ?", "Yang Jarang Diketahui dari Puasa Asyuraa", "Dimasjid Hatiku Terkait", "Menikah Membuka Pintu Rizqi"]
    let isiBerita:[String] = ["Bagaimana hukum mempelajari ilmu filsafat? Kata Ibnu Nujaim yang punya kitab Al-Asybah An-Nazhair yang terkenal: - Ilmu itu ada yang fardhu ain yang dibutuhkan untuk menyokong agama seseorang.Ada juga ilmu yang fardhu kifayah yang dibutuhkan sebagai tambahan sehingga dapat memberi manfaat pada yang lainnya.Ada juga ilmu yang dianggap sunnah yaitu memperluas dalam mempelajari fikih dan menata hati.Adapun ilmu yang haram dipelajari adalah ilmu filsafat, sulap, perbintangan, ramalan, ilmu supra natural dan sihir.", ",Ini Akibat Malas Bangun Shubuh Dari Abu Hurairah radhiyallahu  anhu, Nabi shallallahu ‘alaihi wa sallam bersabda,Setan membuat tiga ikatan di tengkuk (leher bagian belakang) salah seorang dari kalian ketika tidur. Di setiap ikatan setan akan mengatakan, -Malam masih panjang, tidurlah!- Jika ia bangun lalu berdzikir pada Allah, lepaslah satu ikatan. Kemudian jika dia berwudhu, lepas lagi satu ikatan. Kemudian jika dia mengerjakan sholat, lepaslah ikatan terakhir. Di pagi hari dia akan bersemangat dan bergembira. Jika tidak melakukan seperti ini, dia tidak ceria dan menjadi malas.- (HR. Bukhari, no. 1142 dan Muslim, no. 776)", "Ini tiga hal yang jarang diketahui dari puasa Asyura (10 Muharram).1- Berpusa Asyura (10 Muharram) saja tanpa hari sebelum atau sesudahnya dibolehkan, tanpa dikatakan makruh. Namun lebih afdhal mengikutkan dengan hari sebelumnya (9 Muharram), untuk menyelisihi puasa orang Yahudi. Jika luput, bisa berpuasa pada hari sesudahnya (11 Muharram).Puasa Asyura di tahun 1439 H jatuh pada hari Sabtu, 30 September 2017.2- Puasa Asyura itu ada dua tingkatan:(a) puasa pada dua hari, yaitu 9 dan 10 Muharram,(b) puasa satu hari saja yaitu 10 Muharram.Adapun perintah puasa Asyura diikuti hari sebelum dan sesudahnya, sehingga berpuasa 9, 10, 11 Muharram, perlu diketahui bahwa haditsnya munkar.Namun kalau puasa pada tiga hari tersebut dengan niatan puasa tiga hari setiap bulannya, maka itu bagus.3- Jika ada yang mempunyai utang puasa, manakah yang lebih didahulukan puasa Asyura ataukah utang puasa?Boleh saja melakukan puasa Asyura sebelum menunaikan qadha’ puasanya.Namun baiknya yang memiliki utang puasa untuk menunaikannya dengan segera karena kita tidak mengetahui kapan ajal kita berakhir.", "Inilah mereka yang mendapatkan naungan pada hari kiamat.Yang dimaksudkan naungan di sini adalah naungan ‘Arsy Allah sebagaimana dikuatkan riwayatnya oleh Ibnu Hajar dalam Fath Al-Bari (2: 144).Dari Abu Hurairah radhiyallahu ‘anhu, dari Nabi shallallahu ‘alaihi wa sallam, beliau shallallahu ‘alaihi wa sallam bersabda, “Tujuh golongan yang dinaungi Allah dalam naungan-Nya pada hari di mana tidak ada naungan kecuali naungan-Nya: (1) imam yang adil,(2) seorang pemuda yang tumbuh dewasa dalam beribadah kepada Allah,(3) seorang yang hatinya bergantung ke masjid,(4) dua orang yang saling mencintai di jalan Allah, keduanya berkumpul karena-Nya dan berpisah karena-Nya,(5) seorang laki-laki yang diajak berzina oleh seorang wanita yang mempunyai kedudukan lagi cantik, lalu ia berkata, ‘Aku benar-benar takut kepada Allah.’(6) seseorang yang bershadaqah dengan satu shadaqah lalu ia menyembunyikannya sehingga tangan kirinya tidak tahu apa yang diinfaqkan tangan kanannya, serta(7) seseorang yang berdzikir kepada Allah dalam keadaan sepi lalu ia meneteskan air matanya.” (HR. Bukhari, no. 1423 dan Muslim, no. 1031)", "Wahai jomblo, ingin berkecukupan?Tak percaya hadits ini?Dari Abu Hurairah radhiyallahu ‘anhu, ia berkata bahwa Rasulullah shallallahu ‘alaihi wa sallam bersabda, “Ada tiga orang yang akan mendapatkan pertolongan Allah: (1) orang yang berjihad di jalan Allah, (2) orang yang menikah demi menjaga kesucian dirinya, (3) budak mukatab yang ingin membebaskan dirinya.” (HR. An-Nasa’i, no. 3218; Tirmidzi, no. 1655; Ibnu Majah, no. 2518. Al-Hafizh Abu Thahir mengatakan bahwa sanad hadits ini hasan).Banyak yang sudah membuktikannya loh. Cuma kamu saja yang belum, bahkan mungkin belum sadar juga.Moga Allah mudahkan jodohnya dan segera naik pelaminan"]
    
    var myIndex = 0
    
    let gambarBerita:[String] = ["1.jpg", "2.jpg", "3.jpg", "4.jpg", "5.jpg"]
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.estimatedRowHeight = 650.0
        tableView.rowHeight = UITableViewAutomaticDimension
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return judulBerita.count
        
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellArtikel", for: indexPath) as! ArtikelTableViewCell
        
        // Configure the cell...\
        
        cell.labelJudul.text = judulBerita[indexPath.row]
        cell.labelRilis.text = tglData[indexPath.row]
        cell.labelKategori.text = category[indexPath.row]
        cell.labelIsi.text = isiBerita[indexPath.row]
        
        return cell
        
    }
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        myIndex = indexPath.row
        performSegue(withIdentifier: "segue", sender: self)
    }
    
    
    /*
     // Override to support conditional editing of the table view.
     override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the specified item to be editable.
     return true
     }
     */
    
    /*
     // Override to support editing the table view.
     override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
     if editingStyle == .delete {
     // Delete the row from the data source
     tableView.deleteRows(at: [indexPath], with: .fade)
     } else if editingStyle == .insert {
     // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
     }
     }
     */
    
    /*
     // Override to support rearranging the table view.
     override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {
     
     }
     */
    
    /*
     // Override to support conditional rearranging of the table view.
     override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
     // Return false if you do not want the item to be re-orderable.
     return true
     }
     */
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destinationViewController.
     // Pass the selected object to the new view controller.
     }
     */
    
}
