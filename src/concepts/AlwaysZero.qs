namespace Quantum.Sample {
    open Microsoft.Quantum.Diagnostics;

    /// A quantum operation that takes a qubit in the |0⟩ state and applies the Hadamard gate (H) to put it into the |+⟩ state. 
    /// The is Adj + Ctl annotation indicates that this operation supports adjoint (reverse) and controlled versions.
    operation PreparePlus(q: Qubit):Unit
    is Adj + Ctl {
        H(q);
    }

    /// A quantum operation that takes a qubit in the |0⟩ state, applies the X (Pauli-X) gate to flip it to the |1⟩ state, and then applies the Hadamard gate (H) to put it into the |-⟩ state. 
    /// This operation also supports adjoint and controlled versions.
    operation PrepareMinus(q:Qubit):Unit
    is Adj + Ctl {
        X(q);
        H(q);
    }

    @EntryPoint()
    operation AlwaysZero(): Unit {
        // Allocates an array of one qubit (ctrls) and a single qubit (q).
        use (ctrls, q) =  (Qubit[1], Qubit());

        Message("Before");
        DumpMachine();

        PreparePlus(q);

        Message("After");
        DumpMachine();

        // Applies the controlled version of the PrepareMinus operation to qubit q with ctrls as the control qubits.
        Controlled PrepareMinus(ctrls, q);

        // Reverses the state changes by applying the adjoint controlled PrepareMinus and adjoint PreparePlus operations.
        Adjoint Controlled PrepareMinus(ctrls, q);
        Adjoint PreparePlus(q);
    }

}