timestamp=`date +%H:%M:%S`
msg="てすと@$timestamp"

apikey_production="AIzaSyDfQLP0oquc_ISGo1CpmO7CzVacm2p8ZPI"
apikey_debug="AIzaSyAagvLa4CE-ckOJYR-JP7b__S-pCVNxsCk"

api_key=$apikey_production

reg_id="APA91bFUwBHK6LIW6aEXsOV1GRnBdJh-As2qUnAgBFJUyY1drEJnAGVLZvJAF8eVDa2pGQsxqYeb9K60rng0AK5TpasghwXwwFAO28Vq8xXqkC_XfZfixlVsDdc_phzZe7UzNX9_KW2UhTjYxsqzdVrfj3fpn4Ozmw"
regid_infobar="APA91bHgiaVXjx1mG6h1HHmzwbws0D09fO6YKu2Y0ctX8VKusbtH-z67Tp3j8itCUahHMCVUXR2iIsN26qeV9IVwFvjOaMWarf1mT1yBYoU6IKhFKDGfWBJCUgHokTphwx8DAhpwLKOKJ-MF1VbA0CySautWmsdCDg"
regid_400="APA91bG0YAv6Ct-N8oJFPFws8aqyk6DHlJO9pv4k-kLKYXdb8zxTeCOO8IByyJHN4-NljfH3X66Fav0RzEKPU9WYmX4EyJLMSwuM7BPb9D6nEfONOhgAea66gLVWAfBfir93l5TbyNKrFYfBp6OordciN1ntfcjNew"
regid_400_pro="APA91bFlIKpN8sVF0aY72ZAC72OomKfH3cDyaXkyfoMvHViatBzN3IwybnT4_ro5hM4K-IUDSZTBDlaBqwWXZyaBtORalqcrx71I9Q-rK-mnCfFLHPj8EhJTMPjTOsKMDVkIGG_OyTEzZDqpzeJLXJ8C2Iv_zkhoTg"
regid_400test="APA91bFW3qMHsHVYpHwBbJdL7Kt3rahkmWH2e9pxMTfIGgANxyt6DxtXYqSiADdkeAaY6zMU2OcdTmEgZK51TRzfW83i7yk-a1duTce6Ppgz5YSg7r-5GJJSWNue2QaCmozfNUKeuZ7OWQEZD3Z9qNPneVq_ngLNjA"
regid_400pro2="APA91bFxyP8iHczNKKWY11sfP_YJ_63eowwkMSmPvOfq6YcX_QBQjjAp0kxDk5YCF-0frEeGPblnA3J36E933R2EhRMwk4qUqeV_tC59sRt7fTEsoepNo4H1wIjpAicKl_x6iek6_MSiZKeYpp0P5t7KOmtbSvcY6w"

reg_id=$regid_400pro2

curl --header "Authorization: key=$api_key" --header Content-Type:"application/json" https://android.googleapis.com/gcm/send  -d "{\"registration_ids\":[\"$reg_id\"], \"data\":{\"title\":\"A title\",\"text\":\"$msg\", \"url\":\"/post_detail/134\"}}"
echo
