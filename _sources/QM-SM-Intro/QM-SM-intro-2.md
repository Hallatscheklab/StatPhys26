## Gapless Quantum Matter: Phonons and the Debye Model, Goldstone's Theorem

#### Phonons and the Debye Model

Previously, we examined systems with a small number of degrees of freedom, where the quantum Hamiltonian exhibits an energy gap, such as $\Delta E = \hbar \omega$ or $\Delta E = \frac{\hbar^{2}}{I}$. This leads to specific heat behavior like $C_V \sim e^{-\Delta E / (k_B T)}$.

However, as $N \rightarrow \infty$, more intriguing behavior emerges if the Hamiltonian becomes gapless. To illustrate this, we now explore the vibrations in a crystal as an example of a gapless system.

Consider a crystal consisting of a regular lattice of atoms, where the equilibrium positions are described by:

$$
\begin{aligned}
\vec{q}_{l, m, n}^{*} = l \vec{R}_{1} + m \vec{R}_{2} + n \vec{R}_{3}, \\
l, m, n \in \mathbb{Z}.
\end{aligned}
$$

Here, $\vec{R}_{i}$ are the "Bravais vectors." For a simple cubic lattice, these vectors are given by:

$$
\vec{R}_{1}=a \hat{x}, \quad \vec{R}_{2}=a \hat{y}, \quad \vec{R}_{3}=a \hat{z}.
$$

Other lattice structures, such as hexagonal or orthorhombic, are also possible, leading to 14 distinct Bravais lattices in 3D. Additionally, there may be multiple atoms within a unit cell. However, for simplicity, we will focus on the simple cubic case.
The equilibrium positions of the atoms, $\vec{q}^{*}_{l, m, n}$, are maintained by various chemical or electrical forces. However, due to thermal and quantum effects, the atoms can deviate from these positions:

$$
\vec{q}_{l, m, n} = \vec{q}_{l, m, n}^{*} + \vec{u}_{l, m, n},
$$

where $\vec{u}_{l, m, n}$ represents the displacement of the atom at $(l, m, n)$ from its equilibrium position.

To simplify notation, it is convenient to label the atom at $(l, m, n)$ by its equilibrium position $\vec{r} \equiv \vec{q}_{l, m, n}^{*}$. This leads to:

$$
\vec{q}_{\vec{r}} = \vec{r} + \vec{u}_{\vec{r}}.
$$

The potential energy of the system can be expressed as:

