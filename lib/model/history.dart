class VisitHistory {
  String title;
  String busNumberPlate;
  String travelDate;
  String seatNo;
  String ticketType;

  VisitHistory({
    this.title,
    this.busNumberPlate,
    this.travelDate,
    this.seatNo,
    this.ticketType,
  });
}

List<VisitHistory> visitList = [
  VisitHistory(
      title: 'HANIF PARIBAHAN',
      busNumberPlate: 'DHK METRO 3350',
      travelDate: '3:00 AM (21 nov 19) DHK to SYL',
      seatNo: 'Seat no E1',
      ticketType: 'Single'),
  VisitHistory(
      title: 'HANIF PARIBAHAN',
      busNumberPlate: 'DHK METRO 3350',
      travelDate: '3:00 AM (21 nov 19) DHK to SYL',
      seatNo: 'Seat no E1',
      ticketType: 'Single')
];
