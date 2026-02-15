## Monte Carlo, Markov Chains, and the Metropolis Algorithm

For general $H$, it is not easy to compute

$$
\langle \mathcal{O}\rangle=\frac{1}{Z} \sum_{\mu} \mathcal{O}(\mu) e^{-\beta H(\mu)}
$$

exactly. Except in special cases (1D, non-interacting, exactly solvable), either approximate (variational/perturbative) or numerical approaches needed.

Monte Carlo is a general method for computing $\sum_{\mu} f_{\mu}$ where $\mu \in$ really big space. Applicable not just to statistical physics but also in biology, finance, complex systems etc. (cite)

In a general setting, $\sum_\mu f_{\mu}$ may not have an underlying probabilistic interpretation; for example we might be trying to evaluate an oscillatory integral in a high-dim space $\mu \in \mathbb{R}^{n}$

$$
\underbrace{\int_{0}^{1} d x_{1} d x_{2} \cdots d x_{n}}_{\sum_{\mu}} \underbrace{f\left(x_{1}, \cdots x_{n}\right)}_{f_{\mu}}
$$ (general-integral)


### Importance Sampling

Directly evaluating these integrals for large $n$ is highly inefficient since visiting every point (voxel) in phase space takes an impractically long time.  
**Key idea:** Rare or "unimportant" events (where $f$ is small) contribute little to the result, so we should minimize the time spent on them. Instead, we can estimate $\langle \mathcal{O} \rangle_p$ by **sampling** from a probability distribution $p_\mu$ that gives more weight to significant regions in phase space where $f$ is large.

A natural choice for this probability distribution is: $p_{\mu} = \frac{|f_{\mu}|}{\sum |f_{\mu}|}$,  which assigns higher weights to larger summands. This allows us to rewrite the sum as:

$$
\sum_{\mu} f_{\mu} = \sum p_{\mu} \cdot \overbrace{\left(\frac{f_{\mu}}{p_{\mu}}\right)}^{\mathcal{O}_{\mu}} = \langle\mathcal{O}\rangle_{p}
$$

### The Challenge in Statistical Mechanics

In statistical mechanics, the "curse of dimensionality" is particularly severe. The entropy, $S \propto N$, scales extensively with the number of degrees of freedom $N$, which is often enormous (e.g., $N \sim 10^{23}$). As a result, the total number of possible microstates, $\Omega = e^{S/k_B}$

is vast, making an explicit summation over all states infeasible. Instead of computing $\sum_{\mu=1}^{\Omega} p_{\mu} \mathcal{O}_{\mu}$, we can use **importance sampling**, selecting states from a probability distribution $p_\mu$ that prioritizes the most relevant microstates. 

A natural choice for $p_\mu$ in statistical mechanics is the **Boltzmann distribution** $p_{\mu} = \frac{e^{-\beta H_{\mu}}}{Z}$, where $Z$ is the partition function. Rather than summing over all microstates, we sample from $p_{\mu}$, effectively rolling an $\Omega$-sided die weighted by this distribution. This generates a sequence of sampled states $\mu_1, \mu_2, \dots, \mu_M$, where $M \ll \Omega$. The expectation value can then be estimated as:

$$
\langle \mathcal{O} \rangle_p \approx \frac{1}{M} \sum_{i=1}^{M} \mathcal{O}_{\mu_i}
$$

which converges to the true expectation in the limit:

$$
\lim_{M \to \infty} \frac{1}{M} \sum_{i=1}^{M} \mathcal{O}_{\mu_i} = \langle \mathcal{O} \rangle_p.
$$

### Accuracy and Convergence

For a finite sample size $M$, the estimate contains some error due to statistical fluctuations. According to the **central limit theorem**, the typical deviation is:

$$
\Delta \mathcal{O} = \frac{1}{\sqrt{M}} \sqrt{\langle (O - \langle O \rangle)^2 \rangle}
$$

Thus, the accuracy of a Monte Carlo estimate scales as:

$$
\epsilon = \frac{\text{var}(\mathcal{O})}{\sqrt{M}}.
$$

For most practical cases, $\text{var}(\mathcal{O})$ remains bounded as the system size $\Omega \to \infty$. For example, in the Ising model, while the total number of states scales as $\Omega = 2^N$, the magnetization $\langle m^2 \rangle = N^{-1} \sum_i \sigma_i$ remains independent of $N$.

To achieve an accuracy of $\epsilon$, we require:

$$
M_{\epsilon} = \frac{\langle \mathcal{O}^2 \rangle}{\epsilon^2}
$$

