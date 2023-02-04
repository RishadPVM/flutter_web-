import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';



  const List<String> Products = <String>['Products', 'Product1','Product2'];
  const List<String> Resources = <String>['Resources', 'Resources1','Resources2'];
  const List<String> Helps = <String>['Help', 'Help1','Help2'];


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    String ProductsValue = Products.first;
    String ResourcesValue= Resources.first;
    String HelpValue= Helps.first;
    return Scaffold(
     appBar: AppBar(
      backgroundColor: Colors.white,
      title: Row(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 35),
                child:const Text("Storekit",style: 
                TextStyle(
                  color: Colors.black,
                fontWeight: FontWeight.w800,
                fontStyle: FontStyle.italic,
                fontSize: 20, ),),
              ),


              Padding(
                padding: const EdgeInsets.only(left: 20),
                child: DropdownButton <String>(
                  value:ProductsValue ,
                  underline: Container(
                   height: 2,
                  color: Colors.transparent,
                  ),
        onChanged: (String? value) {
        // This is called when the user selects an item.
        setState(() {
          ProductsValue = value!;
        });
       },
      items: Products.map<DropdownMenuItem<String>>((String value) {
        return DropdownMenuItem<String>(
          value: value,
          child: Text(value),
        );
      }).toList(),
                  ),
              ),

           Padding(
             padding: const EdgeInsets.only(left: 20,right: 20),
             child: DropdownButton <String>(
          value:ResourcesValue ,
          underline: Container(
             height: 2,
          color: Colors.transparent,
          ),
        onChanged: (String? value1) {
        // This is called when the user selects an item.
        setState(() {
          ResourcesValue = value1!;
        });
       },
      items: Resources.map<DropdownMenuItem<String>>((String value1) {
        return DropdownMenuItem<String>(
          value: value1,
          child: Text(value1),
        );
      }).toList(),
                  ),
           ),


           DropdownButton <String>(
          value:HelpValue ,
          underline: Container(
           height: 2,
          color: Colors.transparent,
          ),
        onChanged: (String? value2) {
        // This is called when the user selects an item.
        setState(() {
          HelpValue = value2!;
        });
       },
      items: Helps.map<DropdownMenuItem<String>>((String value2) {
        return DropdownMenuItem<String>(
          value: value2,
          child: Text(value2),
        );
      }).toList(),
                ),

            ], ),
      actions: [
        TextButton(onPressed: () {}, child: Text("Talk to an expert?",style: TextStyle(color: Colors.black),)),
        Padding(
          padding: const EdgeInsets.all(10),
          child: ElevatedButton(onPressed: () {},style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
        ),
                    backgroundColor: Colors.black,
                    foregroundColor: Colors.black,
                    elevation: 0,
                    side: const BorderSide(
                      width: 1.0,
                      color: Colors.grey,
                    )
                    ),
         
           child: Text("   SIGN IN  ",style: TextStyle(color: Colors.white),)),
        ),

         Padding(
          padding: const EdgeInsets.only(top:10,bottom: 10,right: 40),
          child: ElevatedButton(onPressed: () {},style: ElevatedButton.styleFrom(
            shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0)
        ),
                    backgroundColor: Colors.transparent,
                    foregroundColor: Colors.black,
                    elevation: 0,
                    side: const BorderSide(
                      width: 1.0,
                      color: Colors.grey,
                    )
                    ),

           child: Text("  LOG IN   ")),
        ),
        
      ],
),
   
    body: ListView(
      children: [
      Column(
        children: [
        Container(
        width: double.infinity,
        child: Image.asset('assets/img/img1.png',fit: BoxFit.fill,),
       ),
       SizedBox(height: 100,),
       Container(
        width: double.infinity,
        height: 220,
       // color: Color.fromARGB(255, 98, 181, 223),
        child: Row(
           mainAxisAlignment: MainAxisAlignment.spaceAround,
           crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(height:double.infinity,width: 250,
            decoration: BoxDecoration(
             border: Border.all(color: Colors.grey)
             ),
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('DAISY I GREEN'),
                Padding(
                  padding: const EdgeInsets.only(top: 20,bottom: 10),
                  child: Text('What A Game-Changer! Guests Are Having An Amazing Experience And its Reflected In Our Revenue '),
                ),
                ListTile(
                  leading:CircleAvatar(
                    backgroundImage: NetworkImage('https://content.api.news/v3/images/bin/38f5d08d5267e589a29aea06eb412137'),
                  ),
                  title:Text("Prue Freeman") ,
                  subtitle:Text("founder"),
                )
              ]),
            ),
            ) ,
              

            Container(height:double.infinity,width: 250,
            decoration: BoxDecoration(
             border: Border.all(color: Colors.grey)
             ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('ballie ballerson'),
                Padding(
                  padding: const EdgeInsets.only(top: 10,bottom: 10),
                  child: Text("Storekit Is The Perfect Tool For Managing Operations, Especially During A Staff Shortage. We ve Seen A Huge Increase In Upselling, With No Extra Staff!"),
                ),
                ListTile(
                  leading:CircleAvatar(
                    backgroundImage: NetworkImage('https://media.gettyimages.com/id/78951681/photo/sport-football-circa-1980s-london-england-george-armstrong-arsenal-reserve-team-manager.jpg?s=612x612&w=gi&k=20&c=v_-brzgQ4bRsxXh0cfm1ZaKcij-e5_yIQsaOkA09SjA='),
                  ),
                  title:Text("George Armstrong") ,
                  subtitle:Text("Managing Director"),
                )
              ]),
            ),
            ) ,

          Container(height:double.infinity,width: 250,
            decoration: BoxDecoration(
             border: Border.all(color: Colors.grey)
             ),
            child: Padding(
              padding: const EdgeInsets.all(15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text('PIZZA PILGRIMS'),
                Padding(
                  padding: const EdgeInsets.only(top: 20,bottom: 10),
                  child: Text("We Tried And Tested A Lot Of Other Solutions, But Storekit WasBy Far The Best Fit For Our Business Needs, It's So Simple!"),
                ),
              const  ListTile(
                  leading:const CircleAvatar(
                    backgroundImage:const NetworkImage('https://media.licdn.com/dms/image/C5603AQEqrLkk1logGg/profile-displayphoto-shrink_800_800/0/1517622477859?e=2147483647&v=beta&t=jkp9ujiG3grn1NJs90nRFVX6yRMGup5l2eRfaU2ZSEk'),
                  ),
                  title:const Text("Thom Elliot") ,
                  subtitle:Text("Co-founder"),
                )
              ]),
            ),
            ) ,

          ],
        ),
       ),
       SizedBox(height:50,),
       

        Padding(
          padding: const EdgeInsets.all(35.0),
          child: Container(
            width: double.infinity,
            height: 450,
           
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                 Container(height: double.infinity,width:500,
                 child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const  Text('FOR BUSINESSES OF ALL SIZES',style: TextStyle(fontSize:15,color: Colors.black),),
                    const  Text('ORDERING\nAND PAYMENT\nMADE EASY',style: TextStyle(
                        fontSize: 60,
                        fontWeight: FontWeight.w900,
                        color: Colors.black
                      ),),
                     Padding(
                       padding: const EdgeInsets.all(15.0),
                       child: const Text('Give your guests the ultimate flexibility, and keep them\ncoming back for more using storekits intuitive order and\n pay experience.',),
                     ),

                      Padding(
                        padding: const EdgeInsets.only(left: 30,bottom: 10),
                        child: Container(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              TextButton(onPressed: () {}, child:const Text('Order & Pay',style: TextStyle(color: Colors.black),)),
                              TextButton(onPressed: () {}, child:const Text('Pay-at-table',style: TextStyle(color: Colors.black))),
                              TextButton(onPressed: () {}, child:const Text('Delivery & Pickup',style: TextStyle(color: Colors.black))),
                            ],
                          ),
                        ),
                      ),

                      Row(
                        children: [
                          Container(
                            height: 40,
                            width: 70,
                            color: Colors.black,
                            child: Center(child:const Text("SIGN UP",style: TextStyle(color: Colors.white),)),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(left: 20),
                            child: TextButton(onPressed: (){}, child:const Text('BOOK A DEMO',style: TextStyle(color: Colors.black),)),
                          )
                        ],
                      )
                 ]),
                 ),
                 Padding(
                   padding: const EdgeInsets.only(left: 20),
                   child: Container(
                    height: double.infinity,
                    width: 350,
                   child: Image.asset('assets/img/web2.png',fit: BoxFit.fill,),
                   ),
                 ),
              ],
            ),
          ),
        ),
           



       SizedBox(height:50,),

      Padding(
          padding: const EdgeInsets.all(35.0),
          child: Container(
            width: double.infinity,
            height: 500,
           
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Container(
                 height: double.infinity,
                 width: 450,
                child: Image.asset('assets/img/web3.png',fit: BoxFit.fill,),
                ),
                 Container(height: double.infinity,width:400,
                 child: Padding(
                   padding: const EdgeInsets.only(left: 10),
                   child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const  Text('FOR AMBITIOUS OPERATORS',style: TextStyle(fontSize:15,color: Colors.black),),
                      const  Text('SCALE \nOPERATIONS \n& SIMPLIFY \nSERVICE',style: TextStyle(
                          fontSize: 60,
                          fontWeight: FontWeight.w900,
                          color: Colors.black
                        ),),
                       Padding(
                         padding: const EdgeInsets.all(15.0),
                         child: const Text('Bolster your brand and build your business with \nstorekit s intuitive technology. Increase revenue and\ndrive growth by connecting with customers on your terms.',),
                       ),
                            Container(
                              height: 40,
                              width: 150,
                              color: Colors.black,
                              child: Center(child:const Text("BOOK A DEMO",style: TextStyle(color: Colors.white),)),
                            ),
                            
                          ],
                        ),
                 )
                
                 ),
                 
              ],
            ),
          ),
        ),
      
      SizedBox(height: 50,),

      Container(
        width: double.infinity,
        //height: 100,
        color:Colors.grey,
        child: Padding(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text('Get the recipe for growth',style: TextStyle(
                fontSize: 40,
                fontWeight: FontWeight.w800,
                color: Colors.black
              ),),
              Text('Our venue partners see up to 30% increase on average spend immediately after going live with storekit.'),
              Text('Well help you engage directly with customers to keep them coming back for more.'),

                Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround ,       
          children: [
                    Column(
                      children: [
                        Text('3x',style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                          color: Colors.black
                        ),),
                        Text('Increase In Direct Online And In-'),
                        Text('Venue Revenue')
                      ],
                    ),
                    Column(
                      children: [
                        Text('+400%',style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                          color: Colors.black
                        )),
                        Text('Tips To Keep Your Team Motivated')
                      ],
                    ),
                    Column(
                      children: [
                        Text('#1',style: TextStyle(
                          fontSize: 50,
                          fontWeight: FontWeight.w900,
                          color: Colors.black
                        )),
                        Text('UK Market Leader In Mobile'),
                        Text('Ordering')
                      ],
                    )
                  ],
                )
            ],
          ),
        ),
      ),
      
      SizedBox(height: 30,),

      Padding(
        padding: const EdgeInsets.all(35.0),
        child: Column(
          children: [
            Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('CASE STUDIES',style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text('Here how we ve helped'),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(width:220,height: 250,
                        child: Column(
                          children: [
                            Container( height: 130,width: double.infinity,child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcT_wXK2tOYCxdKKOK-Qm5-MANjD0ws7i6l7wqhuNrY9ioqO17SB',fit: BoxFit.fill,)),
                            SizedBox(
                              child:
                                 Padding(
                                   padding: const EdgeInsets.only(top: 10),
                                   child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('NUGS '),
                                      Icon(Icons.arrow_back)
                                    ],
                                   ),
                                 )
                               
                            )
                          ],
                        ),
                        ),

                        Container(width:220,height: 250,
                        child: Column(
                          children: [
                            Container( height: 130,width: double.infinity,child: Image.network('https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRX9m6xQK0IEwxsb0wdaWJtBr2YAupg_-_5Pi_bGjS6OHav-57a',fit: BoxFit.fill,)),
                            SizedBox(
                              child:
                                 Padding(
                                   padding: const EdgeInsets.only(top: 10),
                                   child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Bussey Rooftop Bar'),
                                      Icon(Icons.arrow_back)
                                    ],
                                   ),
                                 )
                               
                            )
                          ],
                        ),
                        ),
                        
                        Container(width:220,height: 250,
                        child: Column(
                          children: [
                            Container( height: 130,width: double.infinity,child: Image.network('https://encrypted-tbn2.gstatic.com/images?q=tbn:ANd9GcRC3j2gSzBuMEybhvoPkWIkjxob8-6PLKBU1LNt9x-c2PeCj8Mk',fit: BoxFit.fill,)),
                            SizedBox(
                              child:
                                 Padding(
                                   padding: const EdgeInsets.only(top: 10),
                                   child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text('Ballie Ballerson'),
                                      Icon(Icons.arrow_back)
                                    ],
                                   ),
                                 )
                               
                            )
                          ],
                        ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

 

          Container(
              width: double.infinity,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('MAXIMUM IMPACT',style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.black
                  ),),
                  Padding(
                    padding: const EdgeInsets.only(bottom: 10),
                    child: Text('Independent or multi-site venue? Well adjust to all of your business needs.'),
                  ),
                  Container(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(width:220,height: 250,
                        child: Column(
                          children: [
                            Container( height: 130,width: double.infinity,child: Image.network('https://encrypted-tbn1.gstatic.com/images?q=tbn:ANd9GcSkcjAmk-liq2jE3FUXYxoIXEvRMrEkZQHkbD2v2J_TrrFIlWUJ',fit: BoxFit.fill,)),
                            SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10,bottom: 10),
                                    child: Text('Tailored Onboarding',style:TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                  Text('You Have Regular Training Calls And Access To Our Technical Implementation Specialists. We re POS Experts, And Did We Mention We Do Hardware Too?')
                                ],
                              ),
                            )
                          ],
                        ),
                        ),

                        Container(width:220,height: 250,
                        child: Column(
                          children: [
                            Container( height: 130,width: double.infinity,child: Image.network('https://encrypted-tbn3.gstatic.com/images?q=tbn:ANd9GcQp1SZaLVBBN35HYdueHN9yKTglhOQd2wJEIvyUqAE2fzqr4Mii',fit: BoxFit.fill,)),
                            SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10,bottom: 10),
                                    child: Text('Account Management',style:TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                  Text('Your Dedicated Account Manager Will Be With You From Implementation And Beyond. Well Get To Know Your Goals And Build Your Tailor-Made Plan.')
                                ],
                              ),
                            )
                          ],
                        ),
                        ),
                        
                        Container(width:220,height: 250,
                        child: Column(
                          children: [
                            Container( height: 130,width: double.infinity,child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRxxD1GEAKJdSk01jqKE-mdx6SL4pJK2pJkfun19-Ingd5DlnZG',fit: BoxFit.fill,)),
                            SizedBox(
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(top: 10,bottom: 10),
                                    child: Text('Exclusive Online Community',style:TextStyle(fontWeight: FontWeight.bold),),
                                  ),
                                  Text('You Have Access To Our Online Community Of Power Users. Share Knowledge, Network And Find Tips On The How-To Of Hospitality.')
                                ],
                              ),
                            )
                          ],
                        ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),

            SizedBox(height: 100,),
            
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SizedBox(
                  height: 300,
                  width: 350,
                    child: Image.network('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVJfdZaXJ_yHmt-h6Wax03CEs59J8086IfL7wq_T5hltGfNufL',fit: BoxFit.fill,),
                ),
                SizedBox(
                  width: 350,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('1 met with 3 or 4 storekit team members and it immediately felt like a slick operation. We talked about the solution, and our goals. The team was so transparent. It all started to come together from that first day we spoke'),
                      Padding(
                        padding: const EdgeInsets.only(top:8.0),
                        child: Text('Josh, Bar Manager, The Bussey'),
                      )
                    ],
                  ),
                )
              ],
            )

          ],
        ),
      ),
      
      //  bottom 
      Container(
        height: 550,
        width: double.infinity,
        color: Colors.black,
        child:Padding(
          padding: const EdgeInsets.only(bottom: 50,top: 50,left: 60,right: 100),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                    children: [
                      Text('storekit',style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: Colors.white
                  ),),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Find Products',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      SizedBox(height: 10,),
                      Text('Find Products',style: TextStyle(color: Colors.white),),
                      SizedBox(height: 10,),
                      Text('Free Digital Menu',style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10,),
                      Text('Sell With Storekit ',style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10,),
                      Text('Order And Pay',style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10,),
                      Text('Pay At Table',style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10,),
                      Text('Delivery & Pickup',style: TextStyle(color: Colors.white))
                      
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Resources',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      SizedBox(height: 10,),
                      Text('Demo Store',style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10,),
                      Text('Services Hub  ',style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10,),
                      Text('QR Code Styles',style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10,),
                      Text('Maturity',style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10,),
                      Text('Assessment',style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10,),
                      Text('Venue Insider',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      SizedBox(height: 10,),
                      Text('Guides',style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10,),
                      Text('Case Studies ',style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10,),
                      Text('Served With',style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10,),
                      Text('Marketing',style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10,),
                      Text('Resources',style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10,),
                      Text('Sitemap',style: TextStyle(color: Colors.white)),
                     
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Partners',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      SizedBox(height: 10,),
                      Text('Become A Partner',style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10,),
                      Text('Integration',style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10,),
                      Text('Marketplace',style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10,),
                      Text('Certified Partner',style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10,),
                      Text('Directory',style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                   // mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Text('Social',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      SizedBox(height: 10,),
                      Text('Community',style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10,),
                      Text('Newsletter',style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10,),
                      Text('Linkedin',style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10,),
                      Text('Reviews',style: TextStyle(color: Colors.white)),
                      SizedBox(height: 10,),
                      Text('Refer & Earn',style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Legal',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.white),),
                      Text('Terms',style: TextStyle(color: Colors.white)),
                    ],
                  ),
                  
                ],
              ),
              SizedBox(height: 80,),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                child: Row(
                  children: [
                    CircleAvatar(child: Icon(Icons.whatsapp,color: Colors.white,),backgroundColor: Colors.grey,),
                    Padding(
                      padding: const EdgeInsets.only(left: 20,right: 20),
                      child: CircleAvatar(child: Icon(Icons.facebook,color: Colors.white),backgroundColor: Colors.grey,),
                    ),
                    CircleAvatar(child: Icon(Icons.link,color: Colors.white,),backgroundColor: Colors.grey,),
                  ],
                ),
              ),
              Text('© 2023 Storekit.com All rights reserved',style: TextStyle(color: Colors.white),)
                ],
              )
            ],
          ),
        ) ,
       
      )

      ]),]
    ),
    
    );  
  }
}


// Container(
//       width: double.infinity,
//       child: Image.asset('assets/img/img1.png',fit: BoxFit.fill,),
//      )