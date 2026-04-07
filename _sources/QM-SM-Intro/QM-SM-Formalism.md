## Formalism of quantum statistical mechanics

(Also see Kardar 6.4, "Quantum microstates," and Kardar 6.5, "Quantum macrostates.")

#### Quantum analog of a distribution over microstates: the density matrix

In classical statistical mechanics, we describe a system by a probability distribution over microstates. In quantum mechanics, the analogous object is the density matrix.

Suppose the system is in the pure state $|\alpha\rangle$ with probability $p_\alpha$. Its statistical state is then

$$
\hat{\rho} \equiv \sum_\alpha p_\alpha |\alpha\rangle \langle \alpha|,
\qquad
\sum_\alpha p_\alpha = 1.
$$

This implies

$$
\operatorname{Tr}(\hat{\rho}) = 1.
$$

The expectation value of an observable $\hat{O}$ is

$$
\langle \hat{O} \rangle_{\hat{\rho}}
=
\sum_\alpha p_\alpha \langle \alpha | \hat{O} | \alpha \rangle
=
\operatorname{Tr}(\hat{O}\hat{\rho}).
$$

To see the trace formula explicitly, choose the basis $\{|\alpha\rangle\}$ to be the basis in which

$$
\hat{\rho} = \sum_\alpha p_\alpha |\alpha\rangle \langle \alpha|.
$$

Then

$$
\begin{aligned}
\operatorname{Tr}(\hat{O}\hat{\rho})
&=
\sum_\alpha \langle \alpha | \hat{O}\hat{\rho} | \alpha \rangle \\
&=
\sum_{\alpha,\beta}
\langle \alpha | \hat{O} | \beta \rangle
\langle \beta | \hat{\rho} | \alpha \rangle \\
&=
\sum_\alpha p_\alpha \langle \alpha | \hat{O} | \alpha \rangle.
\end{aligned}
$$

In an arbitrary orthonormal basis $\{|i\rangle\}$, we can write

$$
\hat{\rho}
=
\sum_{i,j} \rho_{ij} |i\rangle \langle j|,
\qquad
\rho_{ij} = \langle i | \hat{\rho} | j \rangle.
$$

```{note}
Conditions for a valid density matrix:

1. $\operatorname{Tr}(\hat{\rho}) = 1$
2. $\hat{\rho}^\dagger = \hat{\rho}$
3. $\hat{\rho}$ is positive semidefinite, meaning that for every $|v\rangle$,

$$
\langle v | \hat{\rho} | v \rangle \geq 0.
$$

If $\hat{\rho} = \sum_\alpha p_\alpha |\alpha\rangle \langle \alpha|$, then

$$
\langle v | \hat{\rho} | v \rangle
=
\sum_\alpha p_\alpha |\langle v | \alpha \rangle|^2 \geq 0.
$$
```

In a general basis, it is useful to distinguish between **populations** and **coherences**.

- The diagonal entries $p_i \equiv \rho_{ii}$ are the populations. In a given basis they behave like probabilities: $0 \le p_i \le 1$ and $\sum_i p_i = 1$.
- The off-diagonal entries $\rho_{ij}$ with $i \neq j$ are the coherences. They encode phase relations and quantum interference between basis states.

So, in matrix form,

$$
\hat{\rho} =
\begin{bmatrix}
p_1=\rho_{11} & \rho_{12} & \cdots & \rho_{1n} \\
\rho_{21} & p_2=\rho_{22} & \cdots & \rho_{2n} \\
\vdots & \vdots & \ddots & \vdots \\
\rho_{n1} & \rho_{n2} & \cdots & p_n=\rho_{nn}
\end{bmatrix}.
$$

The interpretation of "population" depends on the basis. In particular, there always exists a special basis, namely the eigenbasis of $\hat{\rho}$, in which all coherences vanish and

$$
\hat{\rho} = \operatorname{diag}(p_i).
$$

In that basis, the $p_i$ are the eigenvalues of $\hat{\rho}$ and can be interpreted directly as probabilities.

