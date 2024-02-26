# Concepts
## Qubits (Quantum Bits):
- Qubits are the fundamental unit of quantum information in quantum computing, analogous to classical bits. Unlike classical bits, which can only be in the states 0 or 1, qubits can exist in a superposition of both states simultaneously.
- Superposition allows qubits to represent and process multiple possibilities simultaneously, enabling quantum computers to perform certain calculations much more efficiently than classical computers.

## Superposition:
- Superposition is a fundamental principle of quantum mechanics that allows quantum systems, including qubits, to exist in multiple states at the same time. A qubit in superposition can represent a weighted combination of both the 0 and 1 states until it is measured.

## Entanglement:
- Entanglement is a phenomenon where the quantum states of two or more qubits become correlated in such a way that the state of one qubit instantaneously influences the state of the other(s), regardless of the distance between them. Entanglement is a key resource in many quantum algorithms and enables quantum computers to perform certain tasks exponentially faster than classical computers.
- Entanglement of two qubits occurs when the state of one qubit is dependent on the state of the other, even when they are physically separated. This dependency persists regardless of the distance between the qubits and is a hallmark feature of quantum mechanics.
- One common way to entangle qubits is through a process called controlled-NOT (CNOT) gate operation. In this operation, one qubit (the control qubit) controls the operation of another qubit (the target qubit). If the control qubit is in the state |1⟩, the target qubit's state is flipped. When the control qubit is in a superposition state (like in a Bell state), it entangles the target qubit with it.
- Another method is to start with a pair of qubits in a Bell state, such as the maximally entangled state (|00⟩ + |11⟩)/√2 or (|00⟩ - |11⟩)/√2. This state ensures that the measurement outcomes of one qubit are correlated with the measurement outcomes of the other qubit, thus demonstrating entanglement.

## Quantum Gates:
- Quantum gates are the building blocks of quantum circuits and operations that manipulate qubits. Just as classical logic gates (e.g., AND, OR, NOT) perform logical operations on classical bits, quantum gates perform unitary transformations on qubits.
- Common quantum gates include the Hadamard gate (creating superposition), Pauli-X, Y, and Z gates (basic quantum operations), and CNOT gate (entanglement).

## Quantum Algorithms:
- Quantum algorithms are algorithms designed to run on quantum computers and take advantage of the unique properties of quantum mechanics to solve specific problems more efficiently than classical algorithms.
- Examples of quantum algorithms include Shor's algorithm (for integer factorization), Grover's algorithm (for unstructured search), and quantum simulation algorithms.

## Quantum Measurement:
- Quantum measurement is the process of extracting classical information from a quantum system. When a qubit is measured, it collapses from a superposition of states into a definite classical state (0 or 1) with certain probabilities determined by the state's amplitudes.

## Quantum Error Correction:
- Quantum error correction is a set of techniques and algorithms used to protect quantum information from errors and decoherence, which are inherent in quantum systems due to noise and imperfections.
- Error correction is essential for building reliable and scalable quantum computers capable of performing complex computations.

## Quantum Complexity Theory:
- Quantum complexity theory studies the computational complexity of quantum algorithms and problems, including questions of efficiency, scalability, and the relationships between classical and quantum computational models.
- Key concepts in quantum complexity theory include quantum circuit complexity, quantum oracle models, and complexity classes such as BQP (bounded-error quantum polynomial time).

## Phase Change
- Qubits can exist as |0> and |1> at the same time
- They are described using complex numbers (like 2 + 3i)
- The phase change is a change to the no's used to describe the Qubit
- Gates cause a phase change which can change the qubit end state
