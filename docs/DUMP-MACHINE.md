# Dump Machine
The DumpMachine() operation in Q# is used to display the state of the quantum machine, including the amplitudes, probabilities, and phases of the quantum states.

## Example Output
```lua
Basis | Amplitude      | Probability | Phase
 -----------------------------------------------
 |000⟩ |  1.0000+0.0000𝑖 |   100.0000% |   0.0000
```

- Basis State (|000⟩):
This represents the basis state of the qubits. In this case, |000⟩ means all three qubits are in the |0⟩ state.
If you had more qubits, you would see more basis states like |001⟩, |010⟩, etc.

- Amplitude (1.0000 + 0.0000𝑖):
The amplitude is a complex number representing the coefficient of the basis state in the quantum state's superposition.
In this case, 1.0000 + 0.0000𝑖 means the state |000⟩ has an amplitude of 1, which is purely real with no imaginary part.
The amplitude indicates the contribution of this basis state to the overall quantum state.

- Probability (100.0000%):
The probability is the square of the absolute value of the amplitude.
For 1.0000 + 0.0000𝑖, the probability is |1.0000|^2 = 1.0000, or 100%.
This means that if you measure the quantum state, you will always get |000⟩ in this case.

- Phase (0.0000):
The phase is the angle of the amplitude in the complex plane, typically given in radians.
A phase of 0.0000 means there is no phase shift.

- The quantum state is in a pure state |000⟩ with an amplitude of 1.0000 + 0.0000𝑖.
- The probability of measuring the state |000⟩ is 100%.
- There is no phase shift for this state.

```lua
Basis | Amplitude      | Probability | Phase
 -----------------------------------------------
 |000⟩ |  0.3536+0.0000𝑖 |    12.5000% |   0.0000
 |001⟩ |  0.3536+0.0000𝑖 |    12.5000% |   0.0000
 |010⟩ |  0.3536+0.0000𝑖 |    12.5000% |   0.0000
 |011⟩ |  0.3536+0.0000𝑖 |    12.5000% |   0.0000
 |100⟩ |  0.3536+0.0000𝑖 |    12.5000% |   0.0000
 |101⟩ |  0.3536+0.0000𝑖 |    12.5000% |   0.0000
 |110⟩ |  0.3536+0.0000𝑖 |    12.5000% |   0.0000
 |111⟩ |  0.3536+0.0000𝑖 |    12.5000% |   0.0000
```
- These are the possible states of the 3 qubits, ranging from |000⟩ to |111⟩.
- The amplitude for each basis state is `0.3536 + 0.0000i`
- This indicates that each basis state is equally probable.
- The probability for each basis state is 12.5000%.
- Since there are 8 possible states (2^3 = 8 for 3 qubits), each state has a probability of 1/8 or 12.5%.
- The phase for each state is 0.0000, indicating no phase difference between these states.
- This output shows that the three qubits are in a uniform superposition, meaning that if you were to measure the qubits, each of the 8 possible outcomes (from |000⟩ to |111⟩) is equally likely to occur, each with a probability of 12.5%.