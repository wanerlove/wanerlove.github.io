clc
clear 
close

p1= fileread('p1.html');
p2= fileread('p2.html');
p3= fileread('p3.html');
p4= fileread('p4.html');

for n=2020:2030
    
    for y=1:12
        eval(['mkdir',' ',num2str(n),'\',num2str(bl(y))]);
        ts=js(n,y);
        for r=1:ts
            wy=[];
            wy=[p1,num2str(n),'-',bl(y),'-',bl(r),'; '];
            if r==1
                
                if y==1
                    qi=['../../',num2str(n-1),'/',num2str(12),'/',num2str(n-1),num2str(12),num2str(js(n-1,12))];
                else
                    qi=['../../',num2str(n),'/',num2str(bl(y-1)),'/',num2str(n),num2str(bl(y-1)),num2str(js(n,y-1))];
                    
                end
                
            else
               qi=['../../',num2str(n),'/',num2str(bl(y)),'/',num2str(n),num2str(bl(y)),num2str(bl(r-1))]; 
            end
            
            if r==ts
                if y==12
                    ho=['../../',num2str(n+1),'/',num2str(bl(1)),'/',num2str(n+1),num2str(bl(1)),num2str(bl(1))];
                    
                else
                    ho=['../../',num2str(n),'/',num2str(bl(y+1)),'/',num2str(n),num2str(bl(y+1)),num2str(bl(1))];
                end
                
            else
               ho=['../../',num2str(n),'/',num2str(bl(y)),'/',num2str(n),num2str(bl(y)),num2str(bl(r+1))]; 
            
            end
            wy=[wy,p2,qi,p3,ho,p4];
            
            
            fid=fopen([num2str(n),'\',num2str(bl(y)),'\',num2str(n),num2str(bl(y)),num2str(bl(r)),'.html'],'wt');
            fprintf(fid,'%s',wy);
            fclose(fid);
            
            
            
        end
        
    end
    
    
end




