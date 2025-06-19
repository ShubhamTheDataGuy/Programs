function action()
{

    const str = document.getElementById("name").value;
    const number=document.getElementById("number").value();

    let vowels="aeiouAEIOU";

    for(let i=0;i<str.length;i++)
    {
        let ch=str[i];
          if(vowels.includes(ch))
          {
            document.getElementById("vowel").innerHTML=ch;
            break;
          }

    }

    
}