## When does quantum mechanics make a difference?

Following Kardar 6.1 and 6.2, we motivate quantum statistical mechanics by looking at examples where classical statistical mechanics gives the wrong answer, or even diverges. These examples will also help us see how the quantum results reduce to the classical ones in the appropriate high-temperature limit.

#### Fluctuations of a Hydrogen atom

Consider the classical Hamiltonian for a hydrogen atom:

$$
H = \frac{p_{1}^{2}}{2 m_{e}} + \frac{p_{2}^{2}}{2 m_{p}} + V\left(r_{1} - r_{2}\right)
$$

We would like to determine the partition function $Z(T)$, the free energy $F(T)$, the internal energy $E(T)$, and related thermodynamic quantities.

It is convenient to transform to center-of-mass and relative coordinates. Define the center-of-mass coordinate

$$
\vec{R} = \frac{1}{M}(m_e \vec{r}_1 + m_p \vec{r}_2)
$$

with conjugate momentum $\vec{P}$, and the relative coordinate

$$
\vec{r} = \vec{r}_1 - \vec{r}_2
$$

with conjugate momentum $\vec{p}$. The Hamiltonian then separates as

$$
H = \frac{P^2}{2M} + \frac{p^2}{2\mu} + V(\vec{r})\;,
$$

where $M = m_e + m_p$ is the total mass and $\mu = \frac{m_e m_p}{m_e + m_p}$ is the reduced mass.

Because the center-of-mass and relative motions decouple, the partition function factorizes as $Z = Z_{\mathrm{cm}} Z_{r}$. For the relative motion we obtain

$$
\begin{aligned}
Z_{r} & = \int \frac{d^{3}p \, d^{3}r}{h^{3}} \, e^{-\beta \left(\frac{p^{2}}{2\mu} + V(r)\right)} \\
& = \frac{1}{\lambda_\mu^{3}} \cdot 4\pi \int_{0}^{\infty} dr \, r^{2} \, e^{+\beta \frac{e^{2}}{4\pi\epsilon_{0}r}}
\end{aligned}
$$ (p-fct)

where the thermal de Broglie wavelength is defined as:

$$
\lambda_\mu \equiv \sqrt{\frac{h^2 \beta}{2\pi \mu}}.
$$

Here classical mechanics immediately runs into trouble: the integral in {eq}`p-fct` diverges because the Coulomb attraction makes

$$
e^{+\beta e^2/(4\pi\epsilon_0 r)} \to \infty
\qquad \text{as } r \to 0.
$$

Quantum mechanics addresses this problem through Heisenberg's uncertainty principle:

$$
\Delta p \Delta r \geq h
$$

This prevents the electron from collapsing arbitrarily close to the proton and leads instead to a discrete spectrum of bound states:

$$
\hat{H}\left|E_{\alpha}\right\rangle = E_{\alpha}\left|E_{\alpha}\right\rangle
$$

So, instead of the classical phase-space expression

$$
Z = \int \frac{d q \, d p}{h} e^{-\beta H(q, p)},
$$

we use the quantum partition function

$$
\boxed{Z = \sum_{\alpha} e^{-\beta E_{\alpha}}}
$$ (qm-partition-function)

This quantum expression removes the short-distance divergence of the classical Coulomb problem. For hydrogen, however, one must be slightly careful: the Coulomb potential also has infinitely many highly excited bound states that accumulate near the ionization threshold, so the naive sum over all states is not strictly finite in the idealized infinite-volume problem. In practice this is regularized by finite volume, screening, collisions, or ionization, and under ordinary laboratory conditions these very highly excited states are usually irrelevant.  

In the examples below, we will see explicitly how the quantum result crosses over to the classical one in the high-temperature limit $T \to \infty$. Later, we will derive {eq}`qm-partition-function` from the general formalism of quantum statistical mechanics.

The sum in {eq}`qm-partition-function` runs over all quantum states $\alpha$. These play the role of microstates in the quantum theory.

For hydrogen, the characteristic electronic excitation scale is set by the Rydberg,

