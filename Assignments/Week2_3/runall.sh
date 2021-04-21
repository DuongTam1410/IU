cd Documents/GitHub/IU/Assignments/Week2/Python/
python3 Convert_Img2Binary.py
cp Dataset/Text/red8b.txt fullex/red8b.txt
cp Dataset/Text/blue8b.txt fullex/blue8b.txt
cp Dataset/Text/green8b.txt fullex/green8b.txt
cd fullex
vsim -c -do run.do
cd ..
python3 Image_Img2Float.py
python3 Image_Color2Gray.py
python3 Sosanh.py
