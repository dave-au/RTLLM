# Glossary 

Training
: The process of teaching a large language model (LLM) by exposing it to a large amount of data, allowing it to learn patterns, associations, and representations. During training, the model’s parameters are adjusted to minimize prediction errors.

Fine-tuning
: A subsequent step after training, where an already pre-trained LLM is further adapted to a specific task or domain. Fine-tuning involves training the model on a smaller dataset related to the target use, enabling it to specialize and improve performance.

Inference
: The LLM’s ability to generate predictions or responses based on input data. During inference, the trained model applies its learned knowledge to new examples, such as completing sentences, answering questions, or generating text. (Think "runtime")

RAG (Retreival Augmented Generation)
: A hybrid approach that combines retrieval-based methods (where relevant information is retrieved from a database or existing text) with generative methods (where the model generates novel content). In this context, retrieval augmented generation enhances LLMs by incorporating external knowledge.

System prompt
: The initial input or instruction provided to an LLM before it generates any output. System prompts are hidden from the user and guide the model’s behavior. They are typically prepended to the user's prompt.

Model drift
: Refers to changes in an LLM’s behavior over time due to various factors, such as updates to training data, fine-tuning, or shifts in the environment. Model drift can impact performance, safety, and consistency of LLMs.

Context window
: The immediate workspace where the model holds recent conversation or text. The context window is crucial for understanding conversational context and generating coherent responses.