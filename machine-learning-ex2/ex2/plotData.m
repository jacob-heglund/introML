function plotData(X, y)
%PLOTDATA Plots the data points X and y into a new figure 
%   PLOTDATA(x,y) plots the data points with + for the positive examples
%   and o for the negative examples. X is assumed to be a Mx2 matrix.


%fprintf(['Plotting data with + indicating (y = 1) examples and o ' ...
%         'indicating (y = 0) examples.\n']);
         
% Create New Figure
figure;
hold on;

% ====================== YOUR CODE HERE ======================
% Instructions: Plot the positive and negative examples on a
%               2D plot, using the option 'k+' for the positive
%               examples and 'ko' for the negative examples.
%

%find positive examples within the training data
positive = find(y==1); 

%find negative examples within the training data
negative = find(y==0);

plot(X(positive, 1), X(positive, 2), 'k+', 'LineWidth', 2, 'MarkerSize', 7);
plot(X(negative, 1), X(negative, 2), 'ko', 'MarkerFaceColor', 'y', 'MarkerSize', 7);

% Put some labels 
hold on;
% Labels and Legend
xlabel('Exam 1 score')
ylabel('Exam 2 score')

% Specified in plot order
legend('Admitted', 'Not admitted')
hold off;


% =========================================================================
end