```{note}
**Example: single spin**

Consider the density matrix

$$
\hat{\rho}_{\text{up/down}}
=
\frac{1}{2}
\begin{bmatrix}
1 & -1 \\
-1 & 1
\end{bmatrix}
$$

in the $|\uparrow\rangle, |\downarrow\rangle$ basis.

This is **not** a completely mixed state, since a completely mixed state would be $\frac{1}{2}\mathbb{I}$. Instead, this is a pure state written in a basis where the density matrix has off-diagonal coherence.

Now change to the left/right basis,

$$
|\rightarrow\rangle = \frac{1}{\sqrt{2}} \left(|\uparrow\rangle + |\downarrow\rangle\right),
\qquad
|\leftarrow\rangle = \frac{1}{\sqrt{2}} \left(|\uparrow\rangle - |\downarrow\rangle\right).
$$

The basis-change matrix is

$$
U = \frac{1}{\sqrt{2}}
\begin{bmatrix}
1 & 1 \\
1 & -1
\end{bmatrix},
$$

and the density matrix in the new basis is

$$
\hat{\rho}_{\text{left/right}} = U \hat{\rho}_{\text{up/down}} U^\dagger
=
\begin{bmatrix}
0 & 0 \\
0 & 1
\end{bmatrix}.
$$

So in the left/right basis the state is simply $|\leftarrow\rangle\langle\leftarrow|$. This illustrates that coherences are basis-dependent.
```

----------
### Dynamics

**Exercise:** Show that the Schr\"odinger equation

$$
i\hbar \partial_t |\psi\rangle = \hat{H} |\psi\rangle
$$

implies the von Neumann equation

$$
i\hbar \partial_t \hat{\rho} = [\hat{H}, \hat{\rho}].
$$

From this it follows that

$$
i\hbar \partial_t \operatorname{Tr}(\hat{\rho})
=
\operatorname{Tr}([\hat{H},\hat{\rho}]) = 0,
$$

since $\operatorname{Tr}([A,B]) = 0$ for any two operators $A$ and $B$.

Thus the normalization condition $\operatorname{Tr}(\hat{\rho}) = 1$ is preserved by unitary time evolution.

For a time-independent Hamiltonian,

$$
\hat{U}(t) = e^{-i\hat{H}t/\hbar},
$$

and the density matrix evolves as

$$
\hat{\rho}(t) = \hat{U}(t)\hat{\rho}_0 \hat{U}^\dagger(t).
$$

If the system interacts with an environment, the evolution is no longer unitary. In that case one typically uses a master equation, such as the Lindblad equation.

### Density matrices in equilibrium

Equilibrium ensembles are diagonal in the energy basis:

$$
\begin{aligned}
\hat{\rho}_E
&=
\frac{1}{\Omega}
\sum_n \delta(E_n - E) |E_n\rangle \langle E_n|, \\
\hat{\rho}_\beta
&=
\frac{1}{Z}
\sum_n e^{-\beta E_n} |E_n\rangle \langle E_n|, \\
\hat{\rho}_{\beta,\mu}
&=
\frac{1}{Q}
\sum_n e^{-\beta(E_n - \mu N_n)} |E_n\rangle \langle E_n|.
\end{aligned}
$$

Here we assume $[\hat{H},\hat{N}] = 0$ in the grand-canonical case.

These expressions can be written compactly in operator form. For example,

$$
\hat{\rho}_\beta = \frac{1}{Z} e^{-\beta \hat{H}},
\qquad
Z = \operatorname{Tr}(e^{-\beta \hat{H}}).
$$

```{note}
**Why does the canonical density matrix make sense?**

One modern viewpoint is that the full universe $S+B$ may itself be in a pure state $|\Psi\rangle$, with $S$ a small subsystem and $B$ a very large bath. Even if the total state is pure, the subsystem is described by the reduced density matrix

$$
\hat{\rho}_S = \operatorname{Tr}_B |\Psi\rangle\langle\Psi|
$$

and this reduced density matrix is typically mixed. If the pure state $|\Psi\rangle$ lies in a narrow energy window of the full Hamiltonian, then for a sufficiently large bath one typically finds

$$
\hat{\rho}_S \approx \frac{1}{Z} e^{-\beta \hat{H}_S}.
$$

So a subsystem can look thermal and mixed even when the full universe is in a pure state. This perspective is often referred to as **canonical typicality**.
```

