function check()
{
    const countries=document.getElementById("countries").value;
    const capitals=document.getElementById("capitals").value;
    const result=document.getElementById("result");

    if((countries=="india" && capitals=="delhi") || (countries=="usa" && capitals=="washington") || (countries=="uk" && capitals=="london")){
        document.getElementById("result").innerHTML="correct";
    }
    else{
        document.getElementById("result").innerHTML="wrong";
    }
}