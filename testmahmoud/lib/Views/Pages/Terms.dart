import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:testmahmoud/ViewModel/Terms_Cubit/TermsCubit.dart';
import 'package:testmahmoud/ViewModel/Terms_Cubit/TermsState.dart';
import 'package:simple_html_css/simple_html_css.dart';
import '../Component/edittext.dart';

class About extends StatelessWidget {
  const About({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    return BlocProvider(
        create: (context)=>TermsCubit()..GetTerms(),
        child:BlocConsumer<TermsCubit,TermsState>(
          listener: (context,state){},
          builder: (context,state){
            var cubit=TermsCubit.GetInstance(context);
            print(cubit.termsModel!.terms);
            var myRichText;
            if(cubit.termsModel!=null)
             myRichText = HTML.toRichText(context,cubit.termsModel!.terms);
            print(myRichText);
            return Scaffold(
              backgroundColor: Colors.grey[100],
              appBar: AppBar(
                backgroundColor: Colors.transparent,
                centerTitle: true,
                elevation: 4,
                leading: IconButton(
                  onPressed: () {},
                  icon: Icon(
                    Icons.arrow_back_ios,
                    size: 28,
                  ),
                ),
                title: EditText(
                    text: "Terms",
                    color: Colors.white,
                    fontsize: 30.0,
                    fontwight: FontWeight.bold),
              ),
              body: SingleChildScrollView(
                child: Container(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Card(
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(vertical: 1,horizontal: 5),
                                child: EditText(
                                    text: "Terms",
                                    color: Colors.black,
                                    fontwight: FontWeight.bold,
                                    fontsize: 20.0),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: EditText(
                                text:(state is TermsLoading)?"":myRichText,
                                fontsize: 15.0,
                                fontwight: FontWeight.bold,
                                color: Colors.grey[500]),
                          ),
                          SizedBox(
                            height: height * .05,
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            );
          },
        ) );
  }
}
