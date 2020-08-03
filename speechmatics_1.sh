curl -F data_file=@test.wav -F notification=email -F model=pl "https://api.speechmatics.com/v1.0/user/60343/jobs/?auth_token=NGNjOGMyMDEtMDJhNC00ZWQ4LTllMjEtMjc5MzY2MzY0NzNk"


curl "https://api.speechmatics.com/v1.0/user/60343/jobs/11038844/transcript?format=txt&auth_token=NGNjOGMyMDEtMDJhNC00ZWQ4LTllMjEtMjc5MzY2MzY0NzNk"