$$
R_y \approx 13.6\,\mathrm{eV} \approx 1.6 \times 10^5\,\mathrm{K}\cdot k_B.
$$

This is an extremely high temperature scale, so under ordinary laboratory conditions thermal occupation of highly excited electronic states is usually negligible. For that reason, hydrogen is not the best example for understanding how thermal energy gradually activates additional internal degrees of freedom. To see that effect more clearly, it is better to move on to molecules, whose rotational and vibrational energy scales are much smaller and often lie in the experimentally accessible thermal range.



#### Dilute Polyatomic Gases

Now consider a dilute gas of tightly bound molecules. For each molecule, the internal Hamiltonian can be written as

$$
H=\sum_{i=1}^{n} \frac{p_{i}^{2}}{2 m}+V\left(q_{1}, \cdots, q_{n}\right),
$$

where $n$ is the number of atoms in a molecule. For simplicity, we write the Hamiltonian as though all particles had the same mass $m$. This is no real restriction, since for particles with masses $m_i$ we can rescale

$$
p_i \rightarrow p_i \sqrt{m/m_i},
\qquad
q_i \rightarrow q_i \sqrt{m_i/m},
$$

which makes the kinetic term take the same form while leaving the phase-space volume element $dq \cdot dp$ unchanged.

The single-molecule partition function is

$$
Z_1 = \int \prod_{i=1}^{n} \frac{d^3 q_i d^3 p_i}{h^3} , e^{-\beta\left(H_{\text{kin}} + V(\vec{q})\right)}.
$$

For $N$ such molecules, neglecting intermolecular interactions,

$$
Z(N) = \frac{Z_1^N}{N!}.
$$

There is no extra factor of $1/n!$ unless the atoms within a molecule are identical and being treated as indistinguishable.

The relevant scale here is the interatomic binding energy that holds the molecule together. At temperatures of order $T \sim 10^3\,\mathrm{K}$, the thermal energy is only

$$
k_B T \sim 0.1\,\mathrm{eV},
$$

which is still small enough that the molecule remains bound and fluctuates only weakly around a stable equilibrium configuration $q_i^*$. Writing

$$
u_i = q_i - q_i^*
$$

and expanding the potential to quadratic order gives

$$
V({q_i}) \approx V^* + \frac{1}{2} \sum_{i,j} \frac{\partial^2 V}{\partial q_i \partial q_j} u_i \cdot u_j,
$$

where $V^* = V({q_i^*})$, and the linear term vanishes because we expand about an equilibrium point. The Hessian is symmetric and positive semidefinite, so it can be diagonalized:

$$
\frac{\partial^2 V}{\partial q \partial q} = O^\top K O, \quad K = \text{diag}(K_s),
$$

with $O$ orthogonal. In the normal-mode coordinates

$$
\tilde{u} = O u, \quad \tilde{p} = O p,
$$

the partition function becomes

$$
Z = \int \prod_{i=1}^n \frac{d^3 \tilde{u}_i d^3 \tilde{p}_i}{h^3}  e^{-\beta\left(\frac{1}{2m} \tilde{p}^\top \tilde{p} + V^* + \frac{1}{2} \tilde{u}^\top K \tilde{u}\right)}.
$$

This separates into a product of Gaussian integrals. Using

$$
\lambda = \sqrt{\frac{h^2 \beta}{2\pi m}},
$$

and integrating over the momenta, we find

$$
Z = \frac{1}{\lambda^{3n}} \prod_{s=1}^{3n} \int d\tilde{u}_s e^{-\beta \frac{K_s}{2} \tilde{u}_s^2} = \prod_{s=1}^{3n} \sqrt{\frac{m}{K_s h^2 \beta^2}}.
$$

The internal energy is then

$$
E = -\partial_\beta \ln Z = 3n k_B T,
$$

which is just the classical equipartition result: each quadratic term contributes $\frac{1}{2}k_B T$.

If some $K_s=0$, then the corresponding mode has no restoring force. Such a mode contributes no $\beta$-dependence from the potential term, and therefore changes the energy counting. If $m$ is the number of nonzero modes, then

