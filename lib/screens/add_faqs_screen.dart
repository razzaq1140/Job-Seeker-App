import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:job_seeker_app/screens/customer_support_screen.dart';
import 'package:job_seeker_app/theme/app_color.dart';
import 'package:job_seeker_app/widgets/custom_button.dart';

class AddFaqsScreen extends StatefulWidget {
  AddFaqsScreen({super.key});

  @override
  State<AddFaqsScreen> createState() => _AddFaqsScreenState();
}

class _AddFaqsScreenState extends State<AddFaqsScreen> {
  TextEditingController qController = TextEditingController();
  TextEditingController aController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Add FAQs'),
        centerTitle: true,
        leading: IconButton(icon: Icon(Icons.arrow_back),onPressed: (){
          Navigator.pop(context);
        },),
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Form(
          key: _formKey,
          child:  Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Question',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15)),
                SizedBox(height: 10,),
                TextFormField(
                  controller: qController,
                  maxLines: 2,
                  decoration: InputDecoration(
                    // filled: true,
                    hintText: 'How to use the App?',
                    hintStyle: TextStyle(color: AppColor.textColor,fontSize: 12,fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xffDAE2F7))
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xffDAE2F7))
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xffDAE2F7))
                    ),
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Please enter the question';
                    }else{
                      return null;
                    }
                  },
                ),
                SizedBox(height: 10,),
                Text('Answer',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 15)),
                SizedBox(height: 10,),
                TextFormField(
                  onChanged: (value){
                    // print(value);
                  },
                  controller: aController,
                  maxLines: 2,
                  decoration: InputDecoration(
                    // filled: true,
                    hintText: 'Find answers to common questions about the app.',
                    hintStyle: TextStyle(color: AppColor.textColor,fontSize: 12,fontWeight: FontWeight.w400),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xffDAE2F7))
                    ),
                    focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xffDAE2F7))
                    ),
                    enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(12),
                        borderSide: BorderSide(color: Color(0xffDAE2F7))
                    ),
                  ),
                  validator: (value){
                    if(value!.isEmpty){
                      return 'Please enter the answer';
                    }else{
                      return null;
                    }
                  },
                ),
                SizedBox(height: 50,),
                CustomButton(
                    title: 'Save',
                    onTap: (){
                      if(_formKey.currentState?.validate() ?? false){
                        Navigator.pop(context,{
                          'question': qController.text,
                          'answer': aController.text
                        });
                      }
                  // print(qController.text);
                })
              ],
            ),
        ),
      ),
    );
  }
}
