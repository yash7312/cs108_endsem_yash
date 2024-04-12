s/\(\s\)printf\(\s\)*(\(.*\))/\1pprint(\3)/g

ans:
s/\bprintf\(\s\)*\((.*\)/pprint\2/g
