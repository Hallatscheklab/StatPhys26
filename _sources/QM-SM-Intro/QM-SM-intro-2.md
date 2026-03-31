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
