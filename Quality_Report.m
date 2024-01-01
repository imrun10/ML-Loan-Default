dataset.CreditDefault = (dataset.CreditDefault == 1)
%%
y = height(dataset)
x = width(dataset)
a = vartype("numeric")
b = vartype("categorical")
datasetN = dataset(1:y,a)
datasetC = dataset(1:y,b)
%% 
% Numerical Featurees

ColumnName = cell(width(datasetN),1);
Count = zeros(width(datasetN),1);
Missing = zeros(width(datasetN),1);
Card = zeros(width(datasetN),1);
Minimum = zeros(width(datasetN),1);
Maximum = zeros(width(datasetN),1);
FirstPercentile = zeros(width(datasetN),1);
ThirdPercentile = zeros(width(datasetN),1);
Median = zeros(width(datasetN),1);
Mean = zeros(width(datasetN),1);
StandardDeviation = zeros(width(datasetN),1);
%%
for i=1 : width(datasetN)
    ColumnName(i,1) = datasetN.Properties.VariableNames(i);
    Count(i,1) = height(datasetN.(i));
    Missing(i,1) = sum(ismissing(datasetN.(i))) / (height(datasetN)) *100;
    Card(i,1) = height(groupsummary(datasetN,i));
    Minimum(i,1) = min(datasetN.(i));
    Maximum(i,1) = max(datasetN.(i));
    FirstPercentile(i,1) = prctile(datasetN.(i),25);
    ThirdPercentile(i,1) = prctile(datasetN.(i),75);
    Median(i,1) = median(datasetN.(i));
    Mean(i,1) = mean(datasetN.(i));
    StandardDeviation(i,1) = std(datasetN.(i));
end
QRdatasetN = table(Count,Missing,Card,FirstPercentile,ThirdPercentile,Maximum,Minimum,Median,Mean,StandardDeviation,'RowNames',ColumnName)

%%
histogram(datasetN.(1))
ylabel("Density")
title("Annual Income")

histogram(datasetN.(2))
ylabel("Density")
title("Years in current job")

histogram(datasetN.(3))
ylabel("Density")
title("Tax liens")

histogram(datasetN.(4))
ylabel("Density")
title("Number of Open Accounts")

histogram(datasetN.(5))
ylabel("Density")
title("Years of Credit History")

histogram(datasetN.(6))
ylabel("Density")
title("Maximum Open Credit")

histogram(datasetN.(7))
ylabel("Density")
title("Number of Credit Problems")

histogram(datasetN.(8))
ylabel("Density")
title("Months Since Last Delinquent")

histogram(datasetN.(9))
ylabel("Density")
title("Bankruptcies")

histogram(datasetN.(10))
ylabel("Density")
title("Current Loan Amount")

histogram(datasetN.(11))
ylabel("Density")
title("Current Credit balance")

histogram(datasetN.(12))
ylabel("Density")
title("Monthly Debt")

histogram(datasetN.(13))
ylabel("Density")
title("Credit Score")


%% 
% Correcting Missing values

coloumns = [2,3,9,16];
for i=1 : width(coloumns)
    m = coloumns(i)
    for x=1 : height(dataset)
        if ismissing(dataset.(m)(x)) == 1
            dataset.(m)(x) = nanmean(dataset.(m));
        end
    end
end
for i=1 : height(dataset)
    if ismissing(dataset.(10)(i)) == 1
        dataset.(10)(i) = 0;
    end
end
%% 
% Corrected Numerical Featurees

y = height(dataset);
x = width(dataset);
a = vartype("numeric");

datasetN = dataset(1:y,a);

