import 'dart:math';// for math operations,random
class Logic_of_XO
{
  int _make_default_move(var arr)
  {
    int a=10;
    for(int i=0;i<9;i++)
      {
        if(arr[i]==" ")
        {
          a = i;
          break;
        }
      }
    return a;
  }
  int Chk_user_won(var arr)
  {
    if((arr[0]=="x" && arr[1]=="x"&& arr[2]=="x")&&(arr[0]=="x" && arr[3]=="x" && arr[6]=="x")&&(arr[0]=="x"&& arr[4]=="x" && arr[8]=="x")&&(arr[3]=="x" && arr[4]=="x" && arr[5]=="x")&&(arr[2]=="x" && arr[4]=="x" && arr[6]=="x")&&(arr[1]=="x" && arr[4]=="x" && arr[7]=="x")&&(arr[2]=="x" && arr[5]=="x" && arr[8]=="x")&&(arr[6]=="x"&& arr[7]=="x"&& arr[8]=="x"))
    {
    return 1;
    }
  else if((arr[0]=="o" && arr[1]=="o"&& arr[2]=="o")&&(arr[0]=="o"&& arr[3]=="o"&& arr[6]=="o")&&(arr[0]=="o"&& arr[4]=="o" && arr[8]=="o")&&(arr[3]=="o" && arr[4]=="o" && arr[5]=="o")&&(arr[2]=="o" && arr[4]=="o" && arr[6]=="o")&&(arr[1]=="o" && arr[4]=="o" && arr[7]=="o")&&(arr[2]=="o" && arr[5]=="o" && arr[8]=="o")&&(arr[6]=="o"&& arr[7]=="o"&& arr[8]=="o"))
    {
    return 0;
    }
    else if(Check_Game_over(arr))
    {
    return 2;
    }
    else
      {
        return 3;
      }
  }


  bool Check_Game_over(var arr)
  {
    var counter=0;
    for(var x in arr)
      {
        if(x==" ")
        {
          counter=counter+1;
        }
      }
    if(counter==0)
      {
        return true;
      }
    else
      {
        return false;
      }

  }

