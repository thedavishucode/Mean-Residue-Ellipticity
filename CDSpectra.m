% MEAN RESIDUE ELLIPTICITY (MRE)
%      MRE =  CD signal * Mean Residue Weight
%            --------------------------------
%            10 * Protein Concentration * Pathlength
%  
% CD signal in mdeg
% Mean Residue Weight (For proteins - 110)
% Protein Concentration in mg/ml
% Pathlength (0.1 or 1 cm)
% MRE UNIT - deg cm2 dmol-1

% CODE
cddata = xlsread('CDSpectra.xlsx')
wavelength = cddata(:,1);
cdsignal1  = cddata(:,2);
cdsignal2  = cddata(:,3);
protconc1  = input('Enter protein concentration in mg/ml - ', 's')
protconc2  = input('Enter protein concentration in mg/ml - ', 's')
% ":" means all rows, 1 means first column
MRE1 = cdsignal1*110./(10*protconc1*0.1)
MRE2 = cdsignal2*110./(10*protconc2*0.1)
hold on
plot(wavelength,MRE1)
plot(wavelength,MRE2)
% END
