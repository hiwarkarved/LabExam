echo "0.Exit \n1.Date \n2.Cal \n3.ls \n4. pwd \n5. create a image 
\n6.list images  \n7.create a container on given image  \n8.list containers \n9.inspect  \n10stop a conatainer \n11. exec command on a cont"

while [ true ]
	read choice

do
case $choice in
	0) exit
		;;
	1) date
		;;
	2) cal 
		;;
	3) ls
		;;
	4)pwd 
		;;
	5) sudo docker image build -t myimage .
		;;
	6) sudo docker image ls
		;;	
	7) echo "Enter nam"
		read nam
		sudo docker container run -itd --name $nam -p 9090:80 httpd
		;;
	8) sudo docker container ls
		;;
		
	9) echo "enter name " 
		read name
		sudo docker container inspect $nam
		;;
	10)
		echo "enter name " 
		read nam
		sudo docker container stop $nam
		;;
	11)	echo "enter name " 
		read nam
		sudo docker exec -it $name bash
esac
done
