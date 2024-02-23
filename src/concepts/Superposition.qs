/// Superposition
///
/// # Description
/// This Q# program sets a qubit in a superposition of the computational basis
/// states |0〉 and |1〉 by applying a Hadamard transformation.
namespace Quantum.Concepts {

    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;

    @EntryPoint()
    operation Main(): Unit {
        mutable ones = 0;

        for index in 1..1000 {
            let result = Superposition();
            if(result == One) {
                set ones += 1;
            }
        }
        Message($" Ones: {ones}");
        Message($"Zeros: {1000 - ones}");
    }

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