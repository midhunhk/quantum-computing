/// Entanglement Example
///
/// Reference: https://learn.microsoft.com/en-us/azure/quantum/tutorial-qdk-explore-entanglement?pivots=ide-local
namespace Quantum.Concepts {

    open Microsoft.Quantum.Intrinsic;
    open Microsoft.Quantum.Canon;

    operation SetQubitState(desired : Result, target : Qubit) : Unit {
        if desired != M(target) {
            X(target);
        }
    }

    @EntryPoint()
    operation TestBellState() : (Int, Int, Int, Int) {
        mutable numOnesQ1 = 0;
        mutable numOnesQ2 = 0;
        let count = 1000;
        let initial = One;

        // allocate the qubits
        use (q1, q2) = (Qubit(), Qubit());   
        for test in 1..count {
            SetQubitState(initial, q1);
            SetQubitState(Zero, q2);
            
            // measure each qubit
            let resultQ1 = M(q1);            
            let resultQ2 = M(q2);           

            // Count the number of 'Ones' returned:
            if resultQ1 == One {
                set numOnesQ1 += 1;
            }
            if resultQ2 == One {
                set numOnesQ2 += 1;
            }
        }

        // reset the qubits
        SetQubitState(Zero, q1);             
        SetQubitState(Zero, q2);

        // Display the times that |0> is returned, and times that |1> is returned
        Message($"Q1 - Zeros: {count - numOnesQ1}");
        Message($"Q1 - Ones: {numOnesQ1}");
        Message($"Q2 - Zeros: {count - numOnesQ2}");
        Message($"Q2 - Ones: {numOnesQ2}");
        return (count - numOnesQ1, numOnesQ1, count - numOnesQ2, numOnesQ2 );

    }
}