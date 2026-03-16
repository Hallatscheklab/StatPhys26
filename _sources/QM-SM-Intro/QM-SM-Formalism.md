## Formalism of quantum statistical mechanics

(Also see Kardar 6.4 (Quantum microstates) and Kardar 6.5 (Quantum macrostates))


#### Quantum Analog of a Distribution Over Microstates: The Density Matrix

In classical statistical mechanics, we describe a system by a probability distribution over microstates. In quantum mechanics, the analogous object is the density matrix.

Suppose a quantum system is in a pure state $\left|\psi_{\alpha}\right\rangle$ with probability $p_{\alpha}$. The system’s statistical state is then described by:

$$
\hat{\rho} \equiv \sum_{\alpha} p_{\alpha} \left| \psi_{\alpha} \right\rangle \left\langle \psi_{\alpha} \right|, \qquad \sum_{\alpha} p_{\alpha} = 1
$$

This matrix satisfies:

$$
\operatorname{Tr}(\hat{\rho}) = 1
$$

The expectation value of an observable $\hat{O}$ in this state is given by:

$$
\langle \hat{O} \rangle_{\hat{\rho}} = \sum_{\alpha} p_{\alpha} \left\langle \psi_{\alpha} | \hat{O} | \psi_{\alpha} \right\rangle = \operatorname{Tr}(\hat{O} \hat{\rho})
$$

To derive the trace form, consider:

$$
\operatorname{Tr}(\hat{O} \hat{\rho})=\sum_{\alpha}\langle\alpha|\hat{O} \hat{\rho}| \alpha\rangle=\sum_{\alpha \beta}\langle\alpha|\hat{O}| \beta\rangle \underbrace{\langle\beta|\hat{\rho}| \alpha\rangle}_{=p_{\alpha}\delta_{\alpha, \beta}}
 =\sum_{\alpha} p_{\alpha}\langle\alpha|\hat{O}| \alpha\rangle
$$



The density matrix can be represented in any orthonormal basis ${|i\rangle}$:

$$
\hat{\rho} = \sum_{i,j} \rho_{ij} |i\rangle \langle j|, \qquad \rho_{ij} = \langle i | \hat{\rho} | j \rangle
$$

```{note}

Conditions for a valid density matrix:

1.	Trace one: $\operatorname{Tr}(\hat{\rho}) = 1$

2.	Hermitian: $\hat{\rho}^\dagger = \hat{\rho}$

3.	Positive semi-definite: For all $|v\rangle$,

$$
\langle v | \hat{\rho} | v \rangle = \sum_{\alpha} p_{\alpha} \left| \langle v | \psi_{\alpha} \rangle \right|^2 \geq 0
$$

```

In a general basis, the density matrix can be understood as having two distinct components: **populations** and **coherences**. 

- The **populations** are represented by the diagonal elements of the density matrix, $p_i\equiv \rho_{ii}$. These elements behave like probabilities, satisfying $0 \leq p_i \leq 1$ and $\sum_i p_i = 1$. They describe the likelihood of the system being in a particular quantum state associated with the chosen basis. But note that the probabilistic interpretation of the density matrix depends on the chosen basis.

- The **coherences** are represented by the off-diagonal elements, $\rho_{ij}$ for $i \neq j$. These elements capture the quantum interference effects between different basis states, reflecting the phase relationships and superposition properties of the quantum system.

The structure of the density matrix in a general basis can be visualized as:

$$
\hat{\rho} =
\begin{bmatrix}
p_1=\rho_{11} & \rho_{12} & \cdots & \rho_{1n} \\
\rho_{21} & p_2=\rho_{22} & \cdots & \rho_{2n} \\
\vdots & \vdots & \ddots & \vdots \\
\rho_{n1} & \rho_{n2} & \cdots & p_n=\rho_{nn}
\end{bmatrix}
$$

Here, the diagonal elements $p_i=\rho_{ii}$ correspond to the populations, while the off-diagonal elements $\rho_{ij}$ ($i \neq j$) represent the coherences. The populations are basis-dependent, and in certain special bases (e.g., the eigenbasis of $\hat{\rho}$), the coherences vanish, leaving a diagonal matrix.

