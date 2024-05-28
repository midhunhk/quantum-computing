namespace Quantum.Concepts {

    open Microsoft.Quantum.Convert;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Diagnostics;

    @EntryPoint()
    operation Main(): Unit {
        PrepareSuperposition()
    }

    operation PrepareSuperposition() : Unit {
        use qubits = Qubit[3];

        // Check the basis state of the qubits
        // In this case, |000⟩ means all three qubits are in the |0⟩ state.
        DumpMachine();

        // Apply Hadamard gate to each qubit to create superposition
        ApplyToEach(H, qubits);

        // View the superposition state after applying the H gate
        // The output will show that each of the 8 possible states (|000⟩ to |111⟩) has an equal probability of 12.5%.
        DumpMachine();

        // Measure the qubits
        Measure([PauliZ, PauliZ, PauliZ], qubits);

        for index in 0..2 {
            let result = M(qubits[index]);
            // Output the measurement results
            Message($"Results[{index}] = {result}");
        }

        // Reset qubits to |0⟩ state before releasing them
        ResetAll(qubits);  
    }

}