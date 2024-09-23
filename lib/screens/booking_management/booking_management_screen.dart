import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_seeker_app/screens/booking_management/booking_management_detail_screen.dart';
import 'package:job_seeker_app/screens/booking_management/model/booking_management_model.dart';
import 'package:job_seeker_app/theme/app_color.dart';

class BookingManagementScreen extends StatefulWidget {
  const BookingManagementScreen({super.key});

  @override
  State<BookingManagementScreen> createState() => _BookingManagementScreenState();
}

class _BookingManagementScreenState extends State<BookingManagementScreen> {

  TextEditingController searchController = TextEditingController();

  List<BookingManagementModel> myData = [
    BookingManagementModel(
        jobTitle: 'Application Developer',
        jobSubTitle: 'Designing Visual Masterpieces',
        date: 'Aug 10 (2DAY)',
        address: '•  Los Agneles, USA',
        cityAddress: 'Runway Model',
        status: 'completed',
      price: 80.00,
      tax: 10
    ),
    BookingManagementModel(
        jobTitle: 'Graphic Designer',
        jobSubTitle: 'Designing Visual Masterpieces',
        date: 'Aug 12 (4DAY)',
        address: '•  Los Agneles, UK',
        cityAddress: 'Runway Model',
        status: 'Pending',
      price: 85.00,
      tax: 11
    ),
    BookingManagementModel(
        jobTitle: 'Web Developer',
        jobSubTitle: 'Designing Visual Masterpieces',
        date: 'Aug 08 (1DAY)',
        address: '•  Los Agneles, USA',
        cityAddress: 'Runway Model',
        status: 'completed',
      price: 91.00,
      tax: 12
    ),
    BookingManagementModel(
        jobTitle: 'SEO',
        jobSubTitle: 'Designing Visual Masterpieces',
        date: 'Aug 08 (1DAY)',
        address: '•  Los Agneles, USA',
        cityAddress: 'Runway Model',
        status: 'Pending',
      price: 94.00,
      tax: 13
    ),
    BookingManagementModel(
        jobTitle: 'Wordpress',
        jobSubTitle: 'Designing Visual Masterpieces',
        date: 'Aug 08 (1DAY)',
        address: '•  Los Agneles, USA',
        cityAddress: 'Runway Model',
        status: 'completed',
      price: 98.00,
      tax: 14
    ),
    BookingManagementModel(
        jobTitle: 'Digital Marketing',
        jobSubTitle: 'Designing Visual Masterpieces',
        date: 'Aug 08 (1DAY)',
        address: '•  Los Agneles, USA',
        cityAddress: 'Runway Model',
        status: 'completed',
      price: 99.00,
      tax: 8
    ),
  ];


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking Management'),
        centerTitle: true,
        leading: IconButton(icon: const Icon(Icons.arrow_back),onPressed: (){
          // Navigator.pop(context);
        },),
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            SizedBox(
              height: 50,
              child: TextFormField(
                controller: searchController,
                onChanged: (value){
                  setState(() {
        
                  });
                },
                decoration: InputDecoration(
                  hintText: 'Search here',
                  hintStyle: const TextStyle(color: AppColor.textColor),
                  prefixIcon: const Icon(CupertinoIcons.search,color: AppColor.textColor,),
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: AppColor.textColor)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: AppColor.textColor)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: const BorderSide(color: AppColor.textColor)
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10,),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Booking History',style: TextStyle(fontSize: 18,fontWeight: FontWeight.w500),),
                Text('See more >'),
              ],
            ),
            const SizedBox(height: 10,),

            ListView.builder(
              itemCount: myData.length,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                itemBuilder: (context, index){
                final myDates = myData[index];
                  if(myDates.jobTitle.isEmpty){
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: InkWell(
                        onTap: (){

                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColor.textColor),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(myDates.jobTitle,style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Color(0xff08D0DE)),),
                                  Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: AppColor.textColor),
                                        borderRadius: BorderRadius.circular(6)
                                    ),
                                    child: Text(myDates.status,style: const TextStyle(fontSize: 10),),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                      width: 150,
                                      child: Text(myDates.jobSubTitle,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)),
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => BookingManagementDetailScreen(
                                        jobTitle: myDates.jobTitle,
                                        jobSubTitle: myDates.jobSubTitle,
                                        address: myDates.address,
                                        cityAdrees: myDates.cityAddress,
                                        date: myDates.date,
                                        price: myDates.price,
                                        tax: myDates.tax,
                                        status: myDates.status,
                                      )));
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 8),
                                      decoration: BoxDecoration(
                                          color: AppColor.blackColor,
                                          border: Border.all(color: AppColor.blackColor),
                                          borderRadius: BorderRadius.circular(6)
                                      ),
                                      child: const Text('View',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(myDates.cityAddress,style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w400,)),
                                  const SizedBox(width: 15,),
                                  Text(myDates.address,style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w400,)),
                                ],
                              ),
                              const SizedBox(height: 0,),
                              Text(myDates.date,style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w400,)),
                            ],
                          ),
                        ),
                      ),
                    );
                  }else if(myDates.jobTitle.toLowerCase().contains(searchController.text.toLowerCase())){
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 15.0),
                      child: InkWell(
                        onTap: (){

                        },
                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColor.textColor),
                              borderRadius: BorderRadius.circular(12)
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Text(myDates.jobTitle,style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Color(0xff08D0DE)),),
                                  Container(
                                    padding: const EdgeInsets.all(4),
                                    decoration: BoxDecoration(
                                        border: Border.all(color: AppColor.textColor),
                                        borderRadius: BorderRadius.circular(6)
                                    ),
                                    child: Text(myDates.status,style: const TextStyle(fontSize: 10),),
                                  )
                                ],
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                      width: 150,
                                      child: Text(myDates.jobSubTitle,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)),
                                  InkWell(
                                    onTap: (){
                                      Navigator.push(context, MaterialPageRoute(builder: (context) => BookingManagementDetailScreen(
                                        jobTitle: myDates.jobTitle,
                                        jobSubTitle: myDates.jobSubTitle,
                                        address: myDates.address,
                                        cityAdrees: myDates.cityAddress,
                                        date: myDates.date,
                                        price: myDates.price,
                                        tax: myDates.tax,
                                        status: myDates.status,
                                      )));
                                    },
                                    child: Container(
                                      padding: const EdgeInsets.symmetric(horizontal: 25,vertical: 8),
                                      decoration: BoxDecoration(
                                          color: AppColor.blackColor,
                                          border: Border.all(color: AppColor.blackColor),
                                          borderRadius: BorderRadius.circular(6)
                                      ),
                                      child: const Text('View',style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w600),),
                                    ),
                                  )
                                ],
                              ),
                              Row(
                                children: [
                                  Text(myDates.cityAddress,style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w400,)),
                                  const SizedBox(width: 15,),
                                  Text(myDates.address,style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w400,)),
                                ],
                              ),
                              const SizedBox(height: 0,),
                              Text(myDates.date,style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w400,)),
                            ],
                          ),
                        ),
                      ),
                    );
                  }else{
                    return Center(
                      child: Container(),
                    );
                  }
                }
            )
          ],
        ),
      ),
    );
  }
}
