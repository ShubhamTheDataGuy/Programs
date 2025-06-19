function display()
{
    const birth=document.getElementById("birthday").value;
    const day_of_month=document.getElementById("day_of_month");
    const month=document.getElementById("month");
    const year=document.getElementById("year");
    const day_of_week=document.getElementById("day_of_week");

    const info=birth.split("/");

    const dm=parseInt(info[0],10);
    const m=parseInt(info[1],10);
    const y=parseInt(info[2],10);

    const date=new Date(y,m-1,dm);

    const days = ["Sunday", "Monday", "Tuesday", "Wednesday", "Thursday", "Friday", "Saturday"];

    document.getElementById("day_of_month").innerHTML=date.getDate();
    document.getElementById("month").innerHTML=date.getMonth()+1;
    document.getElementById("year").innerHTML=date.getFullYear();
    document.getElementById("day_of_week").innerHTML=days[date.getDay()];


}