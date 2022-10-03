# Write your script here
echo "Started time:" $(date +"%T")
echo "what is the team name?"
read teamName

echo "timestamps: " $(date +"%T")

#get details of each team member
do=true
count=1
while $do ; do
    echo "Enter the name of member - $count."
    read stName
    # stName+=$count
    echo "What is the NIC number? "
    read nic
    # nic+=$count
    echo "What is the phone number? "
    read mobile
    # mobile+=$count
    echo "What is your home address? "
    read address
    # address+=$count
    #end of getting details of current student
    echo "timestamps: " $(date +"%T")
    echo "Do you want to add another member? (y/n)"
    read continue
    if [[ "$continue"=="n" ]] || [[ "$continue"=="N" ]]; then
        do=false
        break
    elif [[ "$continue"=="n" ]] || [[ "$continue"=="N" ]]; then
        count=$((count+1))
        continue
    else
        continue
    fi
done

echo "Ended time: " $(date +"%T")

#save member details in the text file
echo "Team Name:  $teamName" > $teamName.txt

for i in {1..$count}
do
    echo " " >> $teamName.txt
    echo "Member - $i" >> $teamName.txt
    echo "Name - $stName" >> $teamName.txt
    echo "NIC - $nic" >> $teamName.txt
    echo "Mobile Number - $mobile" >> $teamName.txt
    echo "Address - $address" >> $teamName.txt
done
