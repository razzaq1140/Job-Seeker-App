import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_seeker_app/provider/customer_support.dart';
import 'package:job_seeker_app/screens/add_faqs_screen.dart';
import 'package:job_seeker_app/theme/app_color.dart';
import 'package:job_seeker_app/widgets/custom_button.dart';
import 'package:provider/provider.dart';

class CustomerSupportScreen extends StatefulWidget {
  const CustomerSupportScreen({super.key});

  @override
  State<CustomerSupportScreen> createState() => _CustomerSupportScreenState();
}

class _CustomerSupportScreenState extends State<CustomerSupportScreen> {

  bool isExpanded = true;

  List<Map<String, String>> faqs = [
    {
      'question': 'How to use the App?', 'answer': 'Find answers to common questions about the app.',
    },
    {
      'question': 'How to use the App?', 'answer': 'Find answers to common questions about the app.',
    }
  ];
  
  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Customer Support'),
        centerTitle: true,
        leading: Icon(Icons.arrow_back),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  hintStyle: TextStyle(color: AppColor.textColor),
                  prefixIcon: Icon(CupertinoIcons.search,color: AppColor.textColor,),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide(color: AppColor.textColor)
                  ),
                  focusedBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: AppColor.textColor)
                  ),
                  enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(12),
                      borderSide: BorderSide(color: AppColor.textColor)
                  ),
                ),
              ),
            ),
            SizedBox(height: 10,),
            Text('FAQs',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15)),
            SizedBox(height: 10,),
            ListView.builder(
              itemCount: faqs.length,

              shrinkWrap: true,
                itemBuilder: (context, index){
                  var faq = faqs[index];
                  if(searchController.text.isEmpty){
                    return Theme(
                      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Container(
                          // padding: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColor.textColor),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Consumer<CustomerSupportProvider>(builder: (context, value, child){
                            return ExpansionTile(
                              onExpansionChanged: (newValue){
                                print("New Value:---> $newValue");
                                value.changeValue(index, newValue);
                                // value.changeValue(newValue);
                                // setState(() {
                                //   isExpanded = newValue;
                                // });
                              },
                              tilePadding: EdgeInsets.symmetric(horizontal: 8),
                              collapsedBackgroundColor: Colors.transparent,
                              backgroundColor: Colors.transparent,
                              trailing: Icon(value.isExpanded(index) ? Icons.keyboard_arrow_down_outlined : Icons.chevron_right ,color: Colors.grey,),
                              iconColor: AppColor.textColor,
                              title: Text(faq['question'] ?? '',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                              children: [
                                ListTile(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 8),
                                  title: Text(faq['answer'] ?? '',style: TextStyle(color: AppColor.textColor)),
                                ),
                              ],
                            );
                          }),
                        ),
                      ),
                    );
                  }else if(faq['question']!.toLowerCase().contains(searchController.text)){
                    return Theme(
                      data: Theme.of(context).copyWith(dividerColor: Colors.transparent),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 10.0),
                        child: Container(
                          // padding: EdgeInsets.symmetric(horizontal: 8),
                          decoration: BoxDecoration(
                              border: Border.all(color: AppColor.textColor),
                              borderRadius: BorderRadius.circular(8)
                          ),
                          child: Consumer<CustomerSupportProvider>(builder: (context, value, child){
                            return ExpansionTile(
                              onExpansionChanged: (newValue){
                                value.changeValue(index, newValue);
                                // value.changeValue(newValue);
                                // setState(() {
                                //   isExpanded = newValue;
                                // });
                              },
                              tilePadding: EdgeInsets.symmetric(horizontal: 8),
                              collapsedBackgroundColor: Colors.transparent,
                              backgroundColor: Colors.transparent,
                              trailing: Icon(value.isExpanded(index) ? Icons.keyboard_arrow_down_outlined : Icons.chevron_right ,color: Colors.grey,),
                              iconColor: AppColor.textColor,
                              title: Text(faq['question'] ?? '',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
                              children: [
                                ListTile(
                                  contentPadding: EdgeInsets.symmetric(horizontal: 8),
                                  title: Text(faq['answer'] ?? '',style: TextStyle(color: AppColor.textColor)),
                                ),
                              ],
                            );
                          }),
                        ),
                      ),
                    );
                  }else{
                    return Container();
                  }
                }
            ),
            SizedBox(height: 50,),
            CustomButton(title: 'Add FAQs', onTap: ()async{
              final result = await Navigator.push(context, MaterialPageRoute(builder: (context) => AddFaqsScreen()));

              if(result != null){
                print("Result:  $result");
                setState(() {
                  faqs.add({
                    'question': result['question'] ?? 'No Question Provided',
                    'answer': result['answer'] ?? 'No Answer Provided',
                  });
                  // title = result['question'] ?? 'No Question Provided';
                  // subTitle = result['answer'] ?? 'No Answer Provided';
                });
              }
            })
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: AppColor.blackColor,
          child: Icon(Icons.message,color: AppColor.whiteColor,),
          onPressed: (){}
      ),
    );
  }
}
