ffmpeg -start_number n -i test_%d.jpg -vcodec mpeg4 test.avi

ffmpeg -start_number 30230 -i %d.jpg -vcodec mpeg4 one.avi

G0010212.JPG


ffmpeg.exe -f image2 -framerate 25 -pattern_type sequence -start_number 1234 -r 3 -i Imgp%04d.jpg -s 720x480 test.avi

ffmpeg -f image2 -framerate 25 -pattern_type sequence -start_number 0010212 -r 3 -i G%04d.JPG -s 720x480 test.avi

G0010212.JPG


