class Show {
 late int id;
 late String name;
 late int kindofshow;
 late String date;
 late String start;
 late int numberofticket;

  // show(
  //     {this.id,
  //       this.name,
  //       this.kindofshow,
  //       this.date,
  //       this.start,
  //       this.numberofticket});

  Show.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    name = json['name'];
    kindofshow = json['kindofshow'];
    date = json['date'];
    start = json['start'];
    numberofticket = json['numberofticket'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['name'] = this.name;
    data['kindofshow'] = this.kindofshow;
    data['date'] = this.date;
    data['start'] = this.start;
    data['numberofticket'] = this.numberofticket;
    return data;
  }
}