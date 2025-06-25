% 定义矩阵 A
A = [1, 2, 3; 
     4, 5, 6; 
     7, 8, 9];

% 执行 PLU 分解
[L, U, P] = lu(A);

% 输出结果
disp("L = "); disp(L);
disp("U = "); disp(U);
disp("P = "); disp(P);

% 验证 PA = LU
error = norm(P*A - L*U, "fro");
disp(["验证误差 ||PA - LU||_F = ", num2str(error)]);