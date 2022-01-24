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
  var mon_name;
  var mon_img_link;

}