This leads to an important formal analogy. If we make the substitution

$$
\beta \longleftrightarrow \frac{i t}{\hbar},
$$

then

$$
e^{-\beta \hat{H}}
\longleftrightarrow
e^{-it\hat{H}/\hbar}
=
\hat{U}(t).
$$

So the thermal density matrix is formally related to evolution in **imaginary time**:

$$
\hat{\rho}_\beta = \frac{1}{Z}\hat{U}(t=-i\hbar\beta).
$$ (wick-rotation)

This formal relation, {eq}`wick-rotation`, underlies many useful methods in many-body theory and quantum field theory, including Wick rotation and Euclidean path integrals.

For an ensemble defined by $\hat{H} - \mu \hat{N}$, with $[\hat{H},\hat{N}] = 0$, one finds

$$
\begin{aligned}
\langle E \rangle
&=
\langle \hat{H} \rangle
=
\frac{1}{Z}\,\partial_{(-\beta)} \operatorname{Tr}(e^{-\beta \hat{H}}) \\
&=
\frac{1}{Z}\,\partial_{(-\beta)} Z
=
-\partial_\beta \ln Z.
\end{aligned}
$$

Note that $Z$ is an ordinary number, just as in classical statistical mechanics, whereas $\hat{H}$ and $\hat{\rho}$ are operators.

So the formal thermodynamic relations,

$$
F = -\frac{1}{\beta}\ln Z,
\qquad
\mu = \left(\frac{\partial F}{\partial N}\right)_{T,V},
$$

together with Maxwell relations and thermodynamic inequalities, are unchanged in quantum statistical mechanics. The main new difficulty is practical: computing $Z$ requires knowledge of the spectrum $\hat{H}\to E_n$.

### The many-body Hilbert space

The sum

$$
\sum_n e^{-\beta E_n}|E_n\rangle \langle E_n|
$$

runs over a basis of the many-body Hilbert space $\mathcal{H}$. To understand quantum statistical mechanics, we therefore need some feeling for the structure of $\mathcal{H}$.

Three important examples are:

1. **Spins/qubits**: basis states such as $|\uparrow\uparrow\downarrow\uparrow\cdots\rangle$.
2. **Bosons**: symmetric wavefunctions, for example $\psi(x_1,x_2)=\psi(x_2,x_1)$.
3. **Fermions**: antisymmetric wavefunctions, for example $\psi(x_1,x_2)=-\psi(x_2,x_1)$.

We focus on spins here; bosons and fermions will be discussed later.

#### Spins and qubits

For a single spin-$1/2$,

$$
\mathcal{H} = \operatorname{span}\{|\uparrow\rangle, |\downarrow\rangle\} = \mathbb{C}^2.
$$

A general state is

$$
|\psi\rangle
=
\psi_\uparrow |\uparrow\rangle + \psi_\downarrow |\downarrow\rangle
=
\begin{pmatrix}
\psi_\uparrow \\
\psi_\downarrow
\end{pmatrix}.
$$

In quantum information, this is a **qubit**, with basis states often denoted $|0\rangle$ and $|1\rangle$. Operators on this space are generated by the Pauli matrices $\sigma^x,\sigma^y,\sigma^z$, often written simply as $X,Y,Z$.

For a spin-$S$ degree of freedom,

$$
\mathcal{H}
=
\operatorname{span}\{|m\rangle\}
=
\mathbb{C}^{2S+1},
\qquad
-S \le m \le S.
$$

This is sometimes called a **qudit** with local dimension $d=2S+1$.

#### Two spins

For two spins,

$$
\mathcal{H}^{(2)}
=
\operatorname{span}\{|\uparrow\uparrow\rangle, |\uparrow\downarrow\rangle, |\downarrow\uparrow\rangle, |\downarrow\downarrow\rangle\}
=
\mathbb{C}^2 \otimes \mathbb{C}^2
=
\mathbb{C}^4.
$$

A general two-spin state is

$$
|\psi\rangle
=
\sum_{\sigma_1,\sigma_2=\uparrow,\downarrow}
\psi_{\sigma_1\sigma_2} |\sigma_1\sigma_2\rangle.
$$

