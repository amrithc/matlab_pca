function [arr] = linalgpca(in_arr,n_dim)

    [r,c] = size(in_arr);
    for i=1:c
        m = mean(in_arr(:,i));
        in_arr(:,i) = in_arr(:,i) - m;
    end
    [U,S,V] = svd(in_arr);
    u = U(:,1:n_dim);
    s = S(1:n_dim,1:n_dim);
    v = V(:,1:n_dim);
    nv = v'*v;
    arr = u*s;

end
    
