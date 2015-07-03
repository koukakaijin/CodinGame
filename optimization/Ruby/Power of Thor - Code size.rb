z,w,a,b=gets.split.collect{|x|x.to_i};loop do;x=z-a;y=w-b;j=y==0?"":y>0?"S":"N";x==0?x:x>0?j+="E":j+="W";x==0?x:x>0?a+=1:a-=1;y==0?y:y>0?b+=1:b-=1;puts j;end
