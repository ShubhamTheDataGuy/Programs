function action()
{
    const fullnumber=document.getElementById("phno").value

    let firstSplit=fullnumber.split(")");

    const areaCode=firstSplit[0].substring(1).trim();
    let secondSplit=firstSplit[1].split("-");
    const prefix_code=secondSplit[0].trim();
    const line_number=secondSplit[1].trim();

    document.getElementById("area code").innerHTML=areaCode;
    document.getElementById("prefix code").innerHTML=prefix_code;
    document.getElementById("line number").innerHTML=line_number;



}