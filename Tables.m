%% Table to store our results

header = {'Accuracy','Misclassification','TNR', 'FPR', 'FNR', 'TPR','Time to Train', 'Time to Validate'}
Traintable = table(0,0,0,0,0,0,0,0,'VariableNames',header)
header2 =  {'Accuracy','Misclassification','TNR', 'FPR', 'FNR', 'TPR', 'Time to predict'}
header3 = {'Accuracy','Misclassification','TNR', 'FPR', 'FNR', 'TPR','Time to Train', 'Time to Validate'}
TrainAveragestable = table(0,0,0,0,0,0,0,0,'VariableNames',header3)
Testtable = table(0,0,0,0,0,0,0,'VariableNames',header2)
TestAveragetable = table(0,0,0,0,0,0,0,'VariableNames',header2)
%% 
% Splitting data Into test and training

n=height(dataset)
part = cvpartition(n,'holdout',0.3)
idxTrain = training(part)
idxTest = test(part)
tblTrain=dataset(idxTrain, :)
tblTest=dataset(idxTest,  :)
%%

%% 
% Fine trees

header = {'Accuracy','Misclassification', 'FPR', 'FNR'}
TraintableLTrees = table(0,0,0,0,'VariableNames',header)
header2 = {'Accuracy','Misclassification','FPR', 'FNR'}
TesttableLFT = table(0,0,0,0,'VariableNames',header2)

%% 
% Logistic regression

TraintableLog = table(0,0,0,0,0,0,0,0,'VariableNames',header)
TesttableLog = table(0,0,0,0,0,0,0,'VariableNames',header2)
%% 
% Gaussian Naive Bayes

TraintableGaussain_NB = table(0,0,0,0,0,0,0,0,'VariableNames',header)

TesttableGaussain_NB = table(0,0,0,0,0,0,0,'VariableNames',header2)
%% 
% SVM Linear

TraintableSVMlin = table(0,0,0,0,0,0,0,0,'VariableNames',header)

TesttableSVMlin = table(0,0,0,0,0,0,0,'VariableNames',header2)
%% 
% Kernel SVM

TraintableSVM_Kernel = table(0,0,0,0,0,0,0,0,'VariableNames',header)

TesttableSVM_Kernel = table(0,0,0,0,0,0,0,'VariableNames',header2)