# Ent (Edit Node Tree)

**Ent** is a system designed to leverage tree-edit operations for analyzing, modifying, and improving code architecture. The project aims to create an **AI-driven issue/feature classifier** for GitHub repositories, using advanced tree-edit distance calculations, memoization, and AI-generated code suggestions.

### Ambitions

Our ultimate goal is to analyze the history of any Git repository, detect **churn** (repeated changes to specific areas), infer potential **architecture improvements**, and predict future **issues or features**.

This project aligns with the ideas discussed in the FASE 2010 paper on **OperV**, which explores operation-based version control. **Ent** extends those ideas by incorporating AI, allowing for intelligent decision-making around code changes and architecture predictions.

### Core Features:
- Fine-grained and coarse-grained **tree-edit operations** (insert, delete, update).
- AI-assisted **subtree hashing** and **edit sequence generation**.
- Detection of **churn points** in large repositories.
- Prediction of **future issues/features** based on historical patterns.

### Next Steps:
- Implement core tree-edit operations using **s-expressions**.
- Integrate AI to generate edit sequences for complex tree manipulations.
- Dockerize the system for easy deployment.

_Shoutout to the **OperV paper**, which inspired the core ideas of operation-based version control for efficient and scalable tree edits._
