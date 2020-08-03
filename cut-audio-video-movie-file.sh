ffmpeg -i ${1:in.mp4} -ss ${2:hh:mm:ss} -to ${3:hh:mm:ss} -c copy ${4:out.mp4}