#### $N$ spins

For $N$ spins,

$$
\mathcal{H}^{(N)}
=
\operatorname{span}\{|\sigma_1,\sigma_2,\ldots,\sigma_N\rangle\}
=
(\mathbb{C}^2)^{\otimes N}
=
\mathbb{C}^{2^N}.
$$

So the Hilbert-space dimension is $2^N$, not $2N$. A general state is

$$
|\psi\rangle
=
\sum_{\sigma_1,\sigma_2,\ldots,\sigma_N}
\psi_{\sigma_1,\sigma_2,\ldots,\sigma_N}
|\sigma_1,\sigma_2,\ldots,\sigma_N\rangle.
$$

Thus a generic quantum state requires $2^N$ complex amplitudes.

#### Classical vs. quantum storage

By contrast, a classical Ising microstate $\mu = \sigma_1\sigma_2\cdots\sigma_N$ requires only $N$ bits to specify.

For example, a $20\times 20 = 400$ spin configuration in a classical Monte Carlo simulation needs only a few hundred bits, whereas a generic quantum state of 400 spins requires

$$
128 \cdot 2^{400}
\approx
3 \times 10^{122}\ \text{bits}
\approx
3 \times 10^{112}\ \text{GB}
$$

if stored with 128-bit precision per complex amplitude. This illustrates the exponential complexity of generic many-body quantum states.

#### Many-body operators

The tensor-product structure also determines the form of operators. For example,

$$
\begin{aligned}
\hat{Z}_i |\sigma_1,\sigma_2,\ldots,\sigma_N\rangle
&=
\sigma_i |\sigma_1,\sigma_2,\ldots,\sigma_N\rangle, \\
(\hat{Z}_i \hat{Z}_j)|\sigma_1,\sigma_2,\ldots,\sigma_N\rangle
&=
\sigma_i \sigma_j |\sigma_1,\sigma_2,\ldots,\sigma_N\rangle.
\end{aligned}
$$

For the Pauli matrix

$$
\hat{X}
=
\begin{bmatrix}
0 & 1 \\
1 & 0
\end{bmatrix},
$$

with $\sigma \in \{+1,-1\}$, we have

$$
\begin{aligned}
\hat{X}|\sigma\rangle
&=
|-\sigma\rangle, \\
\hat{X}_1 |\sigma_1,\sigma_2,\ldots,\sigma_N\rangle
&=
|-\sigma_1,\sigma_2,\ldots,\sigma_N\rangle.
\end{aligned}
$$

The operators $\hat{Z}_i$ and $\hat{X}_i$ are $2^N \times 2^N$ matrices. For $N=2$, in the basis

$$
\{|1,1\rangle,\ |1,-1\rangle,\ |-1,1\rangle,\ |-1,-1\rangle\},
$$

they are

$$
\begin{aligned}
\hat{Z}_1 &=
\begin{bmatrix}
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0 \\
0 & 0 & -1 & 0 \\
0 & 0 & 0 & -1
\end{bmatrix}, \qquad
\hat{Z}_2 =
\begin{bmatrix}
1 & 0 & 0 & 0 \\
0 & -1 & 0 & 0 \\
0 & 0 & 1 & 0 \\
0 & 0 & 0 & -1
\end{bmatrix}, \\
\hat{X}_1 &=
\begin{bmatrix}
0 & 0 & 1 & 0 \\
0 & 0 & 0 & 1 \\
1 & 0 & 0 & 0 \\
0 & 1 & 0 & 0
\end{bmatrix}, \qquad
\hat{X}_2 =
\begin{bmatrix}
0 & 1 & 0 & 0 \\
1 & 0 & 0 & 0 \\
0 & 0 & 0 & 1 \\
0 & 0 & 1 & 0
\end{bmatrix}.
\end{aligned}
$$

Generic many-body operators are built from such local operators by addition and multiplication.

**Example: transverse-field Ising model**

$$
\hat{H}_{\mathrm{TFI}}
=
\sum_{i=1}^N \left[-J \hat{Z}_i \hat{Z}_{i+1} - g \hat{X}_i\right],
$$

