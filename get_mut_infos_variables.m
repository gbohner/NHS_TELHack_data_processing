% load('data/nhs_harm_data.mat');

data_set = [AgeBand, AllPUs, Catheters, CatheterUTI, Falls, Flag, NewHarms, NewPUs, NumberofHarms, OldPUs, Sex, VTEHarm, VTERiskAssessed, VTEProphylaxis, VTEType];
labels = {'AgeBand', 'AllPUs', 'Catheters', 'CatheterUTI', 'Falls', 'Flag', 'NewHarms', 'NewPUs', 'NumberofHarms', 'OldPUs', 'Sex', 'VTEHarm', 'VTERiskAssessed', 'VTEProphylaxis', 'VTEType'}

MI_matrix = zeros(size(data_set,2));

for i1 = 1:size(data_set,2)
    disp(i1);
    for j1 = i1:size(data_set,2)
        MI_matrix(i1,j1) = mutualInformation(data_set(:,i1),data_set(:,j1));
        MI_matrix(i1,j1) = MI_matrix(i1,j1)./MI_matrix(i1,i1);
        MI_matrix(j1,i1) = MI_matrix(i1,j1);
    end
end
        