This decomposition into populations and coherences provides a useful framework for understanding the physical meaning of the density matrix in quantum mechanics.



```{note}
**Example: Single Spin System**

Consider a single spin system. Let us examine how the density matrix transforms when we change the basis from the $|\uparrow\rangle, |\downarrow\rangle$ (up/down) basis to the $|\rightarrow\rangle, |\leftarrow\rangle$ (left/right) basis.

In the up/down basis, the density matrix is given by:

$$
\hat{\rho}_{\text{up/down}} = \frac{1}{2} \begin{bmatrix}
1 & -1 \\
-1 & 1
\end{bmatrix}
$$

This represents a completely mixed state, where the probabilities of being in the $|\uparrow\rangle$ and $|\downarrow\rangle$ states are equal.

To change to the left/right basis, we use the fact that the $|\rightarrow\rangle$ and $|\leftarrow\rangle$ states are related to the $|\uparrow\rangle$ and $|\downarrow\rangle$ states by the following transformations:

$$
|\rightarrow\rangle = \frac{1}{\sqrt{2}} \left( |\uparrow\rangle + |\downarrow\rangle \right), \quad
|\leftarrow\rangle = \frac{1}{\sqrt{2}} \left( |\uparrow\rangle - |\downarrow\rangle \right)
$$

The transformation matrix $U$ that relates the two bases is:

$$
U = \frac{1}{\sqrt{2}} \begin{bmatrix}
1 & 1 \\
1 & -1
\end{bmatrix}
$$

To express the density matrix in the right/left basis, we perform the basis transformation:

$$
\hat{\rho}_{\text{left/right}} = U \hat{\rho}_{\text{up/down}} U^\dagger
$$

Substituting $\hat{\rho}_{\text{up/down}}$ and $U$:

$$
\hat{\rho}_{\text{left/right}} = \frac{1}{\sqrt{2}} \begin{bmatrix}
1 & 1 \\
1 & -1
\end{bmatrix}
\cdot \frac{1}{2} \begin{bmatrix}
1 & -1 \\
-1 & 1
\end{bmatrix}
\cdot \frac{1}{\sqrt{2}} \begin{bmatrix}
1 & 1 \\
1 & -1
\end{bmatrix}^\dagger
$$

Carrying out the matrix multiplication:

$$
\hat{\rho}_{\text{left/right}} = \begin{bmatrix}
0 & 0 \\
0 & 1
\end{bmatrix}
$$

This result shows that in the right/left basis, the density matrix becomes diagonal, with the system entirely in the $|\leftarrow\rangle$ state. The coherence terms present in the up/down basis vanish in this new basis.
```

There always exists a special basis, namely the eigenbasis of $\hat{\rho}$, in which the density matrix becomes diagonal:

$$
\hat{\rho} = \operatorname{diag}(p_i)
$$

In this eigenbasis, the diagonal elements $p_i$ can be interpreted as the "populations" of the corresponding quantum states, such as energy levels or other relevant states.







----------
### Dynamics

**Exercise:** Show that the Schrödinger equation 

$$
i\hbar \partial_{t}|\psi\rangle = \hat{H}|\psi\rangle
$$

leads to the von Neumann equation:

$$
i\hbar \partial_{t} \hat{\rho} = [\hat{H}, \hat{\rho}]
$$

From this, we can deduce:

$$
i\hbar \partial_{t} \sum_{i} \rho_{i,i} = i\hbar \partial_{t} (\operatorname{Tr}(\hat{\rho})) = \operatorname{Tr}([\hat{H}, \hat{\rho}]) = 0
$$

(since $\operatorname{Tr}([A, B]) = 0$ for any operators $A$ and $B$).

Thus, the trace condition $\operatorname{Tr}(\hat{\rho}) = 1$ is preserved under unitary time evolution.

For a time-independent Hamiltonian, the state evolves as $\psi(t) = \hat{U}(t) \psi(0)$, where:

$$
\hat{U}(t) = e^{-i \hat{H} t / \hbar}
$$

The corresponding evolution of the density matrix is:

$$
\hat{\rho}(t) = \hat{U}(t) \hat{\rho}_{0} \hat{U}^\dagger(t)
$$

