///
/// Generate a Random Number within a Range
///
namespace Quantum.Concepts {

    open Microsoft.Quantum.Math;
    open Microsoft.Quantum.Convert;

    @EntryPoint()
    operation Main():Unit {
        let max = 100;

        let randomNumber = GenerateRandomNumberInRange(max);

        Message($"Random Qubit Value: {randomNumber}");
    }

    operation GenerateRandomNumberInRange(max : Int) : Int {
        // Determine the number of bits needed to represent `max` and store it
        // in the `nBits` variable. Then generate `nBits` random bits which will
        // represent the generated random number.
        mutable bits = [];
        let nBits = BitSizeI(max);
        for idxBit in 1..nBits {
            set bits += [GenerateRandomBit()];
        }
        let sample = ResultArrayAsInt(bits);

        // Return random number if it is within the requested range.
        // Generate it again if it is outside the range.
        return sample > max ? GenerateRandomNumberInRange(max) | sample;
    }

    operation GenerateRandomBit() : Result {
        // Allocate a qubit.
        use q = Qubit();

        // Set the qubit into superposition of 0 and 1 using the Hadamard 
        H(q);

        // At this point the qubit `q` has 50% chance of being measured in the
        // |0〉 state and 50% chance of being measured in the |1〉 state.
        // Measure the qubit value using the `M` operation, and store the
        // measurement value in the `result` variable.
        let result = M(q);

        // Reset qubit to the |0〉 state.
        // Qubits must be in the |0〉 state by the time they are released.
        Reset(q);

        // Return the result of the measurement.
        return result;
    }

}