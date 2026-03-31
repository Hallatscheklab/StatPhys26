## Gapless Quantum Matter: Phonons, the Debye Model, and Goldstone's Theorem

#### Phonons and the Debye Model

So far, we have focused on systems with only a few quantum degrees of freedom. In those examples, the spectrum had a nonzero gap, for example

$$
\Delta E = \hbar \omega
\qquad \text{or} \qquad
\Delta E = \frac{\hbar^2}{I},
$$

and as a result the low-temperature specific heat was exponentially suppressed:

$$
C_V \sim e^{-\Delta E/(k_B T)}.
$$

In an extended many-body system, however, something qualitatively new can happen: the spectrum can become gapless. A crystal provides a central example. Its low-energy vibrational modes are phonons, and these will lead to the Debye law

$$
C_V \sim T^3.
$$

Consider a crystal whose atoms sit on a Bravais lattice with equilibrium positions

$$
\vec{q}_{l,m,n}^{\,*} = l \vec{R}_1 + m \vec{R}_2 + n \vec{R}_3,
\qquad
l,m,n \in \mathbb{Z}.
$$

For a simple cubic lattice,

$$
\vec{R}_1 = a \hat{x}, \qquad
\vec{R}_2 = a \hat{y}, \qquad
\vec{R}_3 = a \hat{z}.
$$

More generally, there are 14 Bravais lattices in three dimensions, and a unit cell may contain more than one atom. For now, though, we restrict attention to the simple cubic case.

The atoms are held near their equilibrium positions by electromagnetic and chemical forces, but they can fluctuate around those positions. We therefore write

$$
\vec{q}_{l,m,n} = \vec{q}_{l,m,n}^{\,*} + \vec{u}_{l,m,n},
$$

where $\vec{u}_{l,m,n}$ is the displacement from equilibrium.

It is convenient to label each atom by its equilibrium position

$$
\vec{r} \equiv \vec{q}_{l,m,n}^{\,*},
$$

so that

$$
\vec{q}_{\vec{r}} = \vec{r} + \vec{u}_{\vec{r}}.
$$

For small displacements, $|\vec{u}_{\vec{r}}| \ll a$, we may expand the potential energy to quadratic order:

