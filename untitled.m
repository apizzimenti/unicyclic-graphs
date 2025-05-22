%% Generate a cicle 
N_cycl = randi(20)+4;
s = 1:N_cycl; t = circshift(s,1);
G = graph(s,t);
%% Generate three unique branches
while x_b2 == x_b1 || x_b2 == x_b3 || x_b1 == x_b3
    x_b1 = randi(N_cycl);
    x_b2 = randi(N_cycl);
    x_b3 = randi(N_cycl);
end
b1 = graph([x_b1 3:4+N_cycl],2*ones(1,3)+N_cycl);


b2 = graph([x_b2 (3+2):(5+2)+N_cycl],2*ones(1,4)+N_cycl);
b3 = graph([x_b3 (3+5):(6+N_cycl],2*ones(1,5)+N_cycl);

%% Assign to three distinct vertexes of the G branches b1, b2, b3

%% Note: It seems that I need to made a function add_g2G_v(G,g,v) where g will be added to G (union) on the vertex v
