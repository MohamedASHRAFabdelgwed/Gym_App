import 'package:flutter/material.dart';
import 'package:menu/table_item.dart';
class MemberListScreen extends StatefulWidget {
  const MemberListScreen({super.key});
  @override
  State<MemberListScreen> createState() => _MemberListScreenState();
}
class _MemberListScreenState extends State<MemberListScreen> {
  String Value = 'Item1';
  @override
  Widget build(BuildContext context) {
    var gender;
    return Scaffold(
       backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: SafeArea(
          child:SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 10,),
              const Text("Add New MemberShip",
            style:TextStyle(color: Colors.black,
            fontSize: 20,fontWeight: FontWeight.w600) ,),
              const Text("Home/MemberShip",
                style:TextStyle(color: Colors.grey,
                    fontSize: 15,fontWeight: FontWeight.bold) ,),
              const SizedBox(height: 30,),
                 Center(
                  child: Image.asset("assets/gym.png",width: 200,height: 200,fit: BoxFit.fill),
                ),
              const SizedBox(height: 20,),
              const Text("Status",
              style: TextStyle(
                fontWeight:FontWeight.bold,
                fontSize: 15,
              ),),
              Padding(
                padding: const EdgeInsets.only(left:280),
                child: DropdownButton(items:const [
                  DropdownMenuItem(
                    alignment: Alignment.topLeft,
                    value: 'Item1',
                    child: Text('Active'),),
                  DropdownMenuItem(
                    value: 'Item1',
                    child: Text('UnActive'),),
                ], onChanged: (NewValue){
                  setState(() {
                  Value = NewValue!;
                  });},),),
              const Divider(
                thickness: 3,
                height: 3,
                color: Colors.black26
              ),
              const SizedBox(height: 10,),
              const Text("General",
                style:TextStyle(color: Colors.black,
                    fontSize: 15,fontWeight: FontWeight.bold) ,),
              const SizedBox(height: 30,),
              const Text("MemberShip Name",
                style:TextStyle(color: Colors.black,
                    fontSize: 15,fontWeight: FontWeight.bold) ,),
              TextField(
                decoration: InputDecoration(
                  hintText: "MemberShip Name ",
                  helperStyle:const TextStyle(
                    color: Colors.grey
                  ),
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(15),
                    borderSide: const BorderSide(
                      color: Colors.grey,
                      width: 2
                    ))),),
              const SizedBox(height: 10,),
              const Text("Duration",
                style:TextStyle(color: Colors.black,
                    fontSize: 15,fontWeight: FontWeight.bold) ,),
              TextField(
                keyboardType: TextInputType.text,
                decoration: InputDecoration(
                    hintText: "Duration",
                    helperStyle:const TextStyle(
                        color: Colors.white
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 2
                        ))),),
              const SizedBox(height: 20,),
              const Text("Duration  Type",
                style:TextStyle(color: Colors.black,
                    fontSize: 15,fontWeight: FontWeight.bold) ,),
              const SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    hintText: "Duration Type ",
                    helperStyle:const TextStyle(
                        color: Colors.grey
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 2
                        ))),),
              const SizedBox(height: 20,),
              const Text("Description",
                style:TextStyle(color: Colors.black,
                    fontSize: 15,fontWeight: FontWeight.bold) ,),
              TextField(
                keyboardType: TextInputType.text,style: const TextStyle(color: Colors.black),
                cursorColor: Colors.cyan,
                decoration: InputDecoration(
                    hintText: "Description ",
                    helperStyle:const TextStyle(
                        color: Colors.grey,
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 2,
                        ))),),
              const Divider(
                  thickness: 3,
                  height: 3,
                  color: Colors.black26
              ),
              const SizedBox(height: 20,),
              const Text("Class",
                   style:TextStyle(color: Colors.black,
                   fontSize: 18,fontWeight: FontWeight.bold) ,),
              Center(
                child:
                  RadioListTile(
                    title: const Text("Limited"),
                    value: "Limited",
                    groupValue: gender,
                    onChanged: (value){
                      setState(() {
                        gender = value.toString();
                      });
                    },
                  ),
              ),
                  const SizedBox(height: 0,),
                  Center(
                    child: RadioListTile(
                      title: const Text("UnLimited"),
                      value: "UnLimited",
                      groupValue: gender,
                      onChanged: (value){
                        setState(() {
                          var gender = value.toString();
                        });
                      },
                    ),
                  ),
              const Text("No.of Classes",
                style:TextStyle(color: Colors.black,
                    fontSize: 15,fontWeight: FontWeight.bold) ,),
              const SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    hintText: "No.of Classes",
                    helperStyle:const TextStyle(
                        color: Colors.grey
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 2
                        ))),),
              const Text("Select Classes",
                style:TextStyle(color: Colors.black,
                    fontSize: 15,fontWeight: FontWeight.bold) ,),
              const SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    hintText: "Select Classes",
                    helperStyle:const TextStyle(
                        color: Colors.grey
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 2
                        ))),),
              const SizedBox(height: 15,),
              const Text("Pricing",
                style:TextStyle(color: Colors.black,
                    fontSize: 15,fontWeight: FontWeight.bold) ,),
              const SizedBox(height: 30,),
              const Text("Amount",
                style:TextStyle(color: Colors.black,
                    fontSize: 15,fontWeight: FontWeight.bold) ,),
              TextField(
                decoration: InputDecoration(
                    hintText: "Amount ",
                    helperStyle:const TextStyle(
                        color: Colors.grey
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 2
                        ))),),
              const SizedBox(height: 10,),
              const Text("Signup Free",
                style:TextStyle(color: Colors.black,
                    fontSize: 15,fontWeight: FontWeight.bold) ,),
               const SizedBox(height: 10,),
              TextField(
                decoration: InputDecoration(
                    hintText: "Signup Free",
                    helperStyle:const TextStyle(
                        color: Colors.grey
                    ),
                    border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(15),
                        borderSide: const BorderSide(
                            color: Colors.grey,
                            width: 2
                        ))),),
              const SizedBox(height: 10,),
              Center(
                child: MaterialButton(
                  padding: const EdgeInsets.all(8),
                  color: Colors.blueAccent,
                    onPressed: (){},
                child: const Text("Save",style: TextStyle(color: Colors.white,fontSize: 15,fontWeight: FontWeight.bold),

                ),),
              ),
                const SizedBox(width: 5,),
            ],)), ),));
  }
}
