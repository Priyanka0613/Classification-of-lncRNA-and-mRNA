% x = textread('C:\Users\USER\Downloads\Case Study I\Amborella_trichopoda\lncRNA.fasta','%s');
% a=[];
% for i = 2:2:length(x)
%     a=[a,x(i)];
%     
% end  
% a=a';
% amb_lncrna=zeros(length(a),17);
% 
% for i=1:length(a)
%     for j=1:17
%         features = segmentation_and_fft(a(i));
%         amb_lncrna(i,j)=features(j);
%     end
% end
y = ('C:\Users\USER\Downloads\Case Study I\Amborella_trichopoda\mRNA.fasta');
fileid=fopen(y);
c=textscan(fileid,'%s');
fclose(fileid);
d=transpose(c{:});
b=[];
for j=2:2:9112
    b=[b,d(j)];     
end  
b=b';
amb_mrna=zeros(length(b),17);

for i=1:length(b)
    for j=1:17
        features = segmentation_and_fft(b(i));
        if (isinf(features(j)) || isnan(features(j)))
            features(j)=0;
            amb_mrna(i,j)=features(j);
        end
        amb_mrna(i,j)=features(j);
    end
end
