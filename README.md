# Alexander Senko
**Lead Software Engineer | Ruby & Rails Systems Architect**

A specialized backend engineer with over 20 years of experience (since the early 2000s). I design and implement high-level abstractions, Rails engines, and architectural patterns that improve codebase maintainability and scalability.

[![LinkedIn](https://img.shields.io/badge/LinkedIn-Alexander_Senko-blue?style=flat&logo=linkedin)](https://www.linkedin.com/in/alexander-senko-a1b7332/)
[![Location](https://img.shields.io/badge/📍-Phuket,_Thailand-green?style=flat)](https://maps.app.goo.gl/MrEYm6uknt2R5tyh6)

---

### 💻 Core Technical Competencies

- **Languages:** Ruby (Expert), Crystal, Elixir, SQL, Python, etc.
- **Frameworks:** Ruby on Rails (internals, Engines, optimization).
- **Architectural focus:** metaprogramming, system decoupling, Decorator/Presenter patterns.
- **Database:** PostgreSQL (advanced schema design, Active Record optimization).
- **Problem-solving:** reducing technical debt through structural refactoring and custom framework-level tools.

---

### 🛠 Selected Open Source Work

I develop tools that extend the standard Ruby on Rails behavior to solve recurring architectural bottlenecks.

#### 🤖 [Action AI](https://github.com/Alexander-Senko/action_ai) (Early Access)
*The Action Mailer for LLM Interactions*

Action AI is a specialized framework designed to treat AI prompts as first-class citizens in the Rails ecosystem. It eliminates the antipattern of scattering raw LLM provider calls across controllers and background jobs by providing a dedicated, structured interaction layer.

- **Rails-idiomatic architecture:** built to mirror the Action Mailer pattern. Define AI logic in dedicated Agent classes with class-level actions and view-backed templates.
- **View-backed prompt engineering:** uses standard Action View templates for prompt generation. This allows for complex, multi-line prompt construction using familiar Rails helpers and partials, keeping logic out of your Ruby strings.
- **Lazy execution & chainable API:** calling an agent method returns a proxy object. Execution only occurs when explicitly requested, allowing for middle-ware style modifications before the request is dispatched.
- **Context-aware instance variables:** automatically bridges the gap between your Ruby logic and templates by exposing instance variables directly to the view context — exactly like a standard Rails controller does.
- **Dynamic provider configuration:** supports global and class-level defaults with `Proc` support (e.g., dynamically switching models based on `Current.user.plan`).
- **Provider-agnostic:** built on top of [RubyLLM](https://github.com/crmne/ruby_llm), providing a unified interface for OpenAI, Anthropic, and other major providers without changing your core application logic.

In many Rails apps, AI logic becomes “glue code” mixed with business logic. Action AI provides a **clean separation of concerns**, moving prompt engineering into a maintainable, testable, and centralized directory structure (`app/ai`).

#### 🪄 The “Magic” Suite

- **[Magic Presenter](https://github.com/Alexander-Senko/magic-presenter):** A presentation layer for Rails models designed to replace Draper. It focuses on clean separation of concerns between data and view logic.
- **[Magic Decorator](https://github.com/Alexander-Senko/magic-decorator):** An enhancement of `SimpleDelegator` featuring automatic delegation and decorator class inference.
- **[Magic Lookup](https://github.com/Alexander-Senko/magic-lookup):** A utility for dynamic class discovery (*decorators*, *presenters*, *controllers*) based on object context.

#### Other Rails Engines

- **[Adjustable Schema](https://github.com/Alexander-Senko/adjustable_schema):** A Rails Engine that allows Active Record associations to be defined and managed within the database rather than hard-coding them in models and DB structure, enabling runtime flexibility. Best suited for CMS-like applications with dynamic content relationships, ERPs, etc.
- **[Inherited Partials for Active Model](https://github.com/Alexander-Senko/active_model-inherited_partials):** A specialized Rails Engine facilitating partial inheritance for models, allowing for hierarchical and more OOP-style view overrides.

---

### 📊 Professional Statistics

*   **Experience:** 20+ years of professional software development.
*   **Focus:** backend architecture & Ruby ecosystem.
*   **Methodology:** I prioritize code clarity, strict adherence to DRY principles, and the development of reusable components. I do not value “quick fixes” that increase long-term technical debt.

---

### 🤝 Engagement & Opportunities

I am now open to senior or lead technical roles where architectural precision and deep Ruby knowledge are required. I am particularly effective in environments dealing with:
- Complex legacy Rails monoliths requiring modernization.
- The need for custom internal frameworks or gems.
- High-level system design and database optimization.

---
*Note: I value direct communication and technical accuracy. If your project requires solving non-trivial engineering problems, I am interested.*
