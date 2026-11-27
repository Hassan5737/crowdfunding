# CrowdFunding

A decentralized crowdfunding platform built with Solidity and Foundry, enabling users to create fundraising campaigns, contribute funds, and manage withdrawals and refunds through smart contracts.

## Overview

CrowdFunding is a blockchain-based crowdfunding project designed to provide a transparent and decentralized way for people to raise funds for their ideas and initiatives.

The platform allows any user to create a campaign by providing a description, a funding goal, and a deadline. Other users can browse available campaigns and contribute funds to the ones they want to support.

Each campaign operates independently and follows a goal-based funding model:

- If a campaign reaches its funding goal and its deadline has passed, the campaign creator can claim the collected funds.
- If a campaign fails to reach its funding goal before the deadline, contributors can reclaim their contributions.
- Contributors can withdraw their contributions while the campaign is still active, allowing them to change their minds before the deadline.

The project focuses on implementing these rules directly in Solidity, with campaign state and fund management handled transparently on the blockchain.

## Core Concepts

### Crowdfunding Models

Crowdfunding generally takes several forms:

- **Reward-Based Crowdfunding:** Contributors receive rewards in exchange for supporting a campaign.
- **Equity-Based Crowdfunding:** Contributors receive an ownership stake in the funded project or company.
- **Debt-Based Crowdfunding:** Funds are provided as loans that must be repaid under agreed terms.

CrowdFunding follows a goal-based contribution and refund model. It does not currently implement equity distribution, debt agreements, or reward management.

### Campaign Lifecycle

Each campaign follows a defined lifecycle:

1. **Creation:** A user creates a campaign with a funding goal and duration.
2. **Contributions:** Other users contribute funds to support the campaign.
3. **Withdrawal of Contributions:** Contributors can withdraw their contributions while the campaign is active.
4. **Campaign Completion:** The campaign becomes eligible for its final outcome after its deadline.
5. **Successful Campaign:** If the funding goal is reached, the creator can claim the collected funds.
6. **Unsuccessful Campaign:** If the funding goal is not reached, contributors can reclaim their contributions.

## Planned Features

The project is being developed incrementally. Its planned functionality includes:

- Create fundraising campaigns with custom funding goals and durations.
- Track campaign creators, funding goals, collected amounts, and deadlines.
- Allow users to contribute to campaigns.
- Allow contributors to withdraw their contributions while campaigns are active.
- Enable creators to claim funds from successful campaigns after their deadlines.
- Allow contributors to claim refunds from unsuccessful campaigns.
- Enforce campaign lifecycle rules and access restrictions through smart contracts.
- Test contract behavior, access control, and fund management using Foundry.

## Smart Contract Architecture

The project is centered around the `CrowdFund` smart contract.

### Campaign Structure

Each campaign is represented by a `Campaign` struct containing:

| Field | Description |
|---|---|
| `creator` | Address of the campaign creator. |
| `goal` | Target funding amount. |
| `pledged` | Total amount contributed to the campaign. |
| `startAt` | Campaign start timestamp. |
| `endAt` | Campaign deadline. |
| `claimed` | Indicates whether the creator has claimed the funds. |

### State Variables

The contract uses the following state variables:

- `count`: Tracks the total number of campaigns created.
- `campaigns`: Maps campaign IDs to their corresponding campaign data.
- `pledgedAmount`: Tracks the amount contributed by each address to each campaign.

## Technology Stack

- **Solidity:** Smart contract development.
- **Foundry:** Smart contract development, testing, and deployment.
- **forge-std:** Foundry testing utilities.
- **Git & GitHub:** Version control and project documentation.

## Project Structure

```text
crowdfunding/
├── lib/
│   └── forge-std/
├── script/
├── src/
│   └── CrowdFund.sol
├── test/
│   └── CrowdFund.t.sol
├── .gitignore
├── .gitmodules
├── foundry.toml
├── LICENSE
└── README.md
```

## Getting Started

### Prerequisites

Make sure you have the following installed:

- [Git](https://git-scm.com/)
- [Foundry](https://getfoundry.sh/)

### Clone the Repository

Clone the repository together with its Git submodules:

```bash
git clone --recurse-submodules https://github.com/Hassan5737/crowdfunding.git
cd crowdfunding
```

If you have already cloned the repository without its submodules, initialize them with:

```bash
git submodule update --init --recursive
```

### Build

Compile the smart contracts:

```bash
forge build
```

### Run Tests

Execute the test suite:

```bash
forge test
```

## Development Status

<em>Currently in development.</em>

The initial project setup and core campaign data structure are being established. Smart contract functionality, testing, and deployment will be added as development progresses.

## Future Improvements

Potential future extensions may include:

- A frontend application for campaign creation and interaction.
- Campaign discovery and detailed contribution history.
- Additional security-focused testing and contract improvements.
- Deployment to an Ethereum testnet.

## License

This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.