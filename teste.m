% Setando a matriz D. De acordo com exemplo temos 3 carros (alternativas), Palio, HB20 e
% Corola. E temos 4 critérios: consumo (C), conforto (B), preço (C) e marca (B)
MatrizD = [
            15 6 25000 7; % Palio
            12 7 35000 7; % HB20
            10 9 55000 8]; % Corola

%Determinando os pesos e os vetor custo e beneficio
c_b = [1 0 1 0]; %1 = custo e 0 = beneficio
W = [0.3 0.05 0.6 0.05]; %setando os pesos (isso é algo pessoal)

%Aplicando TOPSIS
T1 = TOPSIS (MatrizD,W,c_b);
T1.normalizeMatrix; 
T1.introWeights;
T1.getIdealSolutions;
T1.distanceToIdeal;
T1.relativeCloseness;
T1.plotRankingBars;