$$
E = \frac{3n + m}{2} k_B T.
$$

The number of zero modes is $r = 3n - m$. These are determined by symmetry and typically correspond to 3 translations together with 0 to 3 rotations, depending on the molecule.

Hence the heat capacity per molecule is

$$
C_v = \left.\frac{dE}{dT}\right|_V = \left(3n - \frac{r}{2}\right) k_B.
$$

Classically this predicts a temperature-independent specific heat.

Experimentally, this is not what happens. At low temperatures many degrees of freedom are frozen out by quantization, and $C_v$ increases only gradually as translational, rotational, and vibrational modes become thermally accessible.



![](https://cdn.mathpix.com/cropped/2024_03_19_23a706af92a350552302g-08.jpg?height=709&width=1045&top_left_y=207&top_left_x=578)

For $\mathrm{H}_2$, a diatomic molecule, we have $n=2$ and $r=5$: 3 translational zero modes and 2 rotational ones.

The classical prediction is therefore

$$
\frac{C_V}{k_B} = 6 - \frac{5}{2} = \frac{7}{2}  = \frac{\text{3 translational + 2 rotational + 1 vibrational}}{2}.
$$

But the measured behavior depends strongly on temperature:

- As $T \to 0$, $C_V \sim \frac{3}{2} k_B$, with only center-of-mass translation contributing.
- Around $T \sim 500\,\mathrm{K}$, $C_V \sim \frac{5}{2} k_B$, as rotational modes begin to contribute.
- At $T \gg 1000\,\mathrm{K}$, $C_V \sim \frac{7}{2} k_B$, once the vibrational mode also becomes thermally active.

The classical result is recovered only when the thermal energy is large compared with the relevant level spacings. At intermediate temperatures, some modes remain frozen out while others have already equilibrated.

#### Vibrational Modes

A diatomic molecule has

$$
3 \cdot 2 - 5 = 1
$$

vibrational mode with $K_s > 0$, corresponding to oscillations of the bond length.

Let $q = x - x_0$ denote the deviation of the bond length from equilibrium. The vibrational Hamiltonian is then

$$
H_{\text{vib}} = \frac{p^2}{2m} + \frac{K_s q^2}{2} = \frac{p^2}{2m} + \frac{m \omega^2}{2} q^2,
$$

where $\omega = \sqrt{K_s / m}$ is the classical vibrational frequency.

Classically, the partition function is

$$
Z = \frac{1}{\lambda} \sqrt{\frac{2\pi}{\beta K_s}} = \sqrt{\frac{m}{K_s \hbar^2 \beta^2}} = \frac{k_B T}{\hbar \omega} = \frac{1}{\beta \hbar \omega}.
$$

The corresponding internal energy is

$$
E = \langle H \rangle = -\partial_\beta \ln(Z) = k_B T,
$$

as expected for two quadratic degrees of freedom.

Quantum mechanically, the energy eigenvalues are

$$
\hat{H}|n\rangle = \hbar \omega \left(n + \frac{1}{2}\right)|n\rangle, \quad n = 0, 1, 2, \dots
$$

and the partition function is

$$
\begin{aligned}
Z & = \sum_{n=0}^{\infty} e^{-\beta \hbar \omega \left(n + \frac{1}{2}\right)} \\
& = \frac{e^{-\beta \hbar \omega / 2}}{1-e^{-\beta \hbar \omega}} \\
& = \frac{1}{2 \sinh (\beta \hbar \omega / 2)}.
\end{aligned}
$$

In the high-temperature limit, $\beta \to 0$, this reduces to the classical result:

$$
\lim _{T \rightarrow \infty} Z=\frac{1}{\beta\hbar\omega}=Z_{\text{classical}}.
$$

Notice that this matching requires the conventional factor $\int \frac{dq\,dp}{h}$ in the classical phase-space integral. Although this factor does not affect classical equations of motion, it is exactly what the semiclassical correspondence demands.

```{note} Quantum states and phase space volume

Semiclassically, each quantum state occupies a phase-space area of $2 \pi \hbar$. This follows from the Bohr-Sommerfeld quantization condition

$$
S = \int_{\partial S} p(q) \cdot dq = n h,
$$

where $n$ is an integer.

Using Stokes' theorem, the same quantity can be written as

$$
\int_{\partial S} p \, dq = \int_{S} dp \wedge dq,
$$

which is the phase-space area enclosed by the orbit. This idea underlies the Weyl formula and, more broadly, semiclassical trace formulas.
```

From

$$
\ln Z = -\ln \left[2 \sinh (\beta \hbar \omega / 2)\right],
$$

the internal energy is

$$
E = -\partial_\beta \ln Z = \frac{\hbar \omega}{2} \coth \left(\frac{\beta \hbar \omega}{2}\right) = \frac{\hbar \omega}{2} \frac{e^{\beta \hbar \omega} + 1}{e^{\beta \hbar \omega} - 1}.
$$

It is convenient to introduce the vibrational temperature

$$
\theta_\text{vib} = \frac{\hbar \omega}{k_B},
$$

and plot the reduced energy $E/\hbar\omega$ as a function of $T/\theta_\text{vib}$.

```{figure} Reduced_Energy_vs_Tvib.png
---
width: 600px
name: energy-vs-temperature
---
Plot of the reduced energy $\frac{E}{\hbar \omega}$ as a function of the reduced temperature $T / \theta_\text{vib}$. The energy approaches $\frac{1}{2}$ at low temperatures and increases linearly with $T / \theta_\text{vib}$ at high temperatures, reflecting the transition from quantum to classical behavior.
```

At low temperatures ($T / \theta_\text{vib} \ll 1$), the energy approaches the zero-point value $\hbar\omega/2$. At high temperatures ($T / \theta_\text{vib} \gg 1$), it approaches the classical result $k_B T$.


$$
C_V=\partial_T E
=k_{B}\left(\frac{\hbar \omega}{k_{B} T}\right)^{2}
\frac{e^{-\beta \hbar \omega}}{\left(1-e^{-\beta \hbar \omega}\right)^{2}}.
$$

```{note}
As $T \to 0$,

$$
\frac{C_V}{k_{B}} \sim \left(\frac{\hbar \omega}{k_{B} T}\right)^{2} e^{-\hbar \omega /(k_{B} T)},
$$

so the heat capacity is exponentially small. This is a general feature of any system with an energy gap $\Delta E = \hbar \omega$ above the ground state.
``` 

#### Rotations

![](https://cdn.mathpix.com/cropped/2024_03_19_23a706af92a350552302g-12.jpg?height=384&width=218&top_left_y=820&top_left_x=194)

The orientation of a diatomic molecule is specified by the angles $\theta$ and $\phi$, which parameterize a point on the sphere $S^2$. The Lagrangian is

$$
L = \frac{I}{2} \left(\dot{\theta}^2 + \sin^2 \theta \, \dot{\phi}^2\right),
$$

where $I$ is the moment of inertia. The conjugate momenta are given by:

$$
p_{\theta} = \frac{\partial L}{\partial \dot{\theta}} = I \dot{\theta}, \quad p_{\phi} = \frac{\partial L}{\partial \dot{\phi}} = I \sin^2 \theta \, \dot{\phi}.
$$

The Hamiltonian is therefore

$$
H = p \dot{q} - L = \frac{1}{2I} \left(p_{\theta}^2 + \frac{p_{\phi}^2}{\sin^2 \theta}\right) = \frac{\vec{L}^2}{2I},
$$

where $\vec{L}$ is the angular momentum. This is the same Hamiltonian as that of a particle constrained to move on the surface of a sphere.

Classically, the partition function is

$$
\begin{aligned}
Z & = \frac{1}{h^{2}} \int_{0}^{\pi} \int_{0}^{2 \pi} d\theta \, d\phi \int dp_{\theta} \, dp_{\phi} \, e^{-\frac{\beta}{2I} \left(p_{\theta}^{2} + \frac{p_{\phi}^{2}}{\sin^{2} \theta}\right)} \\
& = \frac{1}{h^{2}} \int_{0}^{\pi} \int_{0}^{2 \pi} d\theta \, d\phi \, \sqrt{\frac{2 \pi I}{\beta}} \sqrt{\frac{2 \pi I \sin^{2} \theta}{\beta}} \\
& = \frac{2 \pi I}{\beta h^{2}} \int_{0}^{\pi} d\theta \, \sin \theta \int_{0}^{2 \pi} d\phi \\
& = \frac{2 \pi I}{\beta} \cdot \frac{4 \pi}{h^{2}}.
\end{aligned}
$$

Thus

$$
\ln(Z) \propto -\ln(\beta),
$$

so the energy and heat capacity are

$$
E = k_B T, \quad C_V = k_B.
$$

This is the equipartition result for two quadratic degrees of freedom.

Quantum mechanically, the Hamiltonian is still

$$
H = \frac{\vec{L}^2}{2I},
$$

but now $\vec{L}$ is an operator, and its components do not commute:

$$
\left[L_i, L_j\right] \neq 0.
$$

The eigenfunctions are the spherical harmonics $\psi(\theta, \phi) = Y_{l,m}(\theta, \phi)$, with

$$
\vec{L}^2 Y_{l,m} = \hbar^2 l(l+1) Y_{l,m}, \quad -l \leq m \leq l.
$$

The rotational partition function is therefore

$$
\begin{aligned}
Z_1 & = \sum_{l=0}^\infty \sum_{|m| \leq l} e^{-\frac{\beta}{2I} \hbar^2 l(l+1)} \\
& = \sum_{l=0}^\infty (2l + 1) e^{-\frac{\beta}{2I} \hbar^2 l(l+1)}.
\end{aligned}
$$

In the high-temperature limit ($T \to \infty$, $\beta \to 0$), the sum over $l$ can be approximated by an integral:

$$
\lim_{T \to \infty} Z = \frac{T}{\theta_r}, \quad \theta_r = \frac{\hbar^2}{2I k_B},
$$

which recovers the classical result up to convention-dependent numerical factors in the definition of $\theta_r$.

At low temperatures, only the $l=0$ and $l=1$ states matter, so

$$
Z = 1 + 3 e^{-2\theta_r / T},
$$

and the rotational contribution to the specific heat becomes exponentially small. The energy is approximately

$$
E_{rot} = -\partial_\beta \ln(Z) \approx 6k_B \theta_r e^{-2\theta_r / T},
$$

while the heat capacity is

$$
C_{rot} = \partial_T E_{rot} \approx 3k_B \left(\frac{2\theta_r}{T}\right)^2 e^{-2\theta_r / T}.
$$

```{figure} Reduced_Rotational_Energy_vs_Trot.png
---
width: 600px
name: rotational-energy-vs-temperature
---
Plot of the reduced rotational energy $E_{rot} / k_B \theta_r$ as a function of the reduced temperature $T / \theta_r$. The energy approaches zero at low temperatures due to quantum effects and increases linearly with $T / \theta_r$ at high temperatures, reflecting the transition to classical behavior. 
```

```{note}
### Why is there no zero-point rotational energy?

In quantum mechanics, **zero-point energy** arises when a system is confined by a potential, such as in a harmonic oscillator. The uncertainty principle prevents the particle from being completely at rest, leading to a nonzero ground-state energy:

$$
E_0^{\text{vib}} = \frac{1}{2} \hbar \omega
$$

In contrast, for a **rigid rotor** (like a diatomic molecule), the system moves freely on a sphere without a confining potential. Its energy levels are:

$$
E_\ell = \frac{\hbar^2}{2I} \ell(\ell + 1), \quad \ell = 0, 1, 2, \dots
$$

The ground state ($\ell = 0$) has:

$$
E_0^{\text{rot}} = 0
$$

Since there's no restoring force and no potential minimum, **there's no quantum requirement for zero-point rotational motion**.
```
