
echo "image" > 119_CubeImage.csv
echo "image" > 120a_CubeImage.csv
echo "image" > 120b_CubeImage.csv
echo "image" > 120c_CubeImage.csv
echo "image" > 120d_CubeImage.csv
echo "image" > 122_CubeImage.csv
echo "image" > 123_CubeImage.csv
echo "image" > 124a_CubeImage.csv
echo "image" > 124b_CubeImage.csv
echo "image" > 131a_CubeImage.csv
echo "image" > 131b_CubeImage.csv
echo "image" > 131c_CubeImage.csv
echo "image" > 132_CubeImage.csv
echo "image" > 133_CubeImage.csv

aws s3 ls s3://wbg-geography01/GEP/DRONE/LIMA/119_CubeImage/ | awk '{print $4}'  >> 119_CubeImage.csv
aws s3 ls s3://wbg-geography01/GEP/DRONE/LIMA/120a_CubeImage/ | awk '{print $4}'  >> 120a_CubeImage.csv
aws s3 ls s3://wbg-geography01/GEP/DRONE/LIMA/120b_CubeImage/ | awk '{print $4}'  >> 120b_CubeImage.csv
aws s3 ls s3://wbg-geography01/GEP/DRONE/LIMA/120c_CubeImage/ | awk '{print $4}'  >> 120c_CubeImage.csv
aws s3 ls s3://wbg-geography01/GEP/DRONE/LIMA/120d_CubeImage/ | awk '{print $4}'  >> 120d_CubeImage.csv
aws s3 ls s3://wbg-geography01/GEP/DRONE/LIMA/122_CubeImage/ | awk '{print $4}'  >> 122_CubeImage.csv
aws s3 ls s3://wbg-geography01/GEP/DRONE/LIMA/123_CubeImage/ | awk '{print $4}'  >> 123_CubeImage.csv
aws s3 ls s3://wbg-geography01/GEP/DRONE/LIMA/124a_CubeImage/ | awk '{print $4}'  >> 124a_CubeImage.csv
aws s3 ls s3://wbg-geography01/GEP/DRONE/LIMA/124b_CubeImage/ | awk '{print $4}'  >> 124b_CubeImage.csv
aws s3 ls s3://wbg-geography01/GEP/DRONE/LIMA/131a_CubeImage/ | awk '{print $4}'  >> 131a_CubeImage.csv
aws s3 ls s3://wbg-geography01/GEP/DRONE/LIMA/131b_CubeImage/ | awk '{print $4}'  >> 131b_CubeImage.csv
aws s3 ls s3://wbg-geography01/GEP/DRONE/LIMA/131c_CubeImage/ | awk '{print $4}'  >> 131c_CubeImage.csv
aws s3 ls s3://wbg-geography01/GEP/DRONE/LIMA/132_CubeImage/ | awk '{print $4}'  >> 132_CubeImage.csv
aws s3 ls s3://wbg-geography01/GEP/DRONE/LIMA/133_CubeImage/ | awk '{print $4}'  >> 133_CubeImage.csv


rows=$(wc -l < 119_CubeImage.csv) && (( num=rows-1))
echo "119_CubeImage.csv , $num"

rows=$(wc -l < 120a_CubeImage.csv) && (( num=rows-1))
echo "119_Cube_Image.csv , $num"

rows=$(wc -l < 120b_CubeImage.csv) && (( num=rows-1))
echo "120b_CubeImage.csv , $num"

rows=$(wc -l < 120c_CubeImage.csv) && (( num=rows-1))
echo "120c_CubeImage.csv , $num"

rows=$(wc -l < 120d_CubeImage.csv) && (( num=rows-1))
echo "120d_CubeImage.csv , $num"

rows=$(wc -l < 122_CubeImage.csv) && (( num=rows-1))
echo "122_CubeImage.csv , $num"

rows=$(wc -l < 123_CubeImage.csv) && (( num=rows-1))
echo "123_CubeImage.csv , $num"

rows=$(wc -l < 124a_CubeImage.csv) && (( num=rows-1))
echo "124a_CubeImage.csv , $num"

rows=$(wc -l < 124b_CubeImage.csv) && (( num=rows-1))
echo "124b_CubeImage.csv , $num"

rows=$(wc -l < 131a_CubeImage.csv) && (( num=rows-1))
echo "131a_CubeImage.csv , $num"

rows=$(wc -l < 131b_CubeImage.csv) && (( num=rows-1))
echo "131b_CubeImage.csv , $num"

rows=$(wc -l < 131c_CubeImage.csv) && (( num=rows-1))
echo "131c_CubeImage.csv , $num"

rows=$(wc -l < 132_CubeImage.csv) && (( num=rows-1))
echo "132_CubeImage.csv , $num"

rows=$(wc -l < 133_CubeImage.csv) && (( num=rows-1))
echo "133_CubeImage.csv , $num"
rm *.csv