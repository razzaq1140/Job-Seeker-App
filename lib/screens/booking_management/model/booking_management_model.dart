class BookingManagementModel{

  String jobTitle;
  String jobSubTitle;
  String address;
  String cityAddress;
  String date;
  String status;
  double price;
  double tax;

  BookingManagementModel({
    required this.jobTitle,
    required this.jobSubTitle,
    required this.date,
    required this.address,
    required this.cityAddress,
    required this.status,
    required this.price,
    required this.tax,
});
}