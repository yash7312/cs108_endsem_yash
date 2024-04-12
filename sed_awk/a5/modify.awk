!/^([A-Za-z]{1,}) got ([1-9]{1,}) medals in ([A-Za-z]{1,}) in ([0-9]{4})$/ {
    print $0
}
/^([A-Za-z]{1,}) got ([1-9]{1,}) medals in ([A-Za-z]{1,}) in ([0-9]{4})$/ {
    print "In " $8", "$1" got "$3" medals in "$6
}
