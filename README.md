# Inferência Estatística (MSc)

Material de apoio para a disciplina [Inferência Estatística ](https://emap.fgv.br/disciplina/inferencia-estatistica), ministrada no Programa de pós-graduação em Modelagem Matemática da Escola de Matemática Aplicada da Fundação Getulio Vargas ([FGV/EMAp](https://emap.fgv.br/)).

- Programa **aproximado** [aqui](https://docs.google.com/spreadsheets/d/11Zj7JVXuadvBZOLzSI5AvXhc8Q1kY8_XudKkZwgZP9g/edit?usp=sharing)

Tópicos marcados com um `*` são extra e em geral designam material mais avançado.

### Bibliografia

- [CB] Casella, G., & Berger, R. L. (2002). Statistical Inference. Pacific Grove, CA: Duxbury.
- [SV] Schervish, M. J. (2012). Theory of Statistics. Springer Science & Business Media.
- [KN] Keener, R. W. (2011). Theoretical Statistics: Topics for a core course. Springer.



## Listas
As listas devem ser entregues impressas/manuscritas ao monitor @isaquepim. 
- Exercícios extra (não valem ponto, atualizados semanalmente) [aqui](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/listas/README.md).
- [Lista 1](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/listas/lista1_InfEst_MSc.pdf): verossimilhança e suficiência. Entrega até o dia 15/09/2023.
- [Lista 2](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/listas/lista2_InfEst_MSc.pdf): suficiência mínima, completude e ancilaridade. Entrega até o dia 08/10/2023.
- [Lista 3](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/listas/lista3_InfEst_MSc.pdf): informação de Fisher, estimação não-viesada e mínima variância. Entrega até o dia 27/10/2023.
- [Lista 4](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/listas/lista4_InfEst_MSc.pdf): métodos de estimação. Entrega até o dia 24/11/2023.
- [Lista 5](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/listas/lista5_InfEst_MSc.pdf): estimação intervalar. Entrega até o dia 06/12/2023.
- [Lista 6](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/listas/lista6_InfEst_MSc.pdf): inferência aproximada. Entrega até o dia 23/12/2023.
- [Lista 7](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/listas/lista7_InfEst_MSc.pdf): Testes de hipótese. Entrega até o dia 23/12/2023.
  

## Provas anteriores

- [P1 2022](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/provas/P1_InfEst_2022.pdf);
- [P2 2022](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/provas/P2_InfEst_2022.pdf);
- [P1 2023](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/provas/P1_InfEst_2023.pdf).

## Revisão de Probabilidade

- KN, Cap 6;
- SV, Apêndice B.3 (_Conditioning_);
- CB, Teorema 4.4.3 (pág 164).

## Modelo Estatístico

- `*` [Artigo](https://projecteuclid.org/download/pdf_1/euclid.aos/1035844977) de Peter McCullagh sobre o que é um modelo estatístico (ver também referências na introdução);
- SV, seção 1.5.5 (pág 50);
- CB, seção 6.3.1 (pág 290).

## Suficiência e Neyman-Fisher
- KN, Caps 3 e 6;
- CB Caps 5 (opcional, fala sobre as propriedades de amostras aleatórias) e 6 (seção 6.2);
- SV, Cap 2.

## Suficiência mínima, completude e ancilaridade
- KN, Cap 3;
- SV, Cap 2;
- CB, Cap 6.2.
- `*` [Este](https://doi.org/10.2307/2287834) artigo do grande [Erich Lehmann](https://en.wikipedia.org/wiki/Erich_Leo_Lehmann) fala sobre a interpretação de completude e sua conexão com o [teorema de Basu](https://en.wikipedia.org/wiki/Basu%27s_theorem).

## Estimadores, estimação não-viesada

- KN, Cap 4;
- SV, Cap 5;
- CB, Cap 7.

## Família exponencial

[[Aula gravada]](https://youtu.be/-_Z42K96MAc)

- KN, Cap 2;
- SV, Cap 2.2;
- CB, Cap 3.4;
- `*` [Jørgensen & Labouriau](https://impa.br/wp-content/uploads/2017/04/Mon_52.pdf).

## Estimadores de momentos, mínimos quadrados, consistência

- KN, Cap 8.1;
- CB, Cap 7.2.1, Cap 10.1;
- Scripts:
1. [Estimando os parâmetros da beta por MM e MQ](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/codigo/beta_estimation.r);
2. [Modelo não-id Bernoulli](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/codigo/logistic_regression_ols.r);
3. [Estimação do parâmetro em um modelo semi-paramétrico e não-linear](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/codigo/non_parametric_LS.r). 

## Informação de Fisher, estimador de máxima verossimilhança I

- CB, Cap 7.2.2;
- SV, Cap 5.1.3.

## Estimador de máxima verossimilhança II

- KN, Cap 8 e 9;
- SV, Cap 7.3;
-  `*` [Wald (1949)](https://projecteuclid.org/journals/annals-of-mathematical-statistics/volume-20/issue-4/Note-on-the-Consistency-of-the-Maximum-Likelihood-Estimate/10.1214/aoms/1177729952.full). 
-  Aqui um [exemplo interessante](https://radfordneal.wordpress.com/2008/08/09/inconsistent-maximum-likelihood-estimation-an-ordinary-example/) de um EMV inconsistente num caso unidimensional.


## Estatísticas pivotais e intervalos de confiança

- KN, Cap 9.3 e 9.4;
- CB, Cap 9.
- [Código](https://github.com/maxbiostat/Statistical_Inference_BSc/blob/master/code/IC_normal_cobertura.r) para rodar o experimento de cobertura no caso normal. Modifique para fazer o experimento que fizemos em sala com `mu` **e** `sigma^2` variando.

## Intervalos de confiança e pivôs aproximados (assintóticos)

- KN, Cap 9.5;
- CB, Cap 10.

## Método Delta e transformadas estabilizadoras da variância

- KN, Cap 8.2;
- CB, Cap 5.5, Cap 10.1.3;
- [Este](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/apoio/2005_Cox_DeltaMethod.pdf) artigo de [Chris Cox](https://publichealth.jhu.edu/faculty/1593/christopher-cox) para a [Encyclopedia of Biostatistics](https://onlinelibrary.wiley.com/doi/book/10.1002/0470011815).
- [Script](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/codigo/delta_method.R) para o método delta no caso Poisson, por @isaquepim.

## Testes de hipóteses I: definições e conceitos

- CB, Cap 8: 8.2.1, 8.3.1, 8.3.2, 8.3.3;
- KN, Cap 12: 12.1, 12.2, 12.3;
- SV, Cap 4: 4.1, 4.3.

## Testes de hipóteses II: Karlin-Rubin e dualidade com ICs

- CB, Cap 8: 8.3;
- KN, Cap 12: 12.4;
- SV, Cap 4: 4.4, 4.6.

## Miscelânea

- A questão 4 (bônus) da [P1 2022](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/provas/P1_InfEst_2022.pdf) foi inspirada por [este post](https://stats.stackexchange.com/questions/122917/when-if-ever-is-a-median-statistic-a-sufficient-statistic) do Prof. [Christian Robert](https://xianblog.wordpress.com/).
- Muitos resultados úteis em Estatísticas dependem de desigualdades de concentração. [Este](https://arxiv.org/pdf/2011.02258.pdf) artigo de revisão lista várias delas. 

