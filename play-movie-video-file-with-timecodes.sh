ffplay -vf "drawtext=text='%{pts\:hms}':fontcolor=white:shadowcolor=black:shadowx=3:shadowy=3:fontsize=48:x=(w-tw)/2:y=h-(2*lh)" ${1:file.mp4}
