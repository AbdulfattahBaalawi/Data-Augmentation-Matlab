
function AugmentData()

jpgImagesDir = fullfile('E:\train\pro2020\dataset', '*.jpg');
jpg_files = dir('E:\train\pro2020\dataset\*.jpg');
all_Image = dir('E:\train\pro2020\dataset\*.jpg');  
for i=1:200
    
    s=strcat(num2str(i),'.jpg');
    fileName = ['E:\train\pro2020\dataset\',all_Image(i).name];
   

I=imread(fileName);
I=imresize(I,[224 224]);
figure, imshow(I);
        
for jj=1:8
     J = imcrop
     jj=jj*i+(2*jj)+(6*i);
     s=strcat(num2str(jj),'acne.jpg');
     ji=imresize(J,[224 224]);
     j=ji;
     imwrite(j,s);
     s=strcat(num2str(jj),'_1acne.jpg');
     j=imrotate(j,90); 
     j=imresize(j,[224 224]);
        imwrite(j,s);
     j=imrotate(ji,180);
     s=strcat(num2str(jj),'_2acne.jpg');
      j=imresize(ji,[224 224]);
        imwrite(j,s);
        j=imrotate(ji,270);
        s=strcat(num2str(jj),'_3acne.jpg');
       j=imresize(j,[224 224]); imwrite(j,s);
        j=imrotate(ji,180);
        s=strcat(num2str(jj),'_4acne.jpg');
       j=imresize(j,[224 224]); imwrite(j,s);
        s=strcat(num2str(jj),'_5acne.jpg');
        j= imsharpen(ji);
        imwrite(j,s);

        j = histeq(ji);
        s=strcat(num2str(jj),'_6acne.jpg');
        imwrite(j,s);
end
end
end

