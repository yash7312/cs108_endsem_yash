BEGIN {
  FS=","  # Set field separator (FS) to space
  OFS="\t"  # Set output field separator (OFS) to semicolon

}

{
        output=$1
	output = output OFS $2
        for(i=3;i<=NF;i++){
                output = output OFS $i
        }
        print output
        output=""
}
