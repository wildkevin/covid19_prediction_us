
% data = load('data_us.txt');

function r2 = rsquared(data)

xdata = data(:,1);
ydata = data(:,2);

plot(xdata,ydata,'*'), hold on;

param_1 = polyfit(xdata,ydata,1)
yestimation = polyval(param_1,xdata)

SSres=sum( (ydata-yestimation).^2 ) % residual sum of squares
SStot=sum( (ydata-mean(ydata)).^2 ) % total sum of squares
r2=1-SSres/SStot % standard rsquared

end