which is vastly smaller than the full sum over all $\Omega$ states.

### The Core Problem: Sampling Efficiently

A major obstacle remains: How do we efficiently sample from $p_{\mu} = \frac{e^{-\beta H_{\mu}}}{Z}$ when we don’t know the normalization constant $Z$? The partition function,

$$
Z = \sum_{\mu=1}^{\Omega} e^{-\beta H_{\mu}},
$$

is computationally infeasible to evaluate directly.

This is where **Metropolis et al. (1953)** introduced a breakthrough. They devised a method to sample from $p_{\mu}$ **without knowing $Z$**. Their approach involves defining an artificial, stochastic process $\mu_t \to \mu_{t+1}$ such that the sequence of sampled states,

$$
\mu_1, \mu_2, \mu_3, \dots
$$

naturally occurs with frequency $p_{\mu}$. 

While, in principle, we could evolve phase space variables $r = \{q, p\}$ using Newton’s laws with a heat reservoir (which, under the ergodic hypothesis, would sample $p_{\mu}$), this is computationally expensive. Instead, the **Markov Chain Monte Carlo (MCMC) method** introduces a simpler, artificial set of dynamics to generate the required samples efficiently.

### Markov Chains

A **Markov chain** is a set of transition rates $0 < M_{\mu^{\prime} \mu} < 1$ under which the probability distribution evolves as:

$$
p_{\mu^{\prime}}(t+1) = \sum_{N} M_{\mu^{\prime} \mu} p_{\mu}(t)
$$

This is known as the **master equation**.

The transition matrix element $M_{\mu^{\prime} \mu} = P(\mu^{\prime} \mid \mu)$ represents the conditional probability for the transition $\mu \to \mu^{\prime}$ at each time step. Probability conservation requires that each column sums to one:

$$
\sum_{\mu^{\prime}} M_{\mu^{\prime} \mu} = 1 \;.
$$

(In other words, with probability 1, the process must transition to one of the states.)

A key property of Markov chains is that the jump probabilities depend only on the current state $\mu_t$ and not on earlier states $\{\mu_0, \dots, \mu_{t-1}\}$. This property is known as **memorylessness**, or "Markovian" behavior.

At long times, the probability distribution equilibrates to:

$$
p_{\mu}(t=\infty) = \lim _{t \rightarrow \infty} M^t p_{\mu}(0) \equiv \pi_{\mu}
$$

where the equilibrium distribution $\pi$ satisfies:

$$
(M \pi)_{\mu} = \pi_{\mu}
$$

i.e., $\pi$ is the right eigenvector of $M$ corresponding to the eigenvalue 1.

Instead of tracking the full distribution $p_{\mu}(t)$ (which is impractical for large $\Omega$), we sample from it to obtain a sequence $\{\mu_1, \mu_2, \dots\}$.

To implement the Markov process governed by the master equation, we select a new state $\mu_{t+1}$ at each time step based on the transition probability:

$$
P(\mu_{t+1} \mid \mu_t) = M_{\mu_{t+1} \mu_t}
$$

By repeating this process, we generate a sequence $\{\mu_1, \mu_2, \dots, \mu_T\}$, which becomes distributed according to $\pi_{\mu}$ as $T \to \infty$.

The key question is how to choose $M_{\mu^\prime \mu}$ so that $\pi_{\mu} = \frac{1}{Z} e^{-\beta H_{\mu}}$.

If the transition matrix satisfies the **detailed balance condition**:

$$
M_{\mu^{\prime} \mu} \pi_{\mu} = M_{\mu \mu^{\prime}} \pi_{\mu^{\prime}}
$$

for any two states $\mu$ and $\mu^{\prime}$, then the equilibrium distribution $\pi_{\mu}$ is preserved.

From this, we find:

$$
\left(M \cdot \pi\right)_{\mu^{\prime}} = \sum_{\mu} M_{\mu^{\prime} \mu} \pi_{\mu} = \sum_{\mu} M_{\mu \mu^{\prime}} \pi_{\mu^{\prime}} = \pi_{\mu^{\prime}}
$$

This means that **any** distribution $\pi_\mu$ can be realized by a Markov process if the transition rates satisfy the detailed balance condition:

$$
\frac{M_{\mu^{\prime} \mu}}{M_{\mu \mu^{\prime}}} = \frac{\pi_{\mu^{\prime}}}{\pi_{\mu}} = e^{-\beta (E_{\mu^{\prime}} - E_{\mu})} \;.
$$

A crucial simplification here is that the partition function $Z$ cancels, making the right-hand side computable.

