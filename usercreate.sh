SW_USER_I=10
while [ $SW_USER_I -le 10010 ]; do
    new_username="us1-mwp-k6_${SW_USER_I}"
    new_email="${new_username}@us1.mwp-k6.com"
    echo "Creating user: Username: $new_username, Email: $new_email"
    wp user create "$new_username" "$new_email" --user_pass="use_a_password" --role="subscriber"
    SW_USER_I=$((SW_USER_I + 1))
done