For systems interacting with an environment, the evolution is no longer unitary, and the dynamics are described by the Lindblad equation, which incorporates aspects of a master equation.

### Density matrices in equilbrium.

The various equilibrium ensembles are then taken to be diagonal in the $\hat{H}$ basis:

$$
\begin{aligned}
& \hat{\rho}_{E}=\frac{1}{\Omega} \sum_{n} \delta\left(E_{n}-E\right)\left|E_{n}\right\rangle\left\langle E_{n}\right| \\
& \hat{\rho}_{\beta}=\frac{1}{Z} \sum_{n} e^{-\beta E_{n}}\left|E_{n}\right\rangle\left\langle E_{n}\right| \\
& \hat{\rho}_{\beta, \mu}=\frac{1}{Q} \sum_{n} e^{-\beta\left(E_{n}-\mu N_{n}\right)} \left|E_{n}\right\rangle\left\langle E_{n}\right\rangle
\end{aligned}
$$

(Note that $[\hat{H}, \hat{N}]=0$). The density matrices can be conveniently summarized as operator expressions, eg.

$$
\hat{\rho}_{\beta}=\frac{1}{Z} e^{-\beta \hat{H}}, \quad Z=\operatorname{Tr}\left(e^{-\beta \hat{H}}\right)
$$

This points to an interesting observation: with

$$
\beta=\frac{1}{K_{B} T} \rightarrow i t /  \hbar, \quad e^{-\beta \hat{H}} \rightarrow e^{-i t \hat{H} / h}=\text { Time Evolution! }
$$

Thus the thermal density matrix is formally equivalent to "imaginary time evolution",

$$
\hat{\rho}_{\beta}=\frac{1}{Z} \hat{U}(t=-i \beta)
$$ (wick-rotation)

This mathematical coincidence {eq}`wick-rotation` gives rise to a number of technical tricks (Wick rotation | Euclidean path integral) important to quantum field and many body theory.



For an ensemble like $\hat{H}-\mu \hat{N}$, where $[\hat{H}, \hat{N}]=0$, it is easy to show that 

$$
\begin{aligned}
& \langle E\rangle=\langle\hat{H}\rangle=\frac{1}{Z} \partial_{(-\beta)} \operatorname{Tr}\left(e^{-\beta \hat{H}}\right) \\
& =\frac{1}{Z} \partial_{-\beta} Z=-\partial_{\beta} \ln (Z)
\end{aligned}
$$

Note that $Z$ is just a number (as in classical stat mech) in contrast to $\hat{H}$  and  $\hat{\rho}$.

So, fortunately, all our thermo results like $F=-\frac{1}{\beta} \ln (Z), \mu=-\frac{\partial F}{\partial N}$, etc and Maxwell's relations / thermodynamic inequalities are unchanged by quantum effects. It's just harder to compute $Z$ because we need eigenspectrom $\hat{H} \longrightarrow E_{n}$, which is itself hard!

### The Many-Body Hilbert Space

The sum $\sum_{n} e^{-\beta E_{n}}\left|E_{n}\right\rangle\left\langle E_{n}\right|$ spans the Hilbert space $\left|E_{n}\right\rangle \in \mathcal{H}$. To understand this better in the context of many-body systems, let us explore the structure of $\mathcal{H}$ in three common cases:

1. **Spins/qubits**: States like $|\uparrow \uparrow \downarrow \uparrow \cdots\rangle$.
2. **Bosons**: Symmetric wavefunctions, $\psi(x_1, x_2) = \psi(x_2, x_1)$.
3. **Fermions**: Antisymmetric wavefunctions, $\psi(x_1, x_2) = -\psi(x_2, x_1)$.

We will focus on (1) for now, with (2) and (3) covered in future lectures.

#### Spins and Qubits

The Hilbert space for a single $s = 1/2$ spin is:

$$
\mathcal{H} = \operatorname{span}(\{|\uparrow\rangle, |\downarrow\rangle\}) = \mathbb{C}^2
$$

A general state is written as:

$$
|\psi\rangle = \psi_\uparrow |\uparrow\rangle + \psi_\downarrow |\downarrow\rangle = \begin{pmatrix} \psi_\uparrow \\ \psi_\downarrow \end{pmatrix}
$$