  List mk_move(var arr)
  {
    if((arr[0]=='o'&& arr[1]==" " && arr[2]=="o")||(arr[4]=='o'&& arr[1]==" " && arr[7]=="o"))//for element 1
        {
      arr[1]='o';
    }
    else if((arr[1]=='o'&& arr[0]==" " && arr[2]=="o")||(arr[3]=='o'&& arr[0]==" " && arr[6]=="o")||(arr[4]=='o'&& arr[0]==" " && arr[8]=="o"))// for element 0
        {
      arr[0]='o';
    }
    else if((arr[0]=='o'&& arr[2]==" " && arr[1]=="o")||(arr[4]=='o'&& arr[2]==" " && arr[6]=="o")||(arr[5]=='o'&& arr[2]==" " && arr[8]=="o")) // for element 2
        {
      arr[2]='o';
    }
    else if((arr[0]=='o'&& arr[3]==" " && arr[6]=="o")||(arr[4]=='o'&& arr[3]==" " && arr[5]=="o"))// for element 3
        {
      arr[3]='o';
    }
    else if((arr[3]=='o'&& arr[4]==" " && arr[5]=="o")||(arr[0]=='o'&& arr[4]==" " && arr[8]=="o")||(arr[2]=='o'&& arr[4]==" " && arr[6]=="o")||(arr[1]=='o'&& arr[4]==" " && arr[7]=="o"))// for element 4
        {
      arr[4]='o';
    }
    else if((arr[3]=='o'&& arr[5]==" " && arr[4]=="o")||(arr[2]=='o'&& arr[5]==" " && arr[8]=="o"))// for element 5
        {
      arr[5]='o';
    }
    else if((arr[0]=='o'&& arr[6]==" " && arr[3]=="o")||(arr[7]=='o'&& arr[6]==" " && arr[8]=="o")||(arr[2]=='o'&& arr[6]==" " && arr[4]=="x"))// for element 6
        {
      arr[6]='o';
    }
    else if((arr[1]=='o'&& arr[7]==" " && arr[4]=="o")||(arr[6]=='o'&& arr[7]==" " && arr[8]=="o"))// for element 7
        {
      arr[7]='o';
    }
    else if((arr[0]=='o'&& arr[8]==" " && arr[4]=="o")||(arr[6]=='o'&& arr[8]==" " && arr[7]=="o")||(arr[2]=='o'&& arr[8]==" " && arr[5]=="o"))// for element 8
        {
      arr[8]='o';
    }
    else if((arr[0]=='x'&& arr[1]==" " && arr[2]=="x")||(arr[4]=='x'&& arr[1]==" " && arr[7]=="x"))//for element 1
        {
      arr[1]='o';
    }
    else if((arr[1]=='x'&& arr[0]==" " && arr[2]=="x")||(arr[3]=='x'&& arr[0]==" " && arr[6]=="x")||(arr[4]=='x'&& arr[0]==" " && arr[8]=="x"))// for element 0
        {
      arr[0]='o';
    }
    else if((arr[0]=='x'&& arr[2]==" " && arr[1]=="x")||(arr[4]=='x'&& arr[2]==" " && arr[6]=="x")||(arr[5]=='x'&& arr[2]==" " && arr[8]=="x")) // for element 2
        {
      arr[2]='o';
    }
    else if((arr[0]=='x'&& arr[3]==" " && arr[6]=="x")||(arr[4]=='x'&& arr[3]==" " && arr[5]=="x"))// for element 3
        {
      arr[3]='o';
    }
    else if((arr[3]=='x'&& arr[4]==" " && arr[5]=="x")||(arr[0]=='x'&& arr[4]==" " && arr[8]=="x")||(arr[2]=='x'&& arr[4]==" " && arr[6]=="x")||(arr[1]=='x'&& arr[4]==" " && arr[7]=="x"))// for element 4
        {
      arr[4]='o';
    }
    else if((arr[3]=='x'&& arr[5]==" " && arr[4]=="x")||(arr[2]=='x'&& arr[5]==" " && arr[8]=="x"))// for element 5
        {
      arr[5]='o';
    }
    else if((arr[0]=='x'&& arr[6]==" " && arr[3]=="x")||(arr[7]=='x'&& arr[6]==" " && arr[8]=="x")||(arr[2]=='x'&& arr[6]==" " && arr[4]=="x"))// for element 6
        {
      arr[6]='o';
    }
    else if((arr[1]=='x'&& arr[7]==" " && arr[4]=="x")||(arr[6]=='x'&& arr[7]==" " && arr[8]=="x"))// for element 7
        {
      arr[7]='o';
    }
    else if((arr[0]=='x'&& arr[8]==" " && arr[4]=="x")||(arr[6]=='x'&& arr[8]==" " && arr[7]=="x")||(arr[2]=='x'&& arr[8]==" " && arr[5]=="x"))// for element 8
        {
      arr[8]='o';
    }
    else
      {
        int a;
        a=_make_default_move(arr);
        if(a==10)
          {
            print("Unexpected error has occured");

          }
        else
          {
            arr[a]='o';
          }
      }
    return arr;
  }
}
class mons_of_gme
{
  var pkm_info={"name":["pkm list to be inserted"],"info":["pkm info list to inserted"],"img_link":["img links to be inserted"],"shiny_img_links":["shiny_img_link to be inserted"]};

  bool shiny_calc(var res)/** this function takes result of xo match as a paramater(input type bool) ,gives result as is shiny or not(return type bool)*/
  {
    var rate=8;
    var rdm=Random();
    var a;
    if(res)
      {
        a=rdm.nextInt(20);
      }
    else
      {
        a=rdm.nextInt(75);
      }
    if(a==rate)
    {
      return true;
    }
    else
      {
        return false;
      }
  }

  int type_of_mon(var res)
  /** this function takes result of xo match as a paramater(input type bool) ,result: gives the type of pokemon based on input(return type int
   * returns 0--> normal pokemon
   * returns 1-->starter pokemon
   * returns 2-->legendary pokemon
   * returns 3-->pesudo-legendary pokemon
   *
   * )*/
  {
    int a;
    var rdm=Random();
    if(res)
      {
        a=rdm.nextInt(10);
        if(a>=0 && a<=4)
          {
            return 1;// starter mon
          }
        else if(a>4 && a<=8)
          {
            return 3;// pesudo legend mon
          }
        else if(a>8 && a<=10)
          {
            return 2;// legendary mon
          }
        else
          {
            return 0;
          }
      }
    else {
      a = rdm.nextInt(30);
      if (a >= 0 && a <= 18) {
        return 0;
      }
      else if(a > 18 && a <= 24)
      {
        return 1;
      }
      else if(a>24 && a<=30)
        {
          return 3;
        }
      else
        {
          return 2;
        }
    }
  }





}