for i in *-auphonic.wav; do
    [ -f "$i" ] || break
	curl -F data_file=@$i -F model=pl "https://api.speechmatics.com/v1.0/user/60343/jobs/?auth_token=NGNjOGMyMDEtMDJhNC00ZWQ4LTllMjEtMjc5MzY2MzY0NzNk"
done