with magnetization operator

$$
\hat{m} = \frac{1}{N}\sum_i \hat{Z}_i.
$$

A typical problem is to compute

$$
\operatorname{Tr}(\hat{m}\hat{\rho}_\beta),
\qquad
\hat{\rho}_\beta = \frac{e^{-\beta \hat{H}_{\mathrm{TFI}}}}{Z}.
$$

The difficulty is that this generally requires diagonalizing a $2^N \times 2^N$ Hamiltonian. Exact methods therefore reach only modest system sizes, typically $N \sim 20$ spins.

### Reduced density matrices and entanglement

In classical probability theory, a joint distribution $p(\mu_1,\mu_2)$ has marginals

$$
p_1(\mu_1) \equiv \sum_{\mu_2} p(\mu_1,\mu_2).
$$

If we only care about observables depending on $\mu_1$, then

$$
\begin{aligned}
\langle O_1 \rangle
&=
\sum_{\mu_1,\mu_2} O_1(\mu_1) p(\mu_1,\mu_2) \\
&=
\sum_{\mu_1} O_1(\mu_1) p_1(\mu_1).
\end{aligned}
$$

So the marginal is enough to compute expectation values of observables acting only on subsystem 1.

In general,

$$
p(\mu_1,\mu_2) \neq p_1(\mu_1)p_2(\mu_2),
$$

and then the two variables are correlated.

The quantum analog of a marginal distribution is the **reduced density matrix**.

Let

$$
\mathcal{H} = \mathcal{H}_1 \otimes \mathcal{H}_2,
\qquad
\mathcal{H}_1 = \mathbb{C}^{D_1},
\qquad
\mathcal{H}_2 = \mathbb{C}^{D_2}.
$$

Then

$$
\mathcal{H}
=
\operatorname{span}\{|i_1,i_2\rangle\}
=
\mathbb{C}^{D_1 D_2}.
$$

A general state is

$$
|\psi\rangle = \sum_{i_1,i_2} \psi_{i_1,i_2} |i_1,i_2\rangle,
$$

and a general density matrix is

$$
\hat{\rho}
=
\sum_{i_1,i_2,j_1,j_2}
\rho_{i_1,i_2;j_1,j_2}
|i_1,i_2\rangle \langle j_1,j_2|.
$$

Now consider an observable that acts only on subsystem 1:

$$
\hat{O} = \hat{O}_1 \otimes \hat{\mathbb{I}}_2.
$$

```{note}
For example, in a two-spin system $\mathcal{H} = \mathbb{C}^2 \otimes \mathbb{C}^2$, we might separate the spins spatially and use a [Stern-Gerlach apparatus](https://en.wikipedia.org/wiki/Stern%E2%80%93Gerlach_experiment) to measure only spin 1. That corresponds to an operator such as $\hat{G} = \hat{Z}_1 \otimes \hat{\mathbb{I}}_2$.
```

Its expectation value is

$$
\langle \hat{O} \rangle
=
\operatorname{Tr}(\hat{O}\hat{\rho})
=
\sum_{i_1,j_1,i_2} O_{i_1j_1}\,\rho_{j_1,i_2;i_1,i_2}.
$$

This motivates the definition

$$
\rho^{(1)}_{j_1 i_1}
\equiv
\sum_{i_2}\rho_{j_1,i_2;i_1,i_2},
$$

or, in operator form,

$$
\hat{\rho}^{(1)} = \operatorname{Tr}_2(\hat{\rho}),
$$

where $\operatorname{Tr}_2$ denotes the partial trace over subsystem 2.

Then

$$
\langle \hat{O}_1 \rangle = \operatorname{Tr}(\hat{O}_1 \hat{\rho}^{(1)}).
$$

So $\hat{\rho}^{(1)}$ is the quantum analog of the marginal distribution for subsystem 1.

