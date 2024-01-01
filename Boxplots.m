boxacctrain = [TraintableSVMlin.(1),TraintableSVM_Kernel.(1),TraintableLog.(1),TraintableLTrees.(1)];
boxmisstrain = [TraintableSVMlin.(2),TraintableSVM_Kernel.(2),TraintableLog.(2),TraintableLTrees.(2)]
boxfprtrain = [TraintableSVMlin.(3),TraintableSVM_Kernel.(3),TraintableLog.(3),TraintableLTrees.(3)]
boxfnrtrain = [TraintableSVMlin.(4),TraintableSVM_Kernel.(4),TraintableLog.(4),TraintableLTrees.(4)]

boxacctest = [TesttableSVMlin.(1),TesttableSVM_Kernel.(1),TesttableLog.(1),TesttableLFT.(1)]
boxmisstest = [TesttableSVMlin.(2),TesttableSVM_Kernel.(2),TesttableLog.(2),TesttableLFT.(2)]
boxfprtest = [TesttableSVMlin.(3),TesttableSVM_Kernel.(3),TesttableLog.(3),TesttableLFT.(3)]
boxfnrtest = [TesttableSVMlin.(4),TesttableSVM_Kernel.(4),TesttableLog.(4),TesttableLFT.(4)]

boxplot(boxacctrain, 'labels', {'Linear SVM','SVM Kernel', 'Logistic Regression', 'Fine Decision Trees'})
title("Accuracy")

boxplot(boxmisstrain, 'labels', {'Linear SVM','SVM Kernel', 'Logistic Regression', 'Fine Decision Trees'})
title("Misclassification rate")

boxplot(boxfprtrain, 'labels', {'Linear SVM','SVM Kernel', 'Logistic Regression', 'Fine Decision Trees'})
title("False positive rate")

boxplot(boxfnrtrain, 'labels', {'Linear SVM','SVM Kernel', 'Logistic Regression', 'Fine Decision Trees'})
title("False negative rate")

boxplot(boxacctest, 'labels', {'Linear SVM','SVM Kernel', 'Logistic Regression', 'Fine Decision Trees'})
title("Accuracy")

boxplot(boxmisstest, 'labels', {'Linear SVM','SVM Kernel', 'Logistic Regression', 'Fine Decision Trees'})
title("Misclassification rate")

boxplot(boxfprtest, 'labels', {'Linear SVM','SVM Kernel', 'Logistic Regression', 'Fine Decision Trees'})
title("False positive rate")

boxplot(boxfnrtest, 'labels', {'Linear SVM','SVM Kernel', 'Logistic Regression', 'Fine Decision Trees'})
title("False negative rate")