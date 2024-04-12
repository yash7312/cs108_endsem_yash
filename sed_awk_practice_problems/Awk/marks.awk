BEGIN {
  FS=","  # Set field separator (FS) to comma
  OFS="\t"  # Set output field separator (OFS) to tab
}

{
	print $0
}  # Print the entire line with new separator
