class Logic_of_XO
{
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

}