There are multiple choices of $M_{\mu^{\prime} \mu}$ that satisfy detailed balance; one of the simplest is the **Metropolis algorithm**.

*Side remark:* Markov processes are often used as a coarse-grained description of the actual dynamics of a physical system, for example, in the case of the Brownian motion of a particle or a polymer. In these cases, detailed balance **needs** to be satisfied because of the time reversibility of the microscopic laws of physics. From that it follows that the forward/backward dynamics have to look the same in equilibrium. 

---

### Metropolis Rule

For notational simplicity, consider a spin system where $\mu = \{\sigma_1, \sigma_2, \dots, \sigma_N\}$ (the original paper considers continuous variables $\mu = \{\vec{q}_i, \vec{p}_i\}$).

1. **Select a spin:** Randomly pick one of the $N$ spins, $\sigma_i$.
2. **Propose a trial move:** Generate a new trial configuration $\{\sigma'\}$ by flipping $\sigma_i \to -\sigma_i$.  
   Example: If $\{\sigma\}_t = \uparrow \uparrow \downarrow \uparrow$, then a trial move might yield $\{\sigma'\} = \uparrow \downarrow \downarrow \uparrow$.
3. **Compute the energy change:**  

   $$
   \Delta E = H[\{\sigma'\}] - H[\{\sigma\}_t]
   $$

   Since $H$ is local, this can be computed efficiently by considering only nearby spins.
4. **Accept or reject the move:** Generate a random number $0 < q < 1$.  
   - If $q < e^{-\beta \Delta E}$, **accept** the move: $\{\sigma\}_{t+1} = \{\sigma'\}$.
   - Otherwise, **reject** the move: $\{\sigma\}_{t+1} = \{\sigma\}_t$.

If $\Delta E < 0$, then $e^{-\beta \Delta E} > 1$, meaning the move is always accepted.

To check that this satisfies detailed balance:

- If $\Delta E < 0$, then:

  $$
  M_{\mu^{\prime} \mu} = 1, \quad M_{\mu \mu^{\prime}} = e^{+\beta \Delta E}
  $$

  so that:

  $$
  \frac{M_{\mu^{\prime} \mu}}{M_{\mu \mu^{\prime}}} = e^{-\beta \Delta E}
  $$

- If $\Delta E > 0$, then:

  $$
  M_{\mu^{\prime} \mu} = e^{-\beta \Delta E}, \quad M_{\mu \mu^{\prime}} = 1
  $$

  leading to:

  $$
  \frac{M_{\mu^{\prime} \mu}}{M_{\mu \mu^{\prime}}} = e^{-\beta \Delta E}
  $$

Thus, the Metropolis transition probabilities satisfy detailed balance with respect to the Boltzmann distribution $\pi_\mu$. 

By running this in a loop and generating thousands of samples:

$$
\left\{\mu_1, \mu_2, \dots, \mu_M\right\}
$$

we can estimate observables as:

$$
\langle \mathcal{O} \rangle \approx \frac{1}{M} \sum_{t=1}^{M} \mathcal{O}(\mu_t)
$$

---

### Numerical Considerations

1. **Burn-in period:** The Markov chain relaxes to equilibrium over a characteristic time $\tau$:

   $$
   M^t p(t=0) = \pi + O(e^{-t/\tau})
   $$

   It is good practice to discard the first $\sim \tau$ samples:

   $$
   \langle \mathcal{O} \rangle = \frac{1}{M - T} \sum_{t=T}^{M} \mathcal{O}(\mu_t)
   $$

   where $T$ is the **burn-in time**.

2. **Error estimation and autocorrelation:**  

   For a finite sample size $M$:

   $$
   \langle \mathcal{O} \rangle = \frac{1}{M} \sum_{t=1}^{M} \mathcal{O}(\mu_t) + \epsilon
   $$

   The error $\epsilon$ is given by:

   $$
   \epsilon = \frac{\text{var}(\mathcal{O})}{\sqrt{M}}, \quad
   \text{var}(\mathcal{O}) = \frac{1}{M} \sum_{t=1}^{M} \mathcal{O}^2(\mu_t) - \langle\mathcal{O}\rangle^2
   $$

   However, Markov chains introduce correlations between samples:

   $$
   \langle \mathcal{O}_t \mathcal{O}_{t+\Delta t} \rangle \sim e^{- \Delta t/\tau}
   $$

   which affects error estimates:

   $$
   \epsilon = \frac{\text{var}(\mathcal{O})}{\sqrt{M/\tau}}
   $$

where $\tau$ is the **autocorrelation time**.