```{note}
**Example: EPR state**

Consider

$$
|EPR\rangle = \frac{1}{\sqrt{2}}\left(|\uparrow\downarrow\rangle + |\downarrow\uparrow\rangle\right).
$$

Its density matrix is

$$
\hat{\rho}
=
|EPR\rangle \langle EPR|
=
\frac{1}{2}
\begin{bmatrix}
0 & 0 & 0 & 0 \\
0 & 1 & 1 & 0 \\
0 & 1 & 1 & 0 \\
0 & 0 & 0 & 0
\end{bmatrix}.
$$

The reduced density matrix of subsystem 1 is

$$
\hat{\rho}_1
=
\begin{bmatrix}
\frac{1}{2} & 0 \\
0 & \frac{1}{2}
\end{bmatrix}.
$$

So:

1. $\hat{\rho}_1$ is mixed even though $\hat{\rho}$ is pure.
2. $\langle X_1\rangle = \langle Y_1\rangle = \langle Z_1\rangle = 0$, even though the two spins are perfectly correlated in a joint measurement basis.

This is the essential structure of entanglement: each subsystem can look locally random even when the full system is in a definite pure state.
```

### Entropy

The entropy of a quantum state is the von Neumann entropy

$$
S[\hat{\rho}] = -\operatorname{Tr}(\hat{\rho}\ln \hat{\rho}).
$$

If $\hat{\rho}$ is diagonal,

$$
\hat{\rho} = \sum_\alpha p_\alpha |\alpha\rangle \langle \alpha|,
$$

then

$$
S[\hat{\rho}] = -\sum_\alpha p_\alpha \ln p_\alpha,
$$

which is exactly the classical Gibbs-Shannon entropy.

A state is **pure** if

$$
S[\hat{\rho}] = 0
\qquad \Longleftrightarrow \qquad
\hat{\rho} = |\psi\rangle\langle\psi|.
$$

If $S[\hat{\rho}] > 0$, the state is **mixed**.

#### Entanglement

Now consider a bipartite pure state $|\psi\rangle \in \mathcal{H}_1 \otimes \mathcal{H}_2$. The total density matrix

$$
\hat{\rho} = |\psi\rangle\langle\psi|
$$

has zero entropy, but the reduced density matrix

$$
\hat{\rho}_1 = \operatorname{Tr}_2(\hat{\rho})
$$

may be mixed.

The entropy

$$
S[\hat{\rho}_1]
$$

is called the **entanglement entropy**. It measures the amount of entanglement between the two subsystems.

In the EPR example,

$$
\hat{\rho}_1 = \operatorname{diag}\left(\frac{1}{2},\frac{1}{2}\right),
$$

so

$$
S[\hat{\rho}_1] = \ln 2.
$$

```{note}
For more on this topic, see [Matthew Fisher's colloquium](https://www.youtube.com/watch?v=2YCOlbMk4FA) on phase transitions in entanglement entropy.
```

#### Measures of quantum information

Many concepts from classical information theory extend naturally to quantum systems.

For a bipartite density matrix $\hat{\rho}_{AB}$ with reduced density matrices

$$
\hat{\rho}_A = \operatorname{Tr}_B(\hat{\rho}_{AB}),
\qquad
\hat{\rho}_B = \operatorname{Tr}_A(\hat{\rho}_{AB}),
$$

the **mutual information** is

$$
I(A:B) = S[\hat{\rho}_A] + S[\hat{\rho}_B] - S[\hat{\rho}_{AB}] \ge 0.
$$

It vanishes if and only if the state factorizes:

$$
I(A:B) = 0
\qquad \Longleftrightarrow \qquad
\hat{\rho}_{AB} = \hat{\rho}_A \otimes \hat{\rho}_B.
$$

Another central result is **strong subadditivity**, which can be written as

$$
I(A:BC) \ge I(A:B).
$$

Equivalently,

$$
\begin{aligned}
I(A:BC) - I(A:B)
&=
S_A + S_{BC} - S_{ABC} - S_A - S_B + S_{AB} \\
&=
S_{AB} + S_{BC} - S_{ABC} - S_B \ge 0.
\end{aligned}
$$

This inequality, known as the **strong subadditivity of quantum entropy**, is a fundamental result in quantum information theory, though its proof is non-trivial. For more details, see the [Wikipedia article on strong subadditivity of quantum entropy](https://en.wikipedia.org/wiki/Strong_subadditivity_of_quantum_entropy).
