vault_path=$1

dictionary=$(echo {p,a,s}{p,a,s}{p,a,s}{p,a,s})

words=($dictionary)
for pass in "${words[@]}"
do
  echo -n "Trying $pass "
  echo $pass > vaultpass

  ansible-vault decrypt $vault_path --vault-password-file vaultpass &>/dev/null
  if [ $? -eq 0 ]; then
    echo 'success'
    echo "Password is: $pass"
    break
  else
    echo "fail"
  fi
done
rm vaultpass
