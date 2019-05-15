function [] = GaussSeidelPlot( table )
%UNTITLED Summary of this function goes here
%   Detailed explanation goes here

    if length(table)~=0
        figure;
        clf;
        grid on;
        xlabel('Iterations')
        ylabel('Roots')
        xlim([0 50])
        s=size(table(),1);
        l=size(table(),2);
        numOfroots=(l-1)/2;
        for i=2:(numOfroots+1)
            plot(table(:,1), table(:,i));
            hold on;
        end    
    end
end

