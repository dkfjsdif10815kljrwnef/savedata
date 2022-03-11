import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ISProgressDialog{
  final BuildContext context;
  ISProgressDialog(this.context);

  void show({String status}){
    showDialog(
      context: context,
      barrierDismissible:true, // 박스 이외의 영역을 탭하면 닫힐지 여부
      builder: (context) => Center(
        child: Container(
            padding : EdgeInsets.only(top:26.0,left:26.0,right:26.0), //border안쪽(padding)의 여백을 위 좌우 26씩
            height: 110.0,  //박스 높이
            decoration: BoxDecoration(
              color: Colors.black87,    //박스안의 색상
              borderRadius: BorderRadius.circular(8.0), //테두리를 둥글게
            ),
          child: Column(
             children: [
               Padding(
                 padding: const EdgeInsets.only(bottom: 12.0),
                 child: CircularProgressIndicator(color: Colors.white,),
               ),
               Padding(
                 padding: EdgeInsets.only(bottom: 4),
                 child: Text(status, style: TextStyle(color: Colors.white, fontSize: 14),),
               ),
             ],
          )
        )
      )
    );
  }

  void dismiss(){
    Navigator.of(context).pop();
  }

}