In quantum information, this is referred to as a "qubit," with basis states $\{|0\rangle, |1\rangle\}$. Operators acting on this space are spanned by the $2 \times 2$ Pauli matrices $\sigma^{x/y/z}$, often denoted as $X, Y, Z$ in quantum information.

For a spin-$S$ system, the Hilbert space generalizes to:

$$
\mathcal{H} = \operatorname{span}(\{|m\rangle\}) = \mathbb{C}^{2S+1}, \quad -S \leq m \leq S
$$

This is referred to as a "qudit," where $d = 2S + 1$.

#### Two Spins

For two spins, the Hilbert space is:

$$
\mathcal{H}^{(2)} = \operatorname{span}(\{|\uparrow\uparrow\rangle, |\uparrow\downarrow\rangle, |\downarrow\uparrow\rangle, |\downarrow\downarrow\rangle\}) = \mathbb{C}^2 \otimes \mathbb{C}^2 = \mathbb{C}^4
$$

This is a tensor product space:

$$
|\psi\rangle = \sum_{\sigma_1, \sigma_2 = \uparrow, \downarrow} \psi_{\sigma_1 \sigma_2} |\sigma_1 \sigma_2\rangle = \begin{pmatrix} \psi_{\uparrow\uparrow} \\ \psi_{\uparrow\downarrow} \\ \psi_{\downarrow\uparrow} \\ \psi_{\downarrow\downarrow} \end{pmatrix}
$$

#### $N$ Spins

For $N$ spins, the Hilbert space extends as:

$$
\mathcal{H}^{(N)} = \operatorname{span}(\{| \sigma_1, \sigma_2, \ldots, \sigma_N \rangle\}) = \mathbb{C}^2 \otimes \mathbb{C}^2 \otimes \cdots = \mathbb{C}^{2^N}
$$

The dimension of $\mathcal{H}^{(N)}$ is $2^N$, not $2 \times N$. A general state is:

$$
|\psi\rangle = \sum_{\sigma_1, \sigma_2, \ldots, \sigma_N} \psi_{\sigma_1, \sigma_2, \ldots} | \{\sigma\} \rangle
$$

This requires $2^N$ complex coefficients $\psi_{\{\sigma\}}$, which grows exponentially with $N$.

#### Classical vs. Quantum Storage

In contrast, a classical Ising model microstate $\mu = \sigma_1 \sigma_2 \cdots \sigma_N$ requires only $N$ classical bits. For example, simulating a $20 \times 20 = 400$ spin system in classical Monte Carlo requires less than 1 KB of RAM. However, storing the quantum state $\psi_{\{\sigma\}}$ with 128-bit precision would require:

$$
128 \cdot 2^{400} \approx 3 \cdot 10^{122} \text{ bits} \approx 3 \cdot 10^{112} \text{ GB}
$$

This demonstrates the exponential difficulty of simulating quantum systems with classical resources.

#### Many-Body Operators

The tensor product structure also applies to operators:

$$
\begin{aligned}
\hat{Z}_{i}\left|\sigma_{1}, \sigma_{2}, \cdots, \sigma_{N}\right\rangle & = \sigma_{i}\left|\sigma_{1}, \cdots, \sigma_{N}\right\rangle, \\
\left(\hat{Z}_{i} \cdot \hat{Z}_{j}\right)\left|\sigma_{1}, \cdots, \sigma_{N}\right\rangle & = \sigma_{i} \cdot \sigma_{j}\left|\sigma_{1}, \cdots, \sigma_{N}\right\rangle.
\end{aligned}
$$

For the Pauli matrix $\hat{X} = \begin{bmatrix} 0 & 1 \\ 1 & 0 \end{bmatrix}$, with $\sigma \in \{1, -1\}$, we have:

$$
\begin{aligned}
\hat{X}|\sigma\rangle & = |-\sigma\rangle \quad \text{(Bit-flip)}, \\
\hat{X}_{1}\left|\sigma_{1}, \sigma_{2}, \cdots, \sigma_{N}\right\rangle & = \left|-\sigma_{1}, \sigma_{2}, \cdots\right\rangle.
\end{aligned}
$$

