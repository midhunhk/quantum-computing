namespace Quantum.Concepts{

    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;

    @EntryPoint()
    operation HGate(): Result {
        // By Default the Qubit would be in |0>
        use q1 = Qubit();

        // First H operation turns it into superposition
        H(q1);
        DumpMachine();
        
        // Applying another H gate in succession results in the qubit returned to its original state
        // Effectively superpositon is created and removed
        H(q1);
        DumpMachine();

        // Measuring the state of the superposition will collapse it
        let result = M(q1);

        // Qubit needs to be reset befor it is deallocated
        Reset(q1);

        return result;
    }
}