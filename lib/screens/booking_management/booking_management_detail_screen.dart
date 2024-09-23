import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:job_seeker_app/theme/app_color.dart';
import 'package:job_seeker_app/widgets/custom_button.dart';

class BookingManagementDetailScreen extends StatefulWidget {
  final String jobTitle;
  final String jobSubTitle;
  final String address;
  final String cityAdrees;
  final String date;
  final String status;
  final double price;
  final double tax;
  const BookingManagementDetailScreen({super.key,
    required this.jobSubTitle,
    required this.jobTitle,
    required this.address,
    required this.cityAdrees,
    required this.date,
    required this.status,
    required this.price,
    required this.tax,
  });

  @override
  State<BookingManagementDetailScreen> createState() => _BookingManagementDetailScreenState();
}

class _BookingManagementDetailScreenState extends State<BookingManagementDetailScreen> {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Booking Management',style: TextStyle(fontWeight: FontWeight.bold),),
        centerTitle: true,
        leading: IconButton(icon: const Icon(Icons.arrow_back),onPressed: (){
          Navigator.pop(context);
        },),
        backgroundColor: Colors.transparent,
        surfaceTintColor: Colors.transparent,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              padding: const EdgeInsets.all(13),
              decoration: BoxDecoration(
                border: Border.all(color: AppColor.blackColor),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text('Total Spent'),
                  Text(
                    '\$${widget.price+widget.tax}',style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600),),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.all(15),
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
                      Text(widget.jobTitle,style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w600,color: Color(0xff08D0DE)),),
                      const Text('Total',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w700,color: AppColor.textColor)),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(
                          width: 150,
                          child: Text(widget.jobSubTitle,style: const TextStyle(fontSize: 16,fontWeight: FontWeight.w600),)),
                      Text('\$${widget.price}',style: const TextStyle(fontSize: 24,fontWeight: FontWeight.w600,color: AppColor.blackColor)),
                    ],
                  ),
                  Row(
                    children: [
                      Text(widget.cityAdrees,style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w400,)),
                      const SizedBox(width: 15,),
                      Text(widget.address,style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w400,)),
                    ],
                  ),
                  const SizedBox(height: 0,),
                  Text(widget.date,style: const TextStyle(fontSize: 12,fontWeight: FontWeight.w400,)),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            const Text('Employer'),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColor.textColor),
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: CachedNetworkImage(
                            imageUrl: 'https://images.pexels.com/photos/20467565/pexels-photo-20467565/free-photo-of-portrait-of-a-young-brunet-man-in-a-white-polo-shirt-with-a-watch.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                          height: 63,
                          width: 63,
                          fit: BoxFit.cover,
                          errorWidget: (context, url, error) => const Center(child: Icon(Icons.error,color: Colors.red,)),
                          placeholder: (context, url) => const Center(child: CircularProgressIndicator(),),),
                      ),
                      const SizedBox(width: 10,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Jhon Smith'),
                          Row(
                            children: [
                              Icon(Icons.star_rate_rounded,size: 15,color: Colors.blue,),
                              Text('4.7')
                            ],
                          ),
                          Text('Type of activity'),
                          Row(
                            children: [
                              Text('Email: ',style: TextStyle(color: AppColor.textColor)),
                              Text('abc@gmail.com'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Call: ',style: TextStyle(color: AppColor.textColor),),
                              Text('+988887777'),
                            ],
                          ),
                        ],
                      )
                    ],

                  ),
                ],
              ),
            ),
            const SizedBox(height: 10,),
            const Text('User'),
            const SizedBox(height: 10,),
            Container(
              padding: const EdgeInsets.all(10),
              decoration: BoxDecoration(
                  border: Border.all(color: AppColor.textColor),
                  borderRadius: BorderRadius.circular(12)
              ),
              child: Column(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: CachedNetworkImage(
                          imageUrl: 'https://images.pexels.com/photos/20467565/pexels-photo-20467565/free-photo-of-portrait-of-a-young-brunet-man-in-a-white-polo-shirt-with-a-watch.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=2',
                          height: 63,
                          width: 63,
                          fit: BoxFit.cover,
                          errorWidget: (context, url, error) => const Center(child: Icon(Icons.error,color: Colors.red,)),
                          placeholder: (context, url) => const Center(child: CircularProgressIndicator(),),),
                      ),
                      const SizedBox(width: 10,),
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Abdul Razzaq'),
                          Row(
                            children: [
                              Icon(Icons.star_rate_rounded,size: 15,color: Colors.blue,),
                              Text('4.7')
                            ],
                          ),
                          Row(
                            children: [
                              Text('Email: ',style: TextStyle(color: AppColor.textColor)),
                              Text('abc@gmail.com'),
                            ],
                          ),
                          Row(
                            children: [
                              Text('Call: ',style: TextStyle(color: AppColor.textColor),),
                              Text('+988887777'),
                            ],
                          ),
                        ],
                      )
                    ],

                  ),
                ],
              ),
            ),
            const SizedBox(height: 20,),
            Container(
              padding: const EdgeInsets.all(15),
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
                      Row(
                        children: [
                          const Text('Tax/Fees: ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColor.textColor),),
                          Text(
                            '\$${widget.tax}',style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColor.blackColor),),
                        ],
                      ),
                      Container(
                        padding: const EdgeInsets.all(6),
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.2),
                          borderRadius: BorderRadius.circular(4),
                        ),
                        child: Text(widget.status,style: const TextStyle(color: AppColor.textColor,fontWeight: FontWeight.w500,fontSize: 10),),
                      )
                    ],
                  ),
                  const Row(
                    children: [
                      Text('Date: ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColor.textColor),),
                      Text('22 Mar 2021, Sunday',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColor.blackColor),),
                    ],
                  ),
                  Row(
                    children: [
                      const Text('Amount Paid: ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColor.textColor),),
                      Text(
                        '\$${widget.price}',style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColor.blackColor),),
                    ],
                  ),
                  const Row(
                    children: [
                      Text('Payment Method: ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColor.textColor),),
                      Text('Paid via Visa',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColor.blackColor),),
                    ],
                  ),
                  const Row(
                    children: [
                      Text('Transaction ID: ',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColor.textColor),),
                      Text('1234567890',style: TextStyle(fontSize: 14,fontWeight: FontWeight.w500,color: AppColor.blackColor),),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 50,),
            CustomButton(title: 'Continue', onTap: (){

            }),
            const SizedBox(height: 10,),

            CustomButton(color: Colors.transparent,title: 'Modify Booking', txtColor: Colors.black, onTap: (){

            })
          ],
        ),
      ),
    );
  }
}
