Experimento:
Para cada replicata `j= 1, ..., J`, faça
- Gerar `n` variadas Poisson com taxa `theta0`;
- Estimar `theta` por máxima verossimilhança;
- Usar o EMV para obter o EMV para a pmf;
- para cada `x`, computar `|p(x; theta_hat) - p(x; theta0)|/p(x; theta0)`, i.e., o erro absoluto relativo (absolute relative error).
  

![image](https://github.com/maxbiostat/Statistical_Inference_MSc/assets/2875083/ab723e9f-568e-4d34-8f46-63d4d7b91717)

[Código](https://github.com/maxbiostat/Statistical_Inference_MSc/blob/main/code/quality_of_estimation_Poisson.r).
