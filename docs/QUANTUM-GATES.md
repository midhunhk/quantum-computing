# Basic Quantum Gates

## Hadamard Gate
In quantum computing, the Hadamard gate is a fundamental quantum gate that plays a crucial role in creating superposition states. The Hadamard gate is a single-qubit gate, meaning it operates on a single qubit.

The Hadamard gate transforms the basis states ∣0⟩ and ∣1⟩ into superposition states, resulting in a quantum state that is a linear combination of the basis states. In other words, the Hadamard gate creates a superposition of both the ∣0⟩ and ∣1⟩ states, which is a key feature used in many quantum algorithms, such as quantum teleportation, Grover's search algorithm, and quantum key distribution protocols.

## Pauli Gates
- Pauli-X Gate (X): Also known as the "bit-flip" gate, it flips the state of a qubit from ∣0⟩ to ∣1⟩ and vice versa. It performs a $\pi$ rotation around the X-axis of the Bloch spehere, equivalent to a classical NOT gate.
- Pauli-Y Gate (Y): Also known as the "bit and phase flip" gate, it performs a bit-flip operation and introduces a phase change. It performs a rotation around the Y-axis.
- Pauli-Z Gate (Z): Also known as the "phase-flip" gate, it flips the sign of the ∣1⟩ state, leaving the ∣0⟩ state unchanged. It performs a rotation around the Z-axis, introduces a different phase change.

## Phase Gates
- Phase Shift Gate (S): Introduces a 90∘ phase shift to the ∣1⟩ state, effectively rotating the qubit state around the Z-axis.
- Controlled Phase Shift Gate (S†): The conjugate of the S gate, it introduces a −90∘ phase shift to the ∣1⟩ state.

## Control Gates:
- Controlled-NOT Gate (CNOT): Also known as the controlled-X gate, it flips the target qubit if the control qubit is in the ∣1⟩ state. It is a two-quibit gate that flips the second qubit if the first is in state |1>. It is an entanglement generator.Classical equivalent is XOR gate.
- Controlled-Z Gate (CZ): Applies a phase flip to the target qubit if the control qubit is in the ∣1⟩ state.

## Other Gates:
- Toffoli Gate: Also known as the controlled-controlled-NOT gate, it flips the target qubit if both control qubits are in the ∣1⟩ state.
- SWAP Gate: Swaps the states of two qubits.