class SearchResult {
  String title;
  String busNumberPlate;
  String leaveTime;
  String arriveTime;
  String leavePlace;
  String arrivePlace;
  String availableSeat;
  int ticketPrice;

  SearchResult({
    this.title,
    this.busNumberPlate,
    this.leaveTime,
    this.arriveTime,
    this.leavePlace,
    this.arrivePlace,
    this.availableSeat,
    this.ticketPrice,
  });
}

List<SearchResult> searchList = [
  SearchResult(
    title: 'HANIF PARIBAHAN',
    busNumberPlate: 'DHK METRO 3350',
    leaveTime: '2.00PM',
    arriveTime: '7.00PM',
    leavePlace: 'Sylhet',
    arrivePlace: 'Dhaka',
    availableSeat: '35 out of 40',
    ticketPrice: 40,
  ),
  SearchResult(
    title: 'SHAMOLY PARIBAHAN',
    busNumberPlate: 'DHK METRO 2496',
    leaveTime: '3.30PM',
    arriveTime: '8.30PM',
    leavePlace: 'Sylhet',
    arrivePlace: 'Dhaka',
    availableSeat: '30 out of 40',
    ticketPrice: 40,
  ),
  SearchResult(
    title: 'HANIF PARIBAHAN',
    busNumberPlate: 'DHK METRO 2496',
    leaveTime: '11.00PM',
    arriveTime: '4.00AM',
    leavePlace: 'Sylhet',
    arrivePlace: 'Dhaka',
    availableSeat: '2 out of 40',
    ticketPrice: 40,
  ),
  SearchResult(
    title: 'SHOHAG EXPRESS',
    busNumberPlate: 'DHK METRO 2496',
    leaveTime: '9.00AM',
    arriveTime: '2.00PM',
    leavePlace: 'Sylhet',
    arrivePlace: 'Dhaka',
    availableSeat: '10 out of 40',
    ticketPrice: 40,
  ),
  SearchResult(
    title: 'EAGLE PORIBAHAN',
    busNumberPlate: 'DHK METRO 2496',
    leaveTime: '12.00PM',
    arriveTime: '5.00PM',
    leavePlace: 'Sylhet',
    arrivePlace: 'Dhaka',
    availableSeat: '5 out of 40',
    ticketPrice: 40,
  ),
  SearchResult(
    title: 'ENA TRAVELS',
    busNumberPlate: 'DHK METRO 2496',
    leaveTime: '4.00PM',
    arriveTime: '9.00PM',
    leavePlace: 'Sylhet',
    arrivePlace: 'Dhaka',
    availableSeat: '5 out of 40',
    ticketPrice: 40,
  ),
];
