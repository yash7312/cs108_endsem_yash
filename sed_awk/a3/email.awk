BEGIN{
    FS=","
    OFS=","
    temp=0
}
{
    if(temp == 0){
        print $0, "Email-ID"
    }
    if(temp != 0){
        print $0,$2$4"@surveycorps.com"
    }
    
    temp++
}