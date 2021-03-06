# Inferência Estatística (MSc)

Material de apoio para a disciplina [Inferência Estatística ](https://emap.fgv.br/disciplina/inferencia-estatistica), ministrada no Programa de pós-graduação em Matemática Aplicada da Escola de Matemática Aplicada da Fundação Getulio Vargas ([FGV/EMAp](https://emap.fgv.br/)).

- [Programa (provisório)](https://docs.google.com/spreadsheets/d/1szd83K73sLuliVOLTpiFWMIW9guEcbbV-wZvUgoIcrg/edit#gid=0).

Tópicos marcados com um `*` são extra e em geral designam material mais avançado.

### Bibliografia

- [CB] Casella, G., & Berger, R. L. (2002). Statistical Inference. Pacific Grove, CA: Duxbury.
- [SV] Schervish, M. J. (2012). Theory of Statistics. Springer Science & Business Media.
- [KN] Keener, R. W. (2011). Theoretical Statistics: Topics for a core course. Springer. 

## Listas

- [Lista 1](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/listas/lista1_InfEst_MSc.pdf): verossimilhança e suficiência;
- [Lista 2](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/listas/lista2_InfEst_MSc.pdf): suficiência mínima, completude e ancilaridade;
- [Lista 3](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/listas/lista3_InfEst_MSc.pdf): Estimação não-viesada;
- [Lista 4](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/listas/lista4_InfEst_MSc.pdf): Métodos de Estimação.


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
