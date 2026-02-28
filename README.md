- [SimpleStorage](SimpleStorage.sol)
- [Simple_Storage](Simple_Storage.sol)

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

## SimpleStorage

This Solidity smart contract, SimpleStorage, demonstrates basic storage and retrieval functionality on the blockchain. Here's a brief explanation:

State Variable:

uint256 public favNumber = 6: Declares a public state variable favNumber with an initial value of 6. Public variables automatically generate a getter function.
Store Function:

function store(uint256 _favNumber) public: A function that updates the favNumber state variable with the value passed as an argument.
Retrieve Function:

function retrieve() public view returns (uint256): A view function that returns the current value of favNumber without modifying the state.
The contract uses comments to explain the purpose of each component and highlights the use of view functions, which are crucial for gas efficiency when reading data from the blockchain.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------

## Simple_Storage

This Solidity smart contract, Simple_Storage, demonstrates basic storage and struct usage:

State Variables:

myFavNumber: A single uint256 value
listOfPeople: An array of Person structs
Struct:

Person: Contains a favorite number (uint256) and name (string)
Functions:

store(): Updates myFavNumber
retrieve(): Returns the current myFavNumber
addPerson(): Adds a new Person to the listOfPeople array
The contract shows basic state management and struct usage in Solidity.

-------------------------------------------------------------------------------------------------------------------------------------------------------------------
