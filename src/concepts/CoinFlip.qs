///
/// Basic CoinFLip demonstrating Superposition
/// 
namespace Quantum.Sample {
    open Microsoft.Quantum.Diagnostics;

    @EntryPoint()
    operation CoinFlip(): String {

        let flip = {
            use q = Qubit();

            // Apply the Hadamard Gate that puts the Qubit in Superposition state
            H(q);

            // Qubit has a 1/√2 normalization in each basis state which ensures that the 
            // `length` of the vector is one which means square of the amplitudes equals to 1
            DumpMachine();

            // Basis | Amplitude      | Probability | Phase
            // -----------------------------------------------
            //   |0⟩ |  0.7071+0.0000𝑖 |    50.0000% |   0.0000
            //   |1⟩ |  0.7071+0.0000𝑖 |    50.0000% |   0.0000

            // Perform a measurement of a single qubit in the Pauli _Z_ basis.
            let result = M(q);
            Reset(q);

            DumpMachine();
            // Basis | Amplitude      | Probability | Phase
            // -----------------------------------------------
            //   |0⟩ |  1.0000+0.0000𝑖 |   100.0000% |   0.0000

            if result == One {
                "Heads"            
            } else {
                "Tails"
            }
        };

        return flip;
    }
}