$$
V(\{\vec q_{\vec r}\})=V^*+\frac 12 \sum_{\vec r, \vec r', \alpha, \beta} \frac{\partial^2 V}{\partial q_{\alpha,r} \partial q_{\beta, r'}}u_{\alpha, r}u_{\beta, r'},
$$

where $\alpha, \beta$ are the vector indices ($\{x, y, z\}$) of the displacement vector. This expression assumes $|\vec{u}| \ll a$, which is valid when $T \rightarrow 0$ and the atomic mass $\rightarrow \infty$ (since $\Delta v \Delta u \geq \hbar / \text{mass}$). Outside this regime, the crystal would melt. Note that at equilibrium, $\left.\frac{\partial V}{\partial q}\right|_{q^{*}}=0$.

Using translation invariance, $V\left(\left\{\vec{q}_{\vec{r}}+\vec{c}\right\}\right)=V\left(\left\{\vec{q}_{\vec{r}}\right\}\right)$, we deduce:

$$
\frac{\partial^{2} V}{\partial q_{\alpha}(r) \partial q_{\beta}\left(r^{\prime}\right)} \equiv K_{\alpha \beta}\left(\vec{r}-\vec{r}^{\prime}\right).
$$

The total Hamiltonian of the system is then given by:

$$
\hat{H}=V^{*}+\sum_{\vec{r}} \frac{\vec{p}_{\vec{r}}^{2}}{2 m}+\frac{1}{2} \sum_{\vec{r}, \vec{r}^{\prime}} u_{\alpha, \vec{r}} K_{\alpha \beta}\left(\vec{r}-\vec{r}^{\prime}\right) u_{\beta, \vec{r}^{\prime}},
$$

where $\left[p_{\alpha, \vec{r}}, u_{\beta, \vec{r}^{\prime}}\right]=-i \delta_{\alpha \beta} \delta_{\vec{r} \vec{r}^{\prime}}$.

To simplify $\hat{H}$, we use the discrete Fourier transform:

$$
\begin{aligned}
& u_{\alpha}(\vec{k}) \equiv \frac{1}{\sqrt{N}} \int \sum_{\vec{r}} e^{-i \vec{k} \cdot \vec{r}} u_{\alpha, r} \\
& p_{\alpha}(\vec{k}) \equiv \frac{1}{\sqrt{N}} \sum_{\vec{r}} e^{-i \vec{k} \cdot \vec{r}} p_{\alpha, r} \\
& K_{\alpha \beta}(\vec{k}) \equiv \sum_{\vec{r}} e^{i \vec{k} \cdot \vec{r}} K_{\alpha, \beta}(\vec{r})
\end{aligned}
$$

For simplicity, assume $K_{\alpha \beta}(\vec{k}) = \delta_{\alpha \beta} \tilde{K}(\vec{k})$. The Hamiltonian then becomes:

$$
\hat{H} = V^* + \sum_{\vec{k}} \left[ \frac{\vec{p}(\vec{k}) \cdot \vec{p}(-\vec{k})}{2m} + \frac{1}{2} \tilde{K}(\vec{k}) \vec{u}(\vec{k}) \cdot \vec{u}(-\vec{k}) \right].
$$

#### Discrete Values of $\vec{k}$

#### 1. Periodicity in $k$-Space

Recall that $\vec{r} = a(l \hat{x} + m \hat{y} + n \hat{z})$. This implies:

$$
e^{i \vec{k} \cdot \vec{r}} = e^{i \left( \vec{k} + \frac{2\pi}{a} \hat{e}_i \right) \cdot \vec{r}}, \quad \hat{e}_i = \hat{x}, \hat{y}, \hat{z}.
$$

Thus, $u_{\alpha}(\vec{k}) = u_{\alpha}\left(\vec{k} + \frac{2\pi}{a} \hat{e}_i\right)$, meaning $\vec{k}$ is periodic in $k$-space. This periodicity defines the "Brillouin Zone" (BZ), a toroidal region in $k$-space.

#### 2. Periodic Boundary Conditions in Real Space

Assuming periodic boundary conditions in real space, $\vec{r} \sim \vec{r} + L \cdot \hat{e}_i$, we find that $\vec{k}$ must satisfy:

$$
\begin{aligned}
e^{i \vec{k} \cdot \vec{r}} &= e^{i \vec{k} \cdot (\vec{r} + L \cdot \hat{e}_i)} \\
\Rightarrow \vec{k} &\in \frac{2\pi}{L} \cdot (i, j, k), \quad i, j, k \in \mathbb{Z}, \\
-\frac{L}{2} &\leq i, j, k \leq \frac{L}{2}.
\end{aligned}
$$

This establishes a one-to-one correspondence between the $(L/a)^3$ points in real space and the $(L/a)^3$ discrete $\vec{k}$ points in $k$-space.

#### 3. Original variables are real-valued

Since $\vec{p}_{\vec{r}}$ and $\vec{u}_{\vec{r}}$ are real-valued, we have:

$$
\vec{u}_{\alpha, \vec{k}} = \vec{u}_{\alpha, -\vec{k}}^*, \quad \vec{p}_{\alpha, \vec{k}} = \vec{p}_{\alpha, -\vec{k}}^*.
$$

The Hamiltonian can then be rewritten as:

$$
\hat{H} = V^* + \sum_{\vec{k}} \left[ \frac{|\vec{p}(\vec{k})|^2}{2m} + \frac{1}{2} \tilde{K}(\vec{k}) |\vec{u}(\vec{k})|^2 \right].
$$

#### Interpretation in $k$-Space

In $k$-space, the system decomposes into $3N = 3(L/a)^3$ independent harmonic oscillators, each with frequency:

$$
\omega(\vec{k}) = \sqrt{\frac{\tilde{K}(\vec{k})}{m}}.
$$

These oscillations correspond to waves in the atomic positions, which are the sound waves of the crystal. The group velocity of these waves is given by:

$$
\vec{v}_{\vec{k}} = \frac{\partial \omega(\vec{k})}{\partial \vec{k}},
$$

and depends on the dispersion relation $\omega(\vec{k})$.


#### QM description

Quantum mechanically, we define $3N$ raising and lowering operators, $\hat{a}_{\alpha, \vec{k}}^{+}$ and $\hat{a}_{\alpha, \vec{k}}$, with the number operator $\hat{n}_{\alpha, \vec{k}} = \hat{a}_{\alpha, \vec{k}}^{+} \hat{a}_{\alpha, \vec{k}}$. These operators satisfy the commutation relations:

$$
\left[\hat{a}_{\alpha, \vec{k}}, \hat{a}_{\beta, \vec{k}'}^{+}\right] = \delta_{\alpha \beta} \delta_{\vec{k}, \vec{k}'}, \quad \left[\hat{a}_{\alpha, \vec{k}}, \hat{a}_{\beta, \vec{k}'}\right] = \left[\hat{a}_{\alpha, \vec{k}}^{+}, \hat{a}_{\beta, \vec{k}'}^{+}\right] = 0.
$$

Using the ansatz:

$$
\begin{aligned}
& \hat{u}_{\alpha, \vec{k}} = \sqrt{\frac{\hbar}{2m\omega(\vec{k})}} \left(\hat{a}_{\alpha, \vec{k}}^{+} + \hat{a}_{\alpha, -\vec{k}}\right), \\
& \hat{p}_{\alpha, \vec{k}} = i \sqrt{\frac{\hbar m \omega(\vec{k})}{2}} \left(\hat{a}_{\alpha, \vec{k}}^{+} - \hat{a}_{\alpha, -\vec{k}}\right),
\end{aligned}
$$

we can verify that the canonical commutation relation holds:

$$
\left[\hat{u}_{\alpha, \vec{k}}, \hat{p}_{\beta, -\vec{k}'}\right] = i\hbar \delta_{\alpha \beta} \delta_{\vec{k}, \vec{k}'}.
$$

we find the Hamiltonian becomes:

$$
\hat{H} = V^{*} + \sum_{\vec{k}, \alpha} \hbar \omega(\vec{k}) \left(\hat{n}_{\alpha, \vec{k}} + \frac{1}{2}\right).
$$

These quantized sound wave excitations are called "phonons," analogous to photons in quantum electrodynamics (QED). Phonons are bosonic quasiparticles, even though the underlying atoms may be fermions. This exemplifies a recurring theme in condensed matter and quantum many-body physics: the emergence of low-energy quasiparticle excitations distinct from the system's constituent particles, often referred to as "collective modes."

The Hilbert space is spanned by specifying the occupation numbers of the $3N$ modes, $n_{\alpha, \vec{k}} = 0, 1, 2, \ldots$, with basis states:

$$
\left|\{n_{\alpha, \vec{k}}\}\right\rangle = \left|0, 3, 1, 2, \ldots\right\rangle.
$$

The quantum mechanical partition function is given by:

$$
\begin{aligned}
Z &= \sum_{\{n_{\alpha, \vec{k}}\}} e^{-\beta \hat{H}} = e^{-\beta E_{0}} \sum_{\{n_{\alpha, \vec{k}}\}} e^{-\beta \sum_{\vec{k}, \alpha} \hbar \omega(\vec{k}) n_{\alpha, \vec{k}}} \\
&= e^{-\beta E_{0}} \prod_{\vec{k}, \alpha} \left(\sum_{n_{\alpha, \vec{k}}=0}^{\infty} e^{-\beta \hbar \omega(\vec{k}) n_{\alpha, \vec{k}}}\right) \\
&= e^{-\beta E_{0}} \prod_{\vec{k}, \alpha} \left(\frac{1}{1 - e^{-\beta \hbar \omega(\vec{k})}}\right).
\end{aligned}
$$

The free energy is then:

$$
F = -\frac{1}{\beta} \ln(Z) = E_{0} + \frac{1}{\beta} \sum_{\vec{k}, \alpha} \ln\left(1 - e^{-\beta \hbar \omega(\vec{k})}\right).
$$

Key physical observables include the average energy:

$$
\langle E \rangle = E_{0} + \sum_{\alpha, \vec{k}} \langle n_{\alpha, \vec{k}} \rangle \hbar \omega(\vec{k}),
$$

and the heat capacity:

$$
C = \frac{\partial \langle E \rangle}{\partial T}.
$$
For a single quantum mechanical degree of freedom, we previously found that the heat capacity scales as $C \sim e^{-\Delta E / (k_B T)}$. However, as we will now demonstrate, this behavior does not hold for phonons.

To begin, we calculate the average occupation number of a phonon mode:

$$
\begin{aligned}
\left\langle n_{\alpha, \vec{k}} \right\rangle &= \frac{\sum_{n=0}^{\infty} n e^{-\beta \hbar \omega(\vec{k}) n}}{\sum_{n=0}^{\infty} e^{-\beta \hbar \omega(\vec{k}) n}} = \frac{1}{e^{\beta \hbar \omega(\vec{k})} - 1}.
\end{aligned}
$$

This expression describes the average number of phonons in a given mode, and is called Bose-Einstein statistics.

The total energy of the system is then given by:

$$
\begin{aligned}
\langle E \rangle &= E_0 + \sum_{\alpha, \vec{k}} \left\langle n_{\alpha, \vec{k}} \right\rangle \hbar \omega(\vec{k}),
\end{aligned}
$$

where $E_0$ is the zero-point energy. The heat capacity can be derived by differentiating the energy with respect to temperature:

$$
\begin{aligned}
C &= \frac{\partial \langle E \rangle}{\partial T} = k_B \sum_{\alpha, \vec{k}} \frac{1}{\left(e^{\beta \hbar \omega(\vec{k})} - 1\right)^2} \left(\frac{\hbar \omega(\vec{k})}{k_B T}\right)^2.
\end{aligned}
$$

To proceed further, we need to determine the specific form of the phonon dispersion relation $\omega(\vec{k})$.
### Debye Model

The exact form of $\omega(k)$ depends on the detailed chemistry of the system, which determines $V(\{\vec{q}_{\vec{r}}\})$ and, consequently, $K_{\alpha \beta}(\vec{r})$. However, translation invariance ensures that $V(\{\vec{q}_{\vec{r}} + \vec{c}\}) = V(\{\vec{q}_{\vec{r}}\})$, implying that a rigid shift of the lattice, $\vec{u}_{\vec{r}} = \vec{c}$, results in no change in energy ($\Delta E = 0$). This corresponds to the $\vec{u}(\vec{k} = 0)$ mode, leading to:

$$
\tilde{K}_{\alpha \beta}(\vec{k} = 0) = 0.
$$

If $K_{\alpha \beta}(\vec{r})$ is local, meaning it decays exponentially as $\vec{r} \to \infty$, its Fourier transform is analytic and can be expanded as:

$$
\tilde{K}(\vec{k}) = 0 + \tilde{\kappa}_{\alpha} k_{\alpha} + \frac{1}{2} \tilde{\kappa}_{\alpha \beta} k_{\alpha} k_{\beta} + \frac{1}{3!} \tilde{\kappa}_{\alpha \beta \gamma} k_{\alpha} k_{\beta} k_{\gamma} + \cdots
$$

With inversion symmetry, $K(\vec{r}) = K(-\vec{r})$, the odd-$k$ terms vanish, leaving:

$$
\tilde{K}(\vec{k}) = \frac{1}{2} \tilde{\kappa}_{\alpha \beta} k_{\alpha} k_{\beta} + O(k^4).
$$

For an isotropic system, where $x \sim y \sim z$, this simplifies to:

$$
\tilde{K}(\vec{k}) = B |\vec{k}|^2 + O(k^4),
$$

resulting in the dispersion relation:

$$
\omega(\vec{k}) = \sqrt{\frac{B |\vec{k}|^2}{m}} = v |\vec{k}| + O(k^3),
$$

where $v = \sqrt{B / m}$ is the speed of sound. This approximation breaks down as $k \to \pi / a$.

Under this approximation, the total energy is:

$$
\langle E \rangle = E_0 + \sum_{\alpha, \vec{k}} \frac{\hbar v |\vec{k}|}{e^{\beta \hbar v |\vec{k}|} - 1}.
$$

In the limit $L \to \infty$, where $\vec{k} = \frac{2\pi}{L}(i, j, k)$, the sum over $\vec{k}$ becomes an integral:

$$
\sum_{\vec{k}} \to \left(\frac{L}{2\pi}\right)^3 \int_{BZ} d^3k.
$$

Thus:

$$
\langle E \rangle \approx E_0 + 3 V \int_{BZ} \frac{d^3k}{(2\pi)^3} \frac{\hbar v |\vec{k}|}{e^{\beta \hbar v |\vec{k}|} - 1}.
$$

For $T \ll T_D$, where $T_D = \frac{\hbar v \pi}{k_B a}$, the boundary of the Brillouin Zone, with energy $E \sim \hbar v \frac{\pi}{a} \gg T$, does not contribute significantly. Extending the integration domain to infinity, we find:

$$
\langle E \rangle = E_0 + 3 V \int_0^\infty dk \frac{4\pi k^2}{(2\pi)^3} \frac{\hbar v k}{e^{\beta \hbar v k} - 1}.
$$

Evaluating this integral yields:

$$
\langle E \rangle = E_0 + \frac{\pi^2}{10} V \frac{(k_B T)^4}{(\hbar v)^3}.
$$

The heat capacity per unit volume is then:

$$
\frac{C}{V} = k_B \frac{2\pi^2}{5} \left(\frac{k_B T}{\hbar v}\right)^3.
$$

The key result is that $E \sim T^4$ and $C_V \sim T^3$, contrasting with the exponential behavior $E, C \sim e^{-\Delta E / T}$. This difference arises because phonons are gapless: $\hbar \omega(k) \sim v |\vec{k}|$ permits excitations with arbitrarily low energy. In high-energy physics terms, phonons are "massless," with dispersion $E(k) = v |\vec{k}|$, unlike systems with a mass gap where $E(p) = \sqrt{m_0^2 v^4 + p^2 v^2}$.

#### Note
This highlights a profound principle: low-temperature behavior depends only on a few "relevant" parameters (e.g., $v$) and not on the detailed microscopic structure.

Relation to spontaneous symmetry breaking: "Goldstone modes."

For $T < T_c$, the Ising model spontaneously breaks time-reversal symmetry, where $E(\{\sigma\}) = E(\{-\sigma\})$.

Similarly, the phonon model exhibits a symmetry: $E\left(\left\{q_{\vec{r}}\right\}\right) = E\left(\left\{\vec{q}_{\vec{r}} + \vec{c}\right\}\right)$.

This means that any realized equilibrium position $\left\langle \vec{q}_{\vec{r}} \right\rangle = \vec{r}$ spontaneously breaks translation symmetry.

Note that $\left\langle \vec{q}_{\vec{r}} \right\rangle = \vec{r} + \left\langle \vec{u}_{\vec{r}} \right\rangle$, and:

$$
\begin{aligned}
\left\langle \vec{u}_{\vec{r}} \right\rangle &= \sum_{\vec{k}} \frac{e^{i \vec{k} \cdot \vec{r}}}{\sqrt{N}} \sqrt{\frac{1}{2 m \omega_{\vec{k}}}} \left\langle \hat{a}_{\vec{k}}^{+} + \hat{a}_{-\vec{k}} \right\rangle \\
&= 0.
\end{aligned}
$$

(Caveat: In $D = 2$, this is more subtle due to the "Mermin-Wagner theorem," which states that continuous symmetry cannot be spontaneously broken. This is covered in Physics 212.)

The existence of translation symmetry ensures $\hbar \omega(k = 0) = 0$, leading to $\omega(k) \sim v \cdot k$, which implies gaplessness.

This is a specific case of a broader result: Goldstone's Theorem.

"A system with a spontaneously broken continuous global symmetry has a gapless mode (the Goldstone boson)."

[There are subtleties depending on whether the symmetry is Lorentz-invariant or non-relativistic, and whether it is internal or spacetime-related.]

In this context, the phonon (sound wave) is the "Goldstone mode" associated with the spontaneous breaking of translation symmetry.

