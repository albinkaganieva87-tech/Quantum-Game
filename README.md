# Quantum-Game

This is a quantum game written in Q#.

# WORK

The game works like this:

* We create a qubit.
* The user writes their variant.
* The qubit goes through the Hadamard gate:

$$
\lvert 0\rangle \xrightarrow{H}
\frac{\lvert 0\rangle + \lvert 1\rangle}{\sqrt{2}}
$$

* The chance of measuring `0` or `1` is:

$$
P(0) = \frac{1}{2}, \qquad P(1) = \frac{1}{2}
$$

* That's all!
