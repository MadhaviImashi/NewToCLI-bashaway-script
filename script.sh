#                             Online Bash Shell.
#                 Code, Compile, Run and Debug Bash script online.
# Write your code in this editor and press "Run" button to execute it.

# Write your script here

echo "Started time:" $(date +"%T")
echo "what is the team name?"
read teamName

echo "timestamps: " $(date +"%T")

#get details of each team member
do=true
count=1
# declare -a TeamMember
declare -a team

while $do ; do
    echo "Enter the name of member - $count."
    read mName
    # teamMember[0] = mName
    
    echo "What is the NIC number? "
    read mNic
    # teamMember[$count, 2] = mNic

    echo "What is the phone number? "
    read mMobile
    # teamMember[$count, 3] = mMobile

    echo "What is your home address? "
    read mAddress
    # teamMember[$count, 4] = mAddress
    
    teamMember[0] = $mName 
    teamMember[1] = $mNic
    teamMember[2] = $Mobile
    teamMember[3] = $mAddress
    echo ${teamMember[0]}

    #end of getting details of current student
    echo "timestamps: " $(date +"%T")
    echo "Do you want to add another member? (y/n)"
    read continue
    if [[ "$continue"=="y" ]] || [[ "$continue"=="Y" ]]; then
        count=$((count+1))
        team += $TeamMember #append the member to the team array
        continue
    elif [[ "$continue"=="n" ]] || [[ "$continue"=="N" ]]; then
        do=false
        break
    else
        do=false
    fi
done

echo "Ended time: " $(date +"%T")

#save member details in the text file
echo "Team Name:  $teamName" > $teamName.txt

for i in {1..$count}
do
    member = team[$i-1]
    
    echo " " >> $teamName.txt
    echo "Member - $i" >> $teamName.txt
    echo "Name - " ${member[0]} >> $teamName.txt
    echo "NIC - " ${member[1]} >> $teamName.txt
    echo "Mobile Number - " ${member[2]} >> $teamName.txt
    echo "Address - " ${member[3]} >> $teamName.txt
done
