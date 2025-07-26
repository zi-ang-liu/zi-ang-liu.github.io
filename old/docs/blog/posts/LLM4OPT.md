---
date:
  created: 2025-07-01
  updated: 2025-07-01
---


# Large language models for optimization: A survey

<!-- more -->

## Modeling

### ORLM: A Customizable Framework in Training Large Models for Automated Optimization Modeling

⭐️⭐️⭐️⭐️⭐️

- [paper](https://pubsonline.informs.org/doi/10.1287/opre.2024.1233)
- [source code](https://github.com/Cardinal-Operations/ORLM)

This paper focusing on training open-source LLMs for optimization modeling and developing solver codes. They develop the OR-INSTRUCT, a semiautomated data synthesis framework. The also introduce the IndustryOR benchmark, which is a benchmark for testing LLMs on solving optimization problems.

## LLMs as Operators



## LLMs and EA

### When Large Language Model Meets Optimization

- [paper](https://arxiv.org/abs/2405.10098)
- Survey paper, LLMs, Evolutionary algorithms

This paper surveys the combination of LLMs and optimization algorithms, mainly focusing on evolutionary algorithms. The authors categorize the research into the following two main directions:

1. LLMs assist optimization algorithms
   - LLMS as the Black-box Optimization Search Model
     - Guided Search Operators
     - Heuristic Search Operators
     - Multi-objective Optimization
   - LLMs as the Generator of Optimization Algorithms
     - Option Generation with the Cognitive of LLMs
     - Algorithm Generation with Chain-of-Thought
2. Optimization algorithms optimize LLMs
   - Optimization model tuning
     - Multi-task learning optimization
     - Based on structural pruning
   - Self-tuning optimization
   - prompt optimization
     - Continuous prompt optimization
     - Discrete prompt optimization
     - Black-box optimization prompt tuning
   - Optimization network architecture search

Finally, they introduce the applications of LLMs-based optimization in various fields.

### Evolutionary Computation in the Era of Large Language Model: Survey and Roadmap

- [paper](https://ieeexplore.ieee.org/document/10767756)
- Survey paper, LLMs, Evolutionary algorithms

This paper provides a survey of the combination of EAs and LLMs, focusing on the following three main aspects:

- LLM-enhanced EA
  - LLMs as search operators
  - Algorithm generation
  - Others
- EA-enhanced LLM
  - Prompt engineering
  - LLM architecture search
  - Others
- Applications
  - Code generation
  - Software engineering
  - Neural architecture search
  - Other generative tasks

### ORLM: A Customizable Framework in Training Large Models for Automated Optimization Modeling

- iPrompt: Explaining Data Patterns in Natural Language via Interpretable Autoprompting
  - [paper]((https://arxiv.org/abs/2210.01848))
  - [source code](https://github.com/csinva/iprompt)

- MultiPL-E: A Scalable and Polyglot Approach to Benchmarking Neural Code Generation
  - [paper](https://ieeexplore.ieee.org/abstract/document/10103177)
  - [source code](https://github.com/nuprl/MultiPL-E)
  - [BigCode Code Generation LM Harness](https://github.com/bigcode-project/bigcode-evaluation-harness)

