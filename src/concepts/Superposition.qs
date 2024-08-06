/// Superposition
///
/// # Description
/// This Q# program sets a qubit in a superposition of the computational basis
/// states |0〉 and |1〉 by applying a Hadamard transformation.
namespace Quantum.Concepts {

    import Microsoft.Quantum.Diagnostics.DumpMachine;
    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;

    @EntryPoint()
    operation Superposition() : Result {
        // Qubits are only accesible for the duration of the scope where they
        // are allocated and are automatically released at the end of the scope.
        use qubit = Qubit();
        
        // Set the qubit in superposition by applying a Hadamard transformation.
        H(qubit);

        // Measure the qubit. There is a 50% probability of measuring either `Zero` or `One`.
        let result = M(qubit);

        // Reset the qubit so it can be safely released.
        Reset(qubit);
        return result;
    }

}