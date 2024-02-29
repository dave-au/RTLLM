# Red-teaming LLMs for Penetration Testers

## Introduction

*"LLM red-teaming? That sounds like regular red-teaming. We'll get the pentesters to do it"*

I started this repo to collate information about LLM red-teaming that would be useful or relevant to a penetration tester who found themselves on an LLM red-teaming engagement.
While there may be some similarities in the approach or philosphy between traditional red-teaming and LLM red-teaming (both are adversarial), I think there are some fairly substantial differences also. Penetration testing and traditional red-teaming can be very technical, whereas there's a much higher degree of art / magic / non-determinism involved in LLM red-teaming.


I'm assuming that the audience are proficient penetration testers, have some grounding in technology, and have a basic understanding of at least the fundamentals of generative AI. A glossary is provided in the repo to provide some definition around gen AI and LLM concepts beyond the bare fundamentals.

## Structure of the repo

I've tried to group and structure the information here in such a way to find what you need quickly, and to make the content easy to update. At present the structure is as follows:
- Introduction: This document. Background, structure, caveats and meta-info 
- Threat Modelling: A high level threat model for a hypothetical LLM application
- Test Cases: Based on the outcomes of threat modelling, what you probably want to be testing for
- Glossary: Terms and concepts explained
- Tool Index: Tools that may be useful for LLM red-teaming
- References: Links to related info
- /images/: Diagrams and pictures referenced in the other content
- Misc: Everything else. Notes, scratchings and ideas for future content.

## Defining the scope

As you'd expect, there is quite a bit of variability in the definitions for LLM red-teaming. Some are quite broad and all-encompassing, others are quite narrow. Some are fuzzy motherhood statements, others are quite proscriptive.
In the interest of pragmatism, I am choosing to put some limits or caveats on what is in-scope for this repo. If you, the penetration tester, have control over the scope of your engagement maybe you can tweak your scope to match.

1. Focus on what can be tested at inference time

Some LLM red-team methodologies include testing for attacks that may occur during training or fine-tuning stages. I am going to discount these and assume that you are testing an LLM-based application that is already built, trained and tuned.

2. Focus on adversarial / red-team techniques and tactics, rather than defensive or operational controls

It isn't my intention for this to be a guide to *auditing* LLM applications. Similarly, I'm not envisaging an LLM purple-team engagement, where the tester is working alongside ML/AI Ops folks. The aim is to provide guidance on testing that can be performed largely or wholly in isolation.

3. Focus on vulnerabilities that are specific to LLMs

You already know about penetration testing - I'm not going to include test cases for "Insecure Output Handling" or "Supply Chain Vulnerabilities". You should probably still test for these cases, but you don't need to read it here.

4. Focus on cyber security impacts

Model drift and model accuracy are often considerations for LLM-based applications, but they are not really security considerations. In the same way that you might exclude load testing from a web app pentest, I am going to focus on bugs or vulnerabilities where there is a more direct 'harm' element to the impact.

5. Assume a black-box (or at best grey-box) approach

At a bare minimum, I am assuming that the tester will have prompt / query access to the application. The tester *might* have 'resource control', enabling testing for indirect prompt injection (see Test Cases). The attacker may know a little about the model and its parameters / configuration, but they probably don't have access to training or fine-tuning data, or system prompting information.

Red-teaming is going to involve submitting a lot of prompts to the LLM application. Unless you are a very patient person you are going to want to automate this. This will be easiest if the application accepts user prompts through an API call, but you won't have control over this situation. Worst case you may need to simulate the portion of the web front-end that does the prompt submission.

6. Focus on things that can practically be tested

Finally, the scope is limited largely to attacks that could practically be performed within a time-boxed engagement. There are some amazing and interesting ways that people have devised to attack LLMs, but some of them take *ages*, or require vast amounts of compute. (e.g. Model theft through inference) We're going to focus on what's achievable for an individual or small team.

## Collaboration

This is a large and quickly-growing field; there's no way that I can keep this repo current and useful on my own. I 100% invite collaboration, input, comments and feedback.