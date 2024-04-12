BEGIN{
    FS=","
    OFS=","
    temp=0
    Net=0
    Agriculture=0
    Banking=0
    Film=0
    Manufacturing=0
    Railways=0
}

{
    print $0
    if(temp != 0){
        if($3 == "Agriculture"){
            Agriculture += $4
        }
        else if($3 == "Banking"){
            Banking += $4
        }
        else if($3 == "Film"){
            Film += $4
        }
        else if($3 == "Manufacturing"){
            Manufacturing += $4
        }
        else if($3 == "Railways"){
            Railways += $4
        }
        Net += $4
    }
    
    temp++
}

END{
    print "====="
    print "Net: "Net "\n" "Agriculture: "Agriculture "\n" "Banking: "Banking "\n" "Film: "Film "\n" "Manufacturing: "Manufacturing "\n" "Railways: "Railways
}