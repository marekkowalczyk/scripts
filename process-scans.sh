set SRC=in.pdf

set HLEN=100
set VLEN=100

%IM%convert \
  %SRC% \
  ( +clone \
    -threshold 98%% \
    +write mpr:ORG \
    +delete \
  ) \
  ( mpr:ORG \
    -negate \
    -morphology Erode rectangle:%HLEN%x1 \
    -mask mpr:ORG -morphology Dilate rectangle:%HLEN%x1 \
    +mask \
  ) \
  -compose Lighten -composite \
  ( mpr:ORG \
    -negate \
    -morphology Erode rectangle:1x%VLEN% \
    -mask mpr:ORG -morphology Dilate rectangle:1x%VLEN% \
    +mask \
  ) \
  -compose Lighten -composite \
out-edges.pdf