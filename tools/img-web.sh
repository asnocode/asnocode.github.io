# Compresses images for web, creates a thumbnail and a webp file.
#  -gaussian-blur 0.05
echo "Enter the filename with extension (banner.jpg) - "
read image ## banner.jpg
echo "Enter location (assets/images/posts/2024-02-23-Pulumi-end-to-end-on-Azure) - "
read location ## assets/images/posts/2024-02-23-Pulumi-end-to-end-on-Azure
imgfile="$location/$image"
newname='crest-iitbhu-180'
newext='png'
newimg="$location/$newname.$newext"
echo "$imgfile $newimg"
convert $imgfile -sampling-factor 4:2:0 -strip -quality 85   -interlace Plane -colorspace RGB $newimg
convert -resize 5% $newimg "$location/$newname"-thumb.$newext
cwebp $newimg -o  "$location/$newname".webp
