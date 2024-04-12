BEGIN {
  FS=","  # Set field separator (FS) to space
  OFS=","  # Set output field separator (OFS) to semicolon
  temp=0
}

{
        output = $1
        output = output OFS $2
        for( i = 3 ; i <= NF ; i++ ){
                output = output OFS $i

        }
        if(temp==0){
                output = output OFS "Email-ID"
        }
        else{
                output = output OFS $2 $4 "@surveycorps.com"
        }
        temp++
        print output
        output = ""

}