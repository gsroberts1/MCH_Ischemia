%Calculates net flow from the 9 measured vessels.

myDirs = {'MCH_112715'};

for i=1:length(myDirs)
    cd(myDirs{i});
    disp(myDirs{i})
    a = dir('*PRE*'); 
    cd(a.name);
    disp(a.name)
    
    cd('SCAo_flatfile'); SCAo = xlsread('flow_data_SCAo','Cycle analysis','B15:B15'); cd ..
    cd('IRAo_flatfile'); IRAo = xlsread('flow_data_IRAo','Cycle analysis','B15:B15'); cd ..
    cd('LRA_flatfile'); LRA = xlsread('flow_data_LRA','Cycle analysis','B15:B15'); cd ..
    cd('RRA_flatfile'); RRA = xlsread('flow_data_RRA','Cycle analysis','B15:B15'); cd ..
    cd('SMA_flatfile'); SMA = xlsread('flow_data_SMA','Cycle analysis','B15:B15'); cd ..
    cd('CA_flatfile'); CA = xlsread('flow_data_CA','Cycle analysis','B15:B15'); cd ..
    cd('SMV_flatfile'); SMV = xlsread('flow_data_SMV','Cycle analysis','B15:B15'); cd ..
    cd('SV_flatfile'); SV = xlsread('flow_data_SV','Cycle analysis','B15:B15'); cd ..
    cd('PV_flatfile'); PV = xlsread('flow_data_PV','Cycle analysis','B15:B15'); cd ..

    A = 1000*[SCAo, IRAo, LRA, RRA, SMA, CA, SMV, SV, PV]
    filename = 'Peak_Flow_Values.xlsx';
    xlswrite(filename,A);
    
    cd ..
    a = dir('*POST*'); 
    cd(a.name);
    disp(a.name)
    
    cd('SCAo_flatfile'); SCAo = xlsread('flow_data_SCAo','Cycle analysis','B15:B15'); cd ..
    cd('IRAo_flatfile'); IRAo = xlsread('flow_data_IRAo','Cycle analysis','B15:B15'); cd ..
    cd('LRA_flatfile'); LRA = xlsread('flow_data_LRA','Cycle analysis','B15:B15'); cd ..
    cd('RRA_flatfile'); RRA = xlsread('flow_data_RRA','Cycle analysis','B15:B15'); cd ..
    cd('SMA_flatfile'); SMA = xlsread('flow_data_SMA','Cycle analysis','B15:B15'); cd ..
    cd('GDA_flatfile'); GDA = xlsread('flow_data_GDA','Cycle analysis','B15:B15'); cd ..
    cd('SMV_flatfile'); SMV = xlsread('flow_data_SMV','Cycle analysis','B15:B15'); cd ..
    cd('SV_flatfile'); SV = xlsread('flow_data_SV','Cycle analysis','B15:B15'); cd ..
    cd('PV_flatfile'); PV = xlsread('flow_data_PV','Cycle analysis','B15:B15'); cd ..
    
    B = 1000*[SCAo, IRAo, LRA, RRA, SMA, GDA, SMV, SV, PV]
    filename = 'Peak_Flow_Values.xlsx';
    xlswrite(filename,B);
    
    cd ..
    cd ..
end 
