BEGIN {
  FS=" "  # Set field separator (FS) to space
  OFS=";"  # Set output field separator (OFS) to semicolon
  temp=0
}

{

	ouput = $1
	f2 = "Wrong Submission format"
	f1 = "Correct Submission format"
	for( i = 1 ; i <= NF ; i++ ){
		output = output OFS $i

	}
	#if($1 ~ /Roll_Number/){
	if(temp==0){
		output = output OFS "Comments"
	}
	else if(temp==1){
		output = output OFS "-"
	}
	else{
	if(($2 ~ /^[a-zA-Z0-9_]+.cpp$/ || $2 ~ /^[a-zA-Z0-9_]+.txt$/ || $2 ~ /^[a-zA-Z0-9_]+.pdf$/) &&
	($3 ~ /^[a-zA-Z0-9_]+.cpp$/ || $3 ~ /^[a-zA-Z0-9_]+.txt$/ || $3 ~ /^[a-zA-Z0-9_]+.pdf$/) &&
	($4 ~ /^[a-zA-Z0-9_]+.cpp$/ || $4 ~ /^[a-zA-Z0-9_]+.txt$/ || $4 ~ /^[a-zA-Z0-9_]+.pdf$/)){
		output = output OFS f1
	}

	else{

		output = output OFS f2
	}}
	temp++
	print output
	output = ""
}
