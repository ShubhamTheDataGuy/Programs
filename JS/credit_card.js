function validateCard()
{
   const card=document.getElementById("cardNumber").value;
   const result=document.getElementById("result");

   const length=card.length;
   const prefix1=card.substring(0,1);
   const prefix2=card.substring(0,2);
   
   if(length==16 && Number(prefix2)>=51 && Number(prefix2)<=55){
    document.getElementById("result").innerHTML="valid master card"
   }
   else if(length==13 || length==16 && Number(prefix1)==4){
    document.getElementById("result").innerHTML="valid visa"
   }
   else if(length==15 && Number(prefix2)==34 && Number(prefix2)==37){
    document.getElementById("result").innerHTML="valid american express"
   }
else{
   document.getElementById("result").innerHTML="invalid"
}
}