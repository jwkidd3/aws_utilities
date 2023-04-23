#!/bin/bash

while read user

do

password="CISCO1234!"

aws iam create-user --user-name "$user"

aws iam attach-user-policy --user-name="$user" --policy-arn=arn:aws:iam::aws:policy/AdministratorAccess

aws iam create-login-profile --user-name="$user" --password="$password" 

echo "created $user with password $password"

done < users.txt