ColumnName = cell(width(datasetN),1);
Count = zeros(width(datasetN),1);
Missing = zeros(width(datasetN),1);
Card = zeros(width(datasetN),1);
Minimum = zeros(width(datasetN),1);
Maximum = zeros(width(datasetN),1);
FirstPercentile = zeros(width(datasetN),1);
ThirdPercentile = zeros(width(datasetN),1);
Median = zeros(width(datasetN),1);
Mean = zeros(width(datasetN),1);
StandardDeviation = zeros(width(datasetN),1);
%%
for i=1 : width(datasetN)
    ColumnName(i,1) = datasetN.Properties.VariableNames(i);
    Count(i,1) = height(datasetN.(i));
    Missing(i,1) = sum(ismissing(datasetN.(i))) / (height(datasetN)) *100;
    Card(i,1) = height(groupsummary(datasetN,i));
    Minimum(i,1) = min(datasetN.(i));
    Maximum(i,1) = max(datasetN.(i));
    FirstPercentile(i,1) = prctile(datasetN.(i),25);
    ThirdPercentile(i,1) = prctile(datasetN.(i),75);
    Median(i,1) = median(datasetN.(i));
    Mean(i,1) = mean(datasetN.(i));
    StandardDeviation(i,1) = std(datasetN.(i));
end
QRdatasetN = table(Count,Missing,Card,FirstPercentile,ThirdPercentile,Maximum,Minimum,Median,Mean,StandardDeviation,'RowNames',ColumnName)

%%
histogram(datasetN.(1))
ylabel("Density")
title("Annual Income")

histogram(datasetN.(2))
ylabel("Density")
title("Years in current job")

histogram(datasetN.(3))
ylabel("Density")
title("Tax liens")

histogram(datasetN.(4))
ylabel("Density")
title("Number of Open Accounts")

histogram(datasetN.(5))
ylabel("Density")
title("Years of Credit History")

histogram(datasetN.(6))
ylabel("Density")
title("Maximum Open Credit")

histogram(datasetN.(7))
ylabel("Density")
title("Number of Credit Problems")

histogram(datasetN.(8))
ylabel("Density")
title("Months Since Last Delinquent")

histogram(datasetN.(9))
ylabel("Density")
title("Bankruptcies")

histogram(datasetN.(10))
ylabel("Density")
title("Current Loan Amount")

histogram(datasetN.(11))
ylabel("Density")
title("Current Credit balance")

histogram(datasetN.(12))
ylabel("Density")
title("Monthly Debt")

histogram(datasetN.(13))
ylabel("Density")
title("Credit Score")

histogram(datasetN.(14))
ylabel("Density")
title("Credit Default")
%% 
% Categorical Features

ColumnName = cell(width(datasetC),1);
Count = zeros(width(datasetC),1);
Miss = zeros(width(datasetC),1);
Card = zeros(width(datasetC),1);
Mode= categorical(width(datasetC),1);
Modefrequency = zeros(width(datasetC),1);
Modepercentage = zeros(width(datasetC),1);
SecondMode = categorical(width(datasetC),1);
secondmodeFrequency = zeros(width(datasetC),1);
SecondModepercentage = zeros(width(datasetC),1);
%%
for s=1: width(datasetC)
    ColumnName(s,1)=datasetC.Properties.VariableNames(s);
    Count(s,1)= height(datasetC.(s));
    Miss(s,1)=sum(ismissing(datasetC.(s)))/height(datasetC)*100;
    Card(s,1) = height(groupsummary(datasetC,s));
    [Mode(s,1) , Modefrequency(s,1)]= mode(datasetC.(s));
    Modepercentage(s,1) = (Modefrequency(s,1))/ height(datasetC)* 100;
    [SecondMode(s,1), secondmodeFrequency(s,1)]= mode(datasetC.(s)((datasetC.(s)~=mode(datasetC.(s)))));
    SecondModepercentage(s,1)=secondmodeFrequency(s,1)/ height(datasetC)*100;
end
QRdatsetC = table(Count,Miss,Card,Mode,Modefrequency,Modepercentage,SecondMode,secondmodeFrequency,SecondModepercentage,'RowNames', ColumnName)
%%
histogram(datasetC.(1))
ylabel("Density")
title("Home Ownership")

histogram(datasetC.(2))
ylabel("Density")
title("Purpose")

histogram(datasetC.(3))
ylabel("Density")
title("Term")