/// Entanglement
///
/// # Description
/// Qubits are said to be entangled when the state of each one of them cannot be
/// described independently from the state of the others.
///
/// This Q# program entangles two qubits.
namespace Quantum.Concepts {
    open Microsoft.Quantum.Diagnostics;

    @EntryPoint()
    operation EntangleQubits() : (Result, Result) {
        // Allocate the two qubits that will be entangled.
        use (q1, q2) = (Qubit(), Qubit());

        // Set the first qubit in superposition by calling the `H` operation, 
        // which applies a Hadamard transformation to the qubit.
        // Then, entangle the two qubits using the `CNOT` operation.
        H(q1);

        // Also known as the controlled-X gate, it flips the target qubit if the control 
        // qubit is in the ∣1⟩ state. It is a two-qubit gate that flips the second qubit 
        // if the first is in state |1>. It is an entanglement generator.
        CNOT(q1, q2);

        // Show the entangled state using the `DumpMachine` function.
        DumpMachine();

        // Measurements of entangled qubits are always correlated.
        let (m1, m2) = (M(q1), M(q2));
        Reset(q1);
        Reset(q2);
        return (m1, m2);
    }
}