$$
V(\{\vec{q}_{\vec{r}}\})
=
V^*
+
\frac{1}{2}
\sum_{\vec{r},\vec{r}',\alpha,\beta}
\frac{\partial^2 V}{\partial q_{\alpha,\vec{r}} \partial q_{\beta,\vec{r}'}}
u_{\alpha,\vec{r}} u_{\beta,\vec{r}'}.
$$

Here $\alpha,\beta \in \{x,y,z\}$ label Cartesian components, and the linear term vanishes because we expand about equilibrium:

$$
\left.\frac{\partial V}{\partial q}\right|_{q^*} = 0.
$$

This harmonic approximation is valid at sufficiently low temperature, where the displacements are small compared with the lattice spacing.

Because the crystal is translationally invariant,

$$
V\bigl(\{\vec{q}_{\vec{r}}+\vec{c}\}\bigr) = V\bigl(\{\vec{q}_{\vec{r}}\}\bigr),
$$

the Hessian depends only on coordinate differences:

$$
\frac{\partial^2 V}{\partial q_\alpha(\vec{r}) \partial q_\beta(\vec{r}')}
\equiv
K_{\alpha\beta}(\vec{r}-\vec{r}').
$$

The Hamiltonian is then

$$
\hat{H}
=
V^*
+
\sum_{\vec{r}} \frac{\vec{p}_{\vec{r}}^{\,2}}{2m}
+
\frac{1}{2}
\sum_{\vec{r},\vec{r}'}
u_{\alpha,\vec{r}} K_{\alpha\beta}(\vec{r}-\vec{r}') u_{\beta,\vec{r}'}.
$$

The canonical commutation relations are

$$
[\hat{u}_{\alpha,\vec{r}}, \hat{p}_{\beta,\vec{r}'}]
=
i \hbar \delta_{\alpha\beta} \delta_{\vec{r}\vec{r}'}.
$$

To diagonalize the Hamiltonian, we introduce the discrete Fourier transforms

$$
\begin{aligned}
u_{\alpha}(\vec{k})
&\equiv
\frac{1}{\sqrt{N}}
\sum_{\vec{r}} e^{-i\vec{k}\cdot\vec{r}} u_{\alpha,\vec{r}}, \\
p_{\alpha}(\vec{k})
&\equiv
\frac{1}{\sqrt{N}}
\sum_{\vec{r}} e^{-i\vec{k}\cdot\vec{r}} p_{\alpha,\vec{r}}, \\
K_{\alpha\beta}(\vec{k})
&\equiv
\sum_{\vec{r}} e^{i\vec{k}\cdot\vec{r}} K_{\alpha\beta}(\vec{r}).
\end{aligned}
$$

For simplicity, suppose

$$
K_{\alpha\beta}(\vec{k}) = \delta_{\alpha\beta}\,\tilde{K}(\vec{k}).
$$

Then the Hamiltonian becomes

$$
\hat{H}
=
V^*
+
\sum_{\vec{k}}
\left[
\frac{\vec{p}(\vec{k}) \cdot \vec{p}(-\vec{k})}{2m}
+
\frac{1}{2}\tilde{K}(\vec{k})\,\vec{u}(\vec{k}) \cdot \vec{u}(-\vec{k})
\right].
$$

#### Discrete Values of $\vec{k}$

There are three important facts about the allowed $\vec{k}$ values.

#### 1. Periodicity in $k$-space

Since

$$
\vec{r} = a(l\hat{x} + m\hat{y} + n\hat{z}),
$$

we have

$$
e^{i\vec{k}\cdot\vec{r}}
=
e^{i\left(\vec{k}+\frac{2\pi}{a}\hat{e}_i\right)\cdot\vec{r}},
\qquad
\hat{e}_i \in \{\hat{x},\hat{y},\hat{z}\}.
$$

Therefore,

$$
u_\alpha(\vec{k})
=
u_\alpha\left(\vec{k}+\frac{2\pi}{a}\hat{e}_i\right),
$$

so $\vec{k}$ is periodic in reciprocal space. This periodicity defines the Brillouin zone.

#### 2. Periodic boundary conditions in real space

If we impose periodic boundary conditions on a cube of side length $L$, so that

$$
\vec{r} \sim \vec{r} + L \hat{e}_i,
$$

then

$$
e^{i\vec{k}\cdot\vec{r}}
=
e^{i\vec{k}\cdot(\vec{r}+L\hat{e}_i)}
$$

requires

$$
\vec{k} = \frac{2\pi}{L}(n_x,n_y,n_z),
\qquad
n_x,n_y,n_z \in \mathbb{Z}.
$$

Restricting to one Brillouin zone gives exactly one allowed $\vec{k}$ point per unit cell, so there are $N=(L/a)^3$ distinct $\vec{k}$ values.

#### 3. Reality conditions

Because the original displacement and momentum fields are real,

$$
u_\alpha(\vec{k}) = u_\alpha(-\vec{k})^*,
\qquad
p_\alpha(\vec{k}) = p_\alpha(-\vec{k})^*.
$$

Using this, the Hamiltonian can be written as

$$
\hat{H}
=
V^*
+
\sum_{\vec{k}}
\left[
\frac{|\vec{p}(\vec{k})|^2}{2m}
+
\frac{1}{2}\tilde{K}(\vec{k}) |\vec{u}(\vec{k})|^2
\right].
$$

#### Interpretation in $k$-Space

In $k$-space, the crystal decomposes into $3N$ independent harmonic oscillators, one for each polarization and each allowed wavevector. Their frequencies are

$$
\omega(\vec{k}) = \sqrt{\frac{\tilde{K}(\vec{k})}{m}}.
$$

These normal modes are collective oscillations of the lattice, that is, sound waves in the crystal. Their group velocity is

$$
\vec{v}_{\vec{k}} = \frac{\partial \omega(\vec{k})}{\partial \vec{k}},
$$

which is determined by the dispersion relation $\omega(\vec{k})$.

#### Quantum Description

Quantum mechanically, each normal mode becomes a harmonic oscillator. We introduce creation and annihilation operators $\hat{a}^{\dagger}_{\alpha,\vec{k}}$ and $\hat{a}_{\alpha,\vec{k}}$, together with number operators

$$
\hat{n}_{\alpha,\vec{k}} = \hat{a}^{\dagger}_{\alpha,\vec{k}} \hat{a}_{\alpha,\vec{k}}.
$$

They satisfy

$$
\left[\hat{a}_{\alpha,\vec{k}}, \hat{a}^{\dagger}_{\beta,\vec{k}'}\right]
=
\delta_{\alpha\beta}\delta_{\vec{k},\vec{k}'},
\qquad
\left[\hat{a}_{\alpha,\vec{k}}, \hat{a}_{\beta,\vec{k}'}\right]
=
\left[\hat{a}^{\dagger}_{\alpha,\vec{k}}, \hat{a}^{\dagger}_{\beta,\vec{k}'}\right]
=
0.
$$

In terms of these operators,

$$
\begin{aligned}
\hat{u}_{\alpha,\vec{k}}
&=
\sqrt{\frac{\hbar}{2m\omega(\vec{k})}}
\left(\hat{a}^{\dagger}_{\alpha,\vec{k}} + \hat{a}_{\alpha,-\vec{k}}\right), \\
\hat{p}_{\alpha,\vec{k}}
&=
i\sqrt{\frac{\hbar m \omega(\vec{k})}{2}}
\left(\hat{a}^{\dagger}_{\alpha,\vec{k}} - \hat{a}_{\alpha,-\vec{k}}\right),
\end{aligned}
$$

and one can check that

$$
\left[\hat{u}_{\alpha,\vec{k}}, \hat{p}_{\beta,-\vec{k}'}\right]
=
i\hbar\,\delta_{\alpha\beta}\delta_{\vec{k},\vec{k}'}.
$$

The Hamiltonian becomes

$$
\hat{H}
=
V^*
+
\sum_{\vec{k},\alpha}
\hbar\omega(\vec{k})
\left(\hat{n}_{\alpha,\vec{k}}+\frac{1}{2}\right).
$$

The quanta of these vibrational modes are called phonons. They are bosonic quasiparticles, even if the underlying atoms are not bosons. This is one of the main lessons of many-body physics: the low-energy excitations of a system can look very different from its microscopic constituents.

The Hilbert space is spanned by occupation-number states

$$
\left|\{n_{\alpha,\vec{k}}\}\right\rangle,
\qquad
n_{\alpha,\vec{k}} = 0,1,2,\ldots
$$

for all $3N$ modes.

The partition function is therefore

$$
\begin{aligned}
Z
&=
\sum_{\{n_{\alpha,\vec{k}}\}} e^{-\beta \hat{H}} \\
&=
e^{-\beta E_0}
\sum_{\{n_{\alpha,\vec{k}}\}}
e^{-\beta \sum_{\vec{k},\alpha} \hbar\omega(\vec{k}) n_{\alpha,\vec{k}}} \\
&=
e^{-\beta E_0}
\prod_{\vec{k},\alpha}
\left(
\sum_{n_{\alpha,\vec{k}}=0}^{\infty}
e^{-\beta \hbar\omega(\vec{k}) n_{\alpha,\vec{k}}}
\right) \\
&=
e^{-\beta E_0}
\prod_{\vec{k},\alpha}
\frac{1}{1-e^{-\beta \hbar\omega(\vec{k})}},
\end{aligned}
$$

where

$$
E_0
=
V^*
+
\frac{1}{2}\sum_{\vec{k},\alpha}\hbar\omega(\vec{k})
$$

is the zero-point energy.

The free energy is

$$
F
=
-\frac{1}{\beta}\ln Z
=
E_0
+
\frac{1}{\beta}
\sum_{\vec{k},\alpha}
\ln\left(1-e^{-\beta\hbar\omega(\vec{k})}\right).
$$

The average energy is

$$
\langle E \rangle
=
E_0
+
\sum_{\alpha,\vec{k}}
\langle n_{\alpha,\vec{k}} \rangle\,\hbar\omega(\vec{k}),
$$

and the heat capacity is

$$
C = \frac{\partial \langle E \rangle}{\partial T}.
$$

For a single gapped quantum degree of freedom, we found earlier that $C \sim e^{-\Delta E/(k_B T)}$ at low temperature. Phonons behave differently because their spectrum is gapless.

The average occupation number of a phonon mode is

$$
\left\langle n_{\alpha,\vec{k}} \right\rangle
=
\frac{\sum_{n=0}^{\infty} n e^{-\beta \hbar \omega(\vec{k}) n}}
{\sum_{n=0}^{\infty} e^{-\beta \hbar \omega(\vec{k}) n}}
=
\frac{1}{e^{\beta \hbar \omega(\vec{k})}-1},
$$

which is the Bose-Einstein distribution.

Thus

$$
\langle E \rangle
=
E_0
+
\sum_{\alpha,\vec{k}}
\frac{\hbar\omega(\vec{k})}{e^{\beta\hbar\omega(\vec{k})}-1},
$$

and differentiating with respect to temperature gives

$$
C
=
k_B
\sum_{\alpha,\vec{k}}
\left(\frac{\hbar\omega(\vec{k})}{k_B T}\right)^2
\frac{e^{\beta\hbar\omega(\vec{k})}}
{\left(e^{\beta\hbar\omega(\vec{k})}-1\right)^2}.
$$

To proceed, we need the low-$k$ form of the dispersion relation.

### Debye Model

The exact dispersion $\omega(\vec{k})$ depends on microscopic details, that is, on the interaction potential and hence on $K_{\alpha\beta}(\vec{r})$. But translational invariance already tells us something crucial. A rigid displacement of the entire crystal,

$$
\vec{u}_{\vec{r}} = \vec{c},
$$

costs no energy, so the $\vec{k}=0$ mode must have zero frequency:

$$
\tilde{K}_{\alpha\beta}(0)=0.
$$

If the interaction is short-ranged, then $K_{\alpha\beta}(\vec{r})$ decays rapidly with distance, and its Fourier transform is analytic near $\vec{k}=0$. We may therefore expand

$$
\tilde{K}(\vec{k})
=
\tilde{\kappa}_{\alpha}k_\alpha
+
\frac{1}{2}\tilde{\kappa}_{\alpha\beta}k_\alpha k_\beta
+
\frac{1}{3!}\tilde{\kappa}_{\alpha\beta\gamma}k_\alpha k_\beta k_\gamma
+
\cdots
$$

with no constant term because $\tilde{K}(0)=0$.

If the crystal also has inversion symmetry, then

$$
K(\vec{r}) = K(-\vec{r}),
$$

so the odd powers of $\vec{k}$ vanish. Hence, for small $\vec{k}$,

$$
\tilde{K}(\vec{k})
=
\frac{1}{2}\tilde{\kappa}_{\alpha\beta}k_\alpha k_\beta + O(k^4).
$$

In an isotropic medium this reduces to

$$
\tilde{K}(\vec{k}) = B |\vec{k}|^2 + O(k^4),
$$

and therefore

$$
\omega(\vec{k})
=
\sqrt{\frac{B|\vec{k}|^2}{m}}
=
v |\vec{k}| + O(k^3),
$$

where

$$
v = \sqrt{\frac{B}{m}}
$$

is the speed of sound.

This linear dispersion is valid only at long wavelength, i.e. for $|\vec{k}| \ll \pi/a$, but that is exactly the regime relevant at low temperature.

Under this approximation,

$$
\langle E \rangle
=
E_0
+
\sum_{\alpha,\vec{k}}
\frac{\hbar v |\vec{k}|}{e^{\beta\hbar v |\vec{k}|}-1}.
$$

In the thermodynamic limit,

$$
\sum_{\vec{k}}
\to
\left(\frac{L}{2\pi}\right)^3 \int_{BZ} d^3k,
$$

so

$$
\langle E \rangle
\approx
E_0
+
3V
\int_{BZ}
\frac{d^3k}{(2\pi)^3}
\frac{\hbar v |\vec{k}|}{e^{\beta\hbar v |\vec{k}|}-1}.
$$

At temperatures much smaller than the Debye temperature,

$$
T_D \sim \frac{\hbar v \pi}{k_B a},
$$

the dominant contribution comes from small $|\vec{k}|$, so we may extend the integral to infinity:

$$
\langle E \rangle
=
E_0
+
3V
\int_0^\infty dk\,
\frac{4\pi k^2}{(2\pi)^3}
\frac{\hbar v k}{e^{\beta\hbar v k}-1}.
$$

Evaluating the integral gives

$$
\langle E \rangle
=
E_0
+
\frac{\pi^2}{10}
V
\frac{(k_B T)^4}{(\hbar v)^3}.
$$

Therefore,

$$
\frac{C}{V}
=
\frac{2\pi^2}{5}
k_B
\left(\frac{k_B T}{\hbar v}\right)^3.
$$

This is the Debye $T^3$ law:

$$
\langle E \rangle - E_0 \sim T^4,
\qquad
C_V \sim T^3.
$$

This is completely different from the activated behavior $e^{-\Delta E/(k_B T)}$ found in gapped systems. The reason is simple: phonons are gapless. Since

$$
\hbar\omega(\vec{k}) \sim \hbar v |\vec{k}|,
$$

there are always modes with arbitrarily small excitation energy.

The important lesson is that the low-temperature behavior depends only on a few coarse-grained parameters, such as the sound velocity $v$, and not on all the microscopic details of the lattice Hamiltonian.

#### Relation to Spontaneous Symmetry Breaking and Goldstone Modes

This connects directly to spontaneous symmetry breaking.

In the Ising model below $T_c$, the Hamiltonian is symmetric under spin flip,

$$
E(\{\sigma\}) = E(\{-\sigma\}),
$$

but an ordered phase chooses one of the two magnetized states, so the symmetry is spontaneously broken.

A crystal behaves similarly. The microscopic Hamiltonian is invariant under uniform translations,

$$
E\bigl(\{q_{\vec{r}}\}\bigr)
=
E\bigl(\{q_{\vec{r}}+\vec{c}\}\bigr),
$$

but once the crystal forms, it selects a particular set of equilibrium positions,

$$
\langle \vec{q}_{\vec{r}} \rangle = \vec{r},
$$

thereby spontaneously breaking continuous translation symmetry.

Since

$$
\langle \vec{q}_{\vec{r}} \rangle
=
\vec{r} + \langle \vec{u}_{\vec{r}} \rangle,
$$

one typically has

$$
\begin{aligned}
\langle \vec{u}_{\vec{r}} \rangle
&=
\sum_{\vec{k}}
\frac{e^{i\vec{k}\cdot\vec{r}}}{\sqrt{N}}
\sqrt{\frac{1}{2m\omega_{\vec{k}}}}
\left\langle \hat{a}^{\dagger}_{\vec{k}} + \hat{a}_{-\vec{k}} \right\rangle \\
&= 0,
\end{aligned}
$$

but the reference lattice itself still picks out a preferred origin and thus represents broken translational symmetry.

Because translation symmetry implies

$$
\omega(\vec{k}=0)=0,
$$

the broken-symmetry phase necessarily contains a gapless long-wavelength mode. In this case that mode is the phonon.

This is an example of Goldstone's theorem:

> A system with a spontaneously broken continuous global symmetry has a gapless mode.

There are important subtleties depending on whether the symmetry is internal or spacetime-related, and whether the theory is relativistic or nonrelativistic. But for our purposes, the main point is clear:

The phonon is the Goldstone mode associated with spontaneously broken translation symmetry.

```{note}
In two dimensions, the situation is more subtle. Continuous symmetries cannot be broken in the same way at finite temperature, as expressed by the Mermin-Wagner theorem. You will discuss this in more detail in Physics 212.
```

---

## Original Version

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
