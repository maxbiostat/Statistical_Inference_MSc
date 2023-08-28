# Inferência Estatística (MSc)

Material de apoio para a disciplina [Inferência Estatística ](https://emap.fgv.br/disciplina/inferencia-estatistica), ministrada no Programa de pós-graduação em Modelagem Matemática da Escola de Matemática Aplicada da Fundação Getulio Vargas ([FGV/EMAp](https://emap.fgv.br/)).

- [Programa (provisório)](https://docs.google.com/spreadsheets/d/11Zj7JVXuadvBZOLzSI5AvXhc8Q1kY8_XudKkZwgZP9g/edit?usp=sharing).

Tópicos marcados com um `*` são extra e em geral designam material mais avançado.

Programa **aproximado** [aqui](https://docs.google.com/spreadsheets/d/11Zj7JVXuadvBZOLzSI5AvXhc8Q1kY8_XudKkZwgZP9g/edit?usp=sharing)

### Bibliografia

- [CB] Casella, G., & Berger, R. L. (2002). Statistical Inference. Pacific Grove, CA: Duxbury.
- [SV] Schervish, M. J. (2012). Theory of Statistics. Springer Science & Business Media.
- [KN] Keener, R. W. (2011). Theoretical Statistics: Topics for a core course. Springer. 

## Provas anteriores

- [P1 2022](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/provas/P1_InfEst_2022.pdf);
- [P2 2022](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/provas/P2_InfEst_2022.pdf).

## Aula 1: Revisão de Probabilidade

- KN, Cap 6;
- SV, Apêndice B.3 (_Conditioning_);
- CB, Teorema 4.4.3 (pág 164).

## Aula 2: Modelo Estatístico

- [Artigo](https://projecteuclid.org/download/pdf_1/euclid.aos/1035844977) de Peter McCullagh sobre o que é um modelo estatístico (ver também referências na introdução);
- SV, seção 1.5.5 (pág 50);
- CB, seção 6.3.1 (pág 290).

## Aula 3: Suficiência e Neyman-Fisher
- KN, Caps 3 e 6;
- CB Caps 5 (opcional, fala sobre as propriedades de amostras aleatórias) e 6 (seção 6.2);
- SV, Cap 2.

## Aula 4: Suficiência mínima, completude e ancilaridade
- KN, Cap 3;
- SV, Cap 2;
- CB, Cap 6.2.

## Aula 5: Estimadores, estimação não-viesada

- KN, Cap 4;
- SV, Cap 5;
- CB, Cap 7.

## Aula Extra: Família exponencial

[[Aula gravada]](https://youtu.be/-_Z42K96MAc)

- KN, Cap 2;
- SV, Cap 2.2;
- CB, Cap 3.4;
- `*` [Jørgensen & Labouriau](https://impa.br/wp-content/uploads/2017/04/Mon_52.pdf).

## Aula 6: Estimadores de momentos, mínimos quadrados, consistência

- KN, Cap 8.1;
- CB, Cap 7.2.1, Cap 10.1;
- Scripts:
1. [Estimando os parâmetros da beta por MM e MQ](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/codigo/beta_estimation.r);
2. [Modelo não-id Bernoulli](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/codigo/logistic_regression_ols.r);
3. [Estimação do parâmetro em um modelo semi-paramétrico e não-linear](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/codigo/non_parametric_LS.r). 

## Aula 7: Informação de Fisher, estimador de máxima verossimilhança I

- CB, Cap 7.2.2;
- SV, Cap 5.1.3.

## Aula 8: Estimador de máxima verossimilhança II

- KN, Cap 8 e 9;
- SV, Cap 7.3;
-  `*` [Wald (1949)](https://projecteuclid.org/journals/annals-of-mathematical-statistics/volume-20/issue-4/Note-on-the-Consistency-of-the-Maximum-Likelihood-Estimate/10.1214/aoms/1177729952.full). 
-  Aqui um [exemplo interessante](https://radfordneal.wordpress.com/2008/08/09/inconsistent-maximum-likelihood-estimation-an-ordinary-example/) de um EMV inconsistente num caso unidimensional.


## Aula 9: Estatísticas pivotais e intervalos de confiança

- KN, Cap 9.3 e 9.4;
- CB, Cap 9.
- [Código](https://github.com/maxbiostat/Statistical_Inference_BSc/blob/master/code/IC_normal_cobertura.r) para rodar o experimento de cobertura no caso normal. Modifique para fazer o experimento que fizemos em sala com `mu` **e** `sigma^2` variando.

## Aula 10: Intervalos de confiança e pivôs aproximados (assintóticos)

- KN, Cap 9.5;
- CB, Cap 10.

## Aula 11: Método Delta e transformadas estabilizadoras da variância

- KN, Cap 8.2;
- CB, Cap 5.5, Cap 10.1.3;
- [Este](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/apoio/2005_Cox_DeltaMethod.pdf) artigo de [Chris Cox](https://publichealth.jhu.edu/faculty/1593/christopher-cox) para a [Encyclopedia of Biostatistics](https://onlinelibrary.wiley.com/doi/book/10.1002/0470011815).
- [Script](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/codigo/delta_method.R) para o método delta no caso Poisson, por @isaquepim.

## Aula 12: Testes de hipóteses I: definições e conceitos

- CB, Cap 8: 8.2.1, 8.3.1, 8.3.2, 8.3.3;
- KN, Cap 12: 12.1, 12.2, 12.3;
- SV, Cap 4: 4.1, 4.3.

## Aula 13: Testes de hipóteses II: Karlin-Rubin e dualidade com ICs

- CB, Cap 8: 8.3;
- KN, Cap 12: 12.4;
- SV, Cap 4: 4.4, 4.6.

## Miscelânea

- A questão 4 (bônus) da [P1 2022](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/provas/P1_InfEst_2022.pdf) foi inspirada por [este post](https://stats.stackexchange.com/questions/122917/when-if-ever-is-a-median-statistic-a-sufficient-statistic) do Prof. [Christian Robert](https://xianblog.wordpress.com/). 