The operators $\hat{Z}_{i}$ and $\hat{X}_{i}$ are $2^N \times 2^N$ matrices. For example, for $N = 2$, the Hilbert space is $\{|1, 1\rangle, |1, -1\rangle, |-1, 1\rangle, |-1, -1\rangle\}$, and the operators are:

$$
\begin{aligned}
\hat{Z}_{1} & = \begin{bmatrix} 
1 & 0 & 0 & 0 \\ 
0 & 1 & 0 & 0 \\ 
0 & 0 & -1 & 0 \\ 
0 & 0 & 0 & -1 
\end{bmatrix}, \quad
\hat{Z}_{2} = \begin{bmatrix} 
1 & 0 & 0 & 0 \\ 
0 & -1 & 0 & 0 \\ 
0 & 0 & 1 & 0 \\ 
0 & 0 & 0 & -1 
\end{bmatrix}, \\
\hat{X}_{1} & = \begin{bmatrix} 
0 & 0 & 1 & 0 \\ 
0 & 0 & 0 & 1 \\ 
1 & 0 & 0 & 0 \\ 
0 & 1 & 0 & 0 
\end{bmatrix}, \quad
\hat{X}_{2} = \begin{bmatrix} 
0 & 1 & 0 & 0 \\ 
1 & 0 & 0 & 0 \\ 
0 & 0 & 0 & 1 \\ 
0 & 0 & 1 & 0 
\end{bmatrix}.
\end{aligned}
$$

Generic $2^N \times 2^N$ operators can be constructed by combining $\hat{Z}_{i}$ and $\hat{X}_{i}$ through addition or multiplication.

**Example: Transverse-Field Ising Model**

The Hamiltonian for the transverse-field Ising model is:

$$
\hat{H}_{\text{TFI}} = \sum_{i=1}^{N} \left[-J \hat{Z}_{i} \cdot \hat{Z}_{i+1} - g \hat{X}_{i}\right],
$$

and the magnetization operator is:

$$
\hat{m} = \frac{1}{N} \sum_{i} \hat{Z}_{i}.
$$

**Typical Problem:**

Given the thermal density matrix $\hat{\rho}_{\beta} = \frac{e^{-\beta \hat{H}_{\text{TFI}}}}{Z}$, compute the expectation value $\operatorname{Tr}(\hat{m} \hat{\rho}_{\beta})$.

This is challenging because calculating $\hat{\rho}_{\beta}$ requires diagonalizing the $2^N \times 2^N$ Hamiltonian matrix $\hat{H}_{\text{TFI}}$. Current computational techniques can handle systems with $N \sim 20$ spins, as discussed in the context of "quantum supremacy."

### Reduced Density Matrices and Entanglement

In **classical** probability theory, a joint distribution over two random variables, $\mu = \{\mu_1, \mu_2\}$, is given by $p(\mu_1, \mu_2)$. From this, we can define a marginal distribution for one variable:

$$
p_1(\mu_1) \equiv \sum_{\mu_2} p(\mu_1, \mu_2)
$$

If we are only interested in observables $O_1(\mu_1)$ (rather than $O(\mu_1, \mu_2)$), we can compute their expectation value using the marginal distribution:

$$
\begin{aligned}
\langle O_1 \rangle & = \sum_{\mu_1, \mu_2} O_1(\mu_1) p(\mu_1, \mu_2) \\
& = \sum_{\mu_1} O_1(\mu_1) p_1(\mu_1)
\end{aligned}
$$

Thus, the marginal $p_1$ is sufficient to recover $\langle O_1 \rangle$. However, in general:

$$
p(\mu_1, \mu_2) \neq p_1(\mu_1) \cdot p_2(\mu_2)
$$

This indicates that $\mu_1$ and $\mu_2$ are "correlated," leading to $\langle O_1 O_2 \rangle \neq \langle O_1 \rangle \langle O_2 \rangle$.

For example, the distribution:

$$
p(\{\sigma\}) = \frac{1}{Z} e^{-\beta \sum_i \sigma_i \cdot \sigma_{i+1}}
$$

does not factorize, whereas:

$$
p(\sigma) = \frac{1}{Z} e^{-\beta \sum_i h \sigma_i} = \frac{1}{Z} \prod_i e^{-\beta h \sigma_i}
$$

