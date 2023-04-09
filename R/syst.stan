data{
int<lower=1> N;
real y[N];
real nu;
}
parameters{
real<lower=50,upper=200> mu;
real<lower=0> tau;
}
transformed parameters{
real<lower=0> sigma;
sigma = sqrt(1/tau);
}
model{
for(i in 1:N){
y[i] ~ student_t(nu,mu,sigma);
}
mu ~ uniform(50,200);
tau ~ gamma(0.001,0.001);
}

