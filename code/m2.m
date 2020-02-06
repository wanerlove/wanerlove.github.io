
clc
clear
b1= fileread('b1.html');
b2= fileread('b2.html');
b3= fileread('b3.html');
b4= fileread('b4.html');

for n=2020:2030
    
    for y=1:12
        
        nz=num2str(n);
        yz=bl(y);
        fn=[nz,yz,'.html'];
        wy=[];
        wy=[b1,'Year:',nz,b2,'Month:',yz,b3];
        
        for r=1:js(n,y)
            rz=bl(r);
            wy=[wy,'<td><a href="../../',nz,'/',yz,'/',nz,yz,rz,'.html"><FONT size=5>',num2str(r),'/non</a></td>',10];

            if mod(r,7)==0&& r>2
                wy=[wy,'</tr> ',10,' <tr>',10];
            end
        
        end
        wy=[wy,'</tr> ',10,' <tr>',10,b4];
        fid=fopen([nz,'\',yz,'\',nz,yz,'.html'],'wt');
        fprintf(fid,'%s',wy);
        fclose(fid);
        
    end
    
    
end