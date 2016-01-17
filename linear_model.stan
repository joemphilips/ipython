data {
    int<lower = 0> N;
    real y[N];
    real x[N];
}

parameters {
    real a;
    real b;
    real<lower=0> sigma;
}
transformed parameters {
    real mu[N];
    for(i in 1:N)
        mu[i] <- a + b*x[i];
}

model {
    y ~ normal(mu, sigma);
}
