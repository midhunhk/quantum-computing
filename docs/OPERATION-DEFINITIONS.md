# Operation Definition

## Hadamard Gate 
1. Operation Definition:
- The operation H takes a single qubit (qubit : Qubit) as input and returns Unit, indicating that it doesn't return any value.

2. Adjoint and Controlled:
- The operation is defined with the attributes Adj + Ctl, indicating that it has an adjoint operation and can be controlled by other qubits.

3. Operation Body:
- Inside the body of the operation, the built-in function __quantum__qis__h__body is called to apply the Hadamard gate to the input qubit. This function performs the actual operation of applying the Hadamard gate to the qubit.

4. Controlled Operation:
- The operation is defined as controlled by one or more control qubits (ctls).
- Depending on the number of control qubits (Length(ctls)), different controlled versions of the Hadamard gate are applied:
  - If there are no control qubits (Length(ctls) == 0), the Hadamard gate is applied directly to the target qubit (qubit).
  - If there is one control qubit (Length(ctls) == 1), a Controlled-Hadamard (CH) gate is applied to the target qubit with the control qubit as the control.
  - If there are two control qubits (Length(ctls) == 2), a Controlled-Controlled-Hadamard (CCH) gate is applied to the target qubit with the two control qubits.
  - If there are more than two control qubits, auxiliary qubits (aux) are allocated and used to construct a multi-controlled version of the Hadamard gate.

5. Adjoint Operation:
- The adjoint self; statement specifies that the operation has an adjoint operation defined. The adjoint operation performs the reverse operation of the original operation, allowing for reversible computation.

In summary, an operation H that applies the Hadamard gate to a qubit, with support for controlled operations and an adjoint operation. The operation includes logic to handle different numbers of control qubits, enabling controlled versions of the Hadamard gate with varying degrees of control.

### Hadamard Gate Functionality:

This operation serves as the body for implementing the Hadamard gate (H gate) functionality. The actual implementation of the Hadamard gate's quantum operation is provided by the Q# runtime or quantum hardware, and it is abstracted away from the user in the form of this intrinsic operation.

### Controlled Hadamard Gate
A controlled Hadamard gate, often denoted as CH gate, is a quantum gate that combines the properties of the Hadamard gate (H gate) with control functionality. It applies the Hadamard gate to a target qubit only if a specified control qubit or qubits are in a specific state.

In classical computing terms, the CH gate is analogous to performing a Hadamard gate operation on a target bit only when a control bit is set to a particular value (usually |1⟩).

Mathematically, the action of the CH gate can be represented as follows:
`CH(control, target) = |0⟩⟨0| ⊗ I + |1⟩⟨1| ⊗ H`

Here:
- `control` is the control qubit.
- `target` is the target qubit.
- `I` is the identity matrix.
- `H` is the Hadamard matrix.

The CH gate behaves as follows:

- If the control qubit is in the state |0⟩, it applies the identity operation (no change) to the target qubit.
- If the control qubit is in the state |1⟩, it applies the Hadamard gate to the target qubit.

In simple terms, the CH gate flips the target qubit's state if and only if the control qubit is |1⟩. If the control qubit is |0⟩, the target qubit remains unchanged.

Controlled gates like CH gates are essential building blocks in quantum circuits and algorithms, allowing for conditional operations based on the state of one or more control qubits. They play a crucial role in implementing various quantum algorithms, including quantum error correction, quantum teleportation, and quantum computation.

### Controlled-controlled Hadamard gate
A controlled-controlled Hadamard gate, often denoted as CCH gate, is a multi-qubit quantum gate that combines the properties of the Hadamard gate (H gate) with control functionality applied to two or more control qubits. It applies the Hadamard gate to a target qubit only if all specified control qubits are in a specific state.

In classical computing terms, the CCH gate is analogous to performing a Hadamard gate operation on a target bit only when multiple control bits are set to particular values (usually |1⟩).

Mathematically, the action of the CCH gate can be represented as follows:
`CCH(control1, control2, target) = |00⟩⟨00| ⊗ I + |01⟩⟨01| ⊗ I + |10⟩⟨10| ⊗ I + |11⟩⟨11| ⊗ H
`
Here:

- `control1` and `control2` are the two control qubits.
- `target` is the target qubit.
- `I` is the identity matrix.
- `H` is the Hadamard matrix.

The CCH gate behaves as follows:

- If both control qubits are in the state |00⟩, it applies the identity operation (no change) to the target qubit.
- If control qubit 1 is |0⟩ and control qubit 2 is |1⟩, it applies the identity operation to the target qubit.
- If control qubit 1 is |1⟩ and control qubit 2 is |0⟩, it applies the identity operation to the target qubit.
- If both control qubits are |1⟩, it applies the Hadamard gate to the target qubit.

In simple terms, the CCH gate flips the target qubit's state if and only if both control qubits are |1⟩. If either or both control qubits are |0⟩, the target qubit remains unchanged.

Controlled gates like CCH gates are fundamental components in quantum circuits and algorithms, allowing for conditional operations based on the state of multiple control qubits. They are crucial for implementing various quantum algorithms and protocols, particularly those requiring multi-qubit entanglement and conditional logic.