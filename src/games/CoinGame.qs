namespace Quantum.Sample {
    open Microsoft.Quantum.Measurement;
    open Microsoft.Quantum.Diagnostics;
    open Microsoft.Quantum.Canon;
    open Microsoft.Quantum.Intrinsic;

    @EntryPoint()
    operation Main():String {
        //
        mutable winner = "";

        // Execute the quantum operation
        let result = QuantumCoinGame();

        // Inspect the result
        if(result == One) {
            set winner = "Player 1";
        } else {
            set winner = "Player 2";
        }

        return (winner);
    }

    operation QuantumCoinGame(): Result {
        // Create a qubit and initialize it to the |1⟩ state
        use q = Qubit();
        X(q);

        // Put the qubit in superposition
        H(q);

        // Player 1 randomly decides if the qubit needs to be flipped
        let player1Decision1 = GetRandom();
        if(player1Decision1 == One) {
            X(q);
        }

        // Player 2 randomly decides if the qubit needs to be flipped
        let player2Decision = GetRandom();
        if(player2Decision == One) {
            X(q);
        }

        // Player 1 randomly decides if the qubit needs to be flipped again

        // Apply quantum strategy
        use ancillaQubit = Qubit();
        H(ancillaQubit);

        // Create entanglement
        CNOT(q, ancillaQubit);

        // Implement quatum strategy
        X(q);
        X(ancillaQubit);

        let ancillaResult = M(ancillaQubit);
        Reset(ancillaQubit);


        // Measure the qubit to determine its final state
        let result = MResetZ(q);
        // Message($"{result}");

        // DumpMachine();

        return result;
    }

    operation GetRandom(): Result {
        use q = Qubit();

        H(q);

        return MResetZ(q);
    }

}