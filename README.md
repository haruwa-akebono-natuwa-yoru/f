# f
CLI file manager for audio/video files

Usage: f (main program)
f [s|r|2|b|c] [key] (key2) (key3) :  Search
f p                       : Print now play
f t [key] [tags]          : Set tags by key
f i [filename]            : Input New Data
s:order by filename
r:order by random()
2:order by played datetime
b:order by birth
c:order by play counter


Usage: fu (utility)
fu p|n|r|c                : Listing
fu d [dir name]           : Listing by dir name
fu tc                     : Color test print
fu z                      : Check db consistency
fu h                      : Select by history
p:order by played datetime
n:order by birth
r:order by random
c:order by counter
