# Q# Programming Language
Q# is an open-source, high-level, programming language for developing and running quantum algorithms. It’s designed to be hardware agnostic, scale to the full range of quantum applications, and to optimize execution.

It is a domain-specific programming language designed specifically for quantum computing. It is used for writing quantum algorithms and simulations to be executed on quantum computers or simulators.

It includes built-in support for quantum computing concepts such as qubits, quantum operations, quantum measurement, quantum gates (e.g., Hadamard, CNOT), and quantum algorithms (e.g., Grover's algorithm, Shor's algorithm).

Q# programs are typically executed on quantum simulators or actual quantum computers provided by quantum cloud platforms such as Microsoft Quantum Development Kit, IBM Quantum Experience, or Google Cirq.

Learning Q# requires understanding quantum computing principles and concepts, which may have a steeper learning curve for programmers who are not familiar with quantum mechanics.

As a programming language, Q# draws familiar elements from Python, C#, and F#, and supports a basic procedural model for writing programs with loops, if/then statements, and common data types. It also introduces new quantum-specific data structures and operations, such as repeat-until-success, which allow the integration of quantum and classical computations.

[Documentation](https://learn.microsoft.com/en-us/azure/quantum/overview-what-is-qsharp-and-qdk)
[Azure Quantum Development Kit](https://github.com/microsoft/qsharp)

## Data Types in Q#
### Primitive Data Types:
- Bool: Represents a Boolean value (either true or false).
- Int: Represents an integer value.
- BigInt: Represents a large integer value.
- Double: Represents a double-precision floating-point number.
- String: Represents a sequence of characters.
- Pauli: Represents a Pauli operator (PauliX, PauliY, PauliZ, or PauliI).
- Qubit: Represents a qubit, the basic unit of quantum information.

### User-Defined Types:
- Arrays: Q# supports arrays of primitive types, allowing you to store and manipulate collections of data.
- Tuples: Tuples allow you to group together multiple values of different types into a single data structure.
- User-Defined Types: You can define custom data types using Q# structures, which allow you to encapsulate related data fields into a single type.

### Specialized Types:
- Range: Represents a range of integer values.
- Map: Represents a key-value mapping, similar to dictionaries in other programming languages.
- Result: Represents the result of a quantum operation (Zero, One, Plus, or Minus).
- Unit: Represents the unit type, used as a placeholder where no meaningful data is required.

### Q# Library Types:
Q# provides various library types for representing quantum operations, quantum states, and quantum algorithms. These include types such as Quantum, Adjoint, Controlled, and more.

### Q# Interop Types:
Q# allows interoperability with classical .NET languages like C#, so you can also work with .NET data types such as arrays, lists, and dictionaries within Q# programs.

## Body Intrinsic Callables
Callables that are defined as body intrinsic are generated into external declarations in QIR with exact callable name and signature matches. The containing namespace is not included in the generated name. This simplifies QIR code generation and makes correlating Q# declaration to the resulting QIR program easier. Body intrinsic callables should avoid using generics and aggregate types if possible to keep the corresponding LLVM signatures simple and increase the likelihood of hardware compatibility.

One notable exception to this is the Microsoft.Quantum.Core.Length function, which is both body intrinsic and generic across the array type. As a result, it needs special handling during monomorphization and code generation to correlate it to the right pattern for extracting length from the array structure. Open question: should this be transitioned to an operator or some other form that avoid such a prominent counterexample?

## QIR Quantum Gate Instructions
The library includes a set of one- and two-qubit gates represented as __quantum__qis__*__body or __quantum__qis__*__adj QIR declarations. The expectation is that these gates form a common QIR API surface that Q# is compiled into. Any target would either need to support these quantum gate instructions natively or provide a QIR definition of that gate instruction in terms of supported native gates. These definitions can then be linked with the QIR program via LLVM tools and resolve to the target specific gate set. This approach provides broader compatibility at the QIR level and avoids the need for front end language targetting; as a result, this Q# library design is not expected to require any target packages or operation substitution.

To avoid using any opaque array types in the quantum gate instruction set, the library utilizes decomposition strategies to express the Q# controlled specialization (which allows an arbitrary number of controls) in terms of singly- and doubly-controlled gates. While this makes simulation somewhat more expensive in terms of allocating extra controls and performing more operations, it more closely matches the patterns used by hardware and provides better API surface for QIR programs to have hardware compatibility.

[Type System](https://learn.microsoft.com/en-us/azure/quantum/user-guide/language/typesystem/?view=qsharp-preview#primitive-types)