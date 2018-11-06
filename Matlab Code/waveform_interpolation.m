curr_frames = 16;
desired_frames = 14;

m = cell2mat([m_pre.SCAo(3:curr_frames+2)]);
n = zeros(1,desired_frames);

n(1) = m(1); %tie the endpoints
n(desired_frames) = m(curr_frames); %tie the endpoints
for i = 1:12
    x = ((curr_frames-1)/(desired_frames-1))*i + 1;
    x1 = floor(x);
    x2 = x1+1;
    dy = m(x2)-m(x1);
    n(i+1) = dy*(x-x1) + m(x1);
end 
hold
plot(m)
plot(n)