does factorize as $p_1(\sigma_1) p_2(\sigma_2) \ldots$.

In **quantum** mechanics, for a system on $\mathcal{H} = \mathcal{H}_1 \otimes \mathcal{H}_2$, the equivalent of a marginal distribution is the **Reduced Density Matrix**.

Let $\operatorname{span}\{\left|i_1\right\rangle\} = \mathcal{H}_1 = \mathbb{C}^{D_1}$ and $\operatorname{span}\{\left|i_2\right\rangle\} = \mathcal{H}_2 = \mathbb{C}^{D_2}$. Then:

$$
\mathcal{H} = \operatorname{span}\{\left|i_1, i_2\right\rangle\} = \mathbb{C}^{D_1 \cdot D_2}
$$

A general quantum state can be expressed as:

$$
|\psi\rangle = \sum_{i_1, i_2} \psi_{i_1, i_2} \left|i_1, i_2\right\rangle
$$

The corresponding density matrix is:

$$
\hat{\rho} = \sum p_\alpha |\psi_\alpha\rangle \langle\psi_\alpha| = \sum \rho_{i_1, i_2; j_1, j_2} |i_1, i_2\rangle \langle j_1, j_2|
$$

For an observable $\hat{O} = \hat{O}_1 \otimes \hat{\mathbb{I}}$, which acts only on subsystem 1, we have:

$$
\hat{O}_1 = \sum_{i_1, i_2, j_1} \hat{O}_{i_1, j_1} \left|i_1, i_2\right\rangle \left\langle j_1, i_2\right|
$$

This effectively traces out subsystem 2. 

```{note}
For instance, in a two-spin system $\mathcal{H} = \mathbb{C}^2 \otimes \mathbb{C}^2$, we might physically separate them to different regions of the lab, and then use a [Stern-Gerlach aparatus](https://en.wikipedia.org/wiki/Stern–Gerlach_experiment) to measure *only* spin 1. This is equivalent to projecting onto an operator $\hat{G} = \hat{Z}_1 \otimes \hat{\mathbb{I}}_2$.
```

The expectation value of the observable is:

$$
\langle \hat{O} \rangle = \operatorname{Tr}(\hat{O} \hat{\rho}) = \sum O_{i_1, j_1} \rho_{j_1, i_2; i_1, i_2}
$$

Defining a $D_1 \times D_1$ matrix:

$$
\rho_{j_1; i_1}^{(1)} \equiv \sum_{i_2} \rho_{j_1, i_2; i_1, i_2}
$$

and the corresponding operator:

$$
\hat{\rho}^{(1)} = \sum \rho_{i_1, j_1}^{(1)} \left|i_1\right\rangle \left\langle j_1\right|
$$

we find:

$$
\langle \hat{O}_1 \rangle = \operatorname{Tr}(\hat{O}_1 \hat{\rho}^{(1)})
$$

This shows that the "partial trace" $\hat{\rho}^{(1)} = \operatorname{Tr}_2(\hat{\rho})$ serves as the quantum analog of a marginal distribution, known as the **Reduced Density Matrix** for subsystem 1.

```{note}
**Example: EPR State**
Consider the EPR state:

$$
|EPR\rangle = \frac{1}{\sqrt{2}}(|\uparrow\downarrow\rangle + |\downarrow\uparrow\rangle)
$$

The density matrix is:

$$
\hat{\rho} = |EPR\rangle \langle EPR| = \frac{1}{2} \begin{bmatrix}
0 & 0 & 0 & 0 \\
0 & 1 & 1 & 0 \\
0 & 1 & 1 & 0 \\
0 & 0 & 0 & 0
\end{bmatrix}
$$

The reduced density matrix for subsystem 1 is:

$$
\hat{\rho}_1 = \begin{bmatrix}
\frac{1}{2} & 0 \\
0 & \frac{1}{2}
\end{bmatrix}
$$

**Note:** 
1. $\hat{\rho}_1$ is mixed, even though $\hat{\rho}$ is pure!! 
2. $\langle X_1 \rangle = \langle Y_1 \rangle = \langle Z_1 \rangle = 0$ despite the fact that $\langle Z_1 Z_2 \rangle = -1$. This shows that even though the subsystem for themselves look completely random, the two subsystems are strongly correlated (entangled) when considered together. the two EPR spins are (anti-)correlated, even though the overall system is in a definite (pure) state.  The randomness of the individual subsystems does not contradict the fact that the overall system is in a definite (pure) state. "Local randomness with global order" is a hallmark of quantum entanglement.
```


### Entropy 

The entropy of a quantum state is defined as:

$$
S = -\operatorname{Tr}(\hat{\rho} \ln \hat{\rho})
$$

For a density matrix $\hat{\rho} = \sum_\alpha p_\alpha |\alpha\rangle \langle\alpha|$, where $\langle\alpha | \beta\rangle = \delta_{\alpha \beta}$, this simplifies to:

$$
S = -\sum_\alpha p_\alpha \ln p_\alpha
$$

A state $\hat{\rho}$ is called **pure** if:

$$
S[\hat{\rho}] = 0 \quad \Longleftrightarrow \quad \hat{\rho} = |\psi\rangle \langle\psi|
$$

Otherwise, if $S[\hat{\rho}] > 0$, the state $\hat{\rho}$ is considered **mixed**.

#### Entanglement 

Consider a composite system with Hilbert space $\mathcal{H} = \mathcal{H}_1 \otimes \mathcal{H}_2$, and let $|\psi\rangle \in \mathcal{H}$ be a pure state. While the total state $\hat{\rho} = |\psi\rangle \langle\psi|$ has $S[\hat{\rho}] = 0$, the reduced density matrix (RDM) for a subsystem, $\hat{\rho}_1 = \operatorname{Tr}_2(\hat{\rho})$, can be mixed. 

The entropy of the RDM, $S[\hat{\rho}_1]$, is referred to as the **entanglement entropy**. This measures the degree of quantum entanglement between the two subsystems.

Even though the overall system is in a pure state, measurements on subsystems $1$ and $2$ can exhibit correlations:

$$
\langle O_1 O_2 \rangle \neq \langle O_1 \rangle \langle O_2 \rangle
$$

For example, in the EPR state $|\psi\rangle = |EPR\rangle$, the reduced density matrix for one subsystem is:

$$
\hat{\rho}_1 = \operatorname{diag}\left(\frac{1}{2}, \frac{1}{2}\right)
$$

This gives an entanglement entropy of $S = \ln(2)$, corresponding to one bit of entanglement.

```{note}
For more insights, check out [Matthew Fisher's recent colloquium](https://www.youtube.com/watch?v=2YCOlbMk4FA) on phase transitions in entanglement entropy.
```

#### Measures of Quantum Information

Many concepts from classical information theory extend to the quantum domain, though not all do.

For a composite Hilbert space $\mathcal{H}_{A} \otimes \mathcal{H}_{B} = \mathcal{H}_{AB}$, with the reduced density matrix $\hat{\rho}_{A} = \operatorname{Tr}_{B}(\hat{\rho}_{AB})$, the **mutual information** is defined as a measure of total correlation between subsystems $A$ and $B$:

$$
I(A: B) = S[\hat{\rho}_{A}] + S[\hat{\rho}_{B}] - S[\hat{\rho}_{AB}] \geq 0
$$

The mutual information is zero if and only if the joint state factorizes:

$$
I(A: B) = 0 \quad \Longleftrightarrow \quad \hat{\rho}_{AB} = \hat{\rho}_{A} \otimes \hat{\rho}_{B}
$$

An important property of mutual information is its relationship to the **strong subadditivity** of quantum entropy:

$$
I(A: BC) \geq I(A: B)
$$

The difference $I(A: BC) - I(A: B)$ can be expressed as:

$$
\begin{aligned}
I(A: BC) - I(A: B) &= S_{A} + S_{BC} - S_{ABC} - S_{A} - S_{B} + S_{AB} \\
&= S_{AB} + S_{BC} - S_{ABC} - S_{B} \geq 0
\end{aligned}
$$

This inequality, known as the **strong subadditivity of quantum entropy**, is a fundamental result in quantum information theory, though its proof is non-trivial. For more details, see the [Wikipedia article on strong subadditivity of quantum entropy](https://en.wikipedia.org/wiki/Strong_subadditivity_of_quantum_entropy).

