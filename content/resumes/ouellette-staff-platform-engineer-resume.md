---
title: "Matthew Ouellette - Staff Platform Engineer"
date: 2025-02-19
category: resume
---

# Matthew Ouellette

[matt.ouellette@zoho.com](mailto:matt.ouellette@zoho.com) | [LinkedIn](https://www.linkedin.com/in/mouellette/) | [GitHub](https://github.com/mattyo161) | [Phone](mailto:matt.ouellette@zoho.com)

[Boston, MA](mailto:matt.ouellette@zoho.com)

## Staff Platform Engineer

Staff-level Platform / DevOps Engineer specializing in large-scale cloud infrastructure, platform modernization, and cost optimization. Proven track record of designing resilient systems, driving cross-team architectural decisions, and leading high-impact initiatives across Terraform, AWS, CI/CD, and observability platforms. Recognized for translating complex technical constraints into scalable, maintainable solutions delivering measurable performance, reliability, and financial outcomes.

### Core Competencies
- Cloud Architecture, Platform Engineering, Infrastructure/Configuration as Code
- Reliability, Observability, Cost Optimization & FinOps, Performance Optimization
- Cross-Team Technical Leadership, Standards & Best Practices, Large-Scale Data Systems
- Distributed Systems, CI/CD Modernization, AWS Ecosystem, Security Architecture (OAuth/Cognito)

### Key Impact Highlights
- Reduced platform operational costs by >$70k/month through logging and storage optimization initiatives
- Designed systems supporting billions of objects/petabytes of data
- Modernized CI/CD infrastructure supporting 10 orgs, 1,000+ repositories, and 500+ engineers
- Delivered long-lived security architecture adopted across 30+ services
- Migrated SaaS application from on-premises hardware to AWS Cloud, including 3.5 TB MySQL DB

## PROFESSIONAL EXPERIENCE

### Curriculum Associates – Billerica, MA *(2019 – Present)*
*Making Classrooms Better Places for Teachers and Students*

#### Platform Modernization & Infrastructure
- Led modernization of a legacy Jenkins CI/CD platform by implementing Infrastructure as Code (Terraform), JCasC configuration management, and centralized plugin controls, enabling reproducible 90-minute environment rebuilds and successfully migrating a 6 TB system supporting 1,000+ repositories with minimal disruption
- Participated in and drove a large-scale Terraform 0.11 → 0.13 upgrade initiative, standardizing Terraform versions via tfenv, redesigning CI/CD validation pipelines, and establishing best practices to prevent provider/plugin compatibility failures across teams
- Mentored junior engineers and conducted extensive PR reviews across modules and deployments, improving infrastructure consistency, reliability, and long-term maintainability

#### Cloud Cost Optimization & Large-Scale Data Systems
- Replaced a $30k/month ELK/GrayLog logging cluster with an S3 + Athena analytics pipeline, expanding log retention from 2 weeks to 8+ years while reducing storage costs by ~80% through Intelligent Tiering
- Designed a large-scale S3 inventory and analytics solution leveraging compressed JSON Lines and Athena queries to analyze billions of objects across thousands of buckets, identifying 2 PB of stale data and enabling purge of 500 TB, generating ~$44k/month in recurring cost savings
- Developed high-efficiency stream-processing tooling to perform large-scale object deletions, demonstrating deep understanding of AWS data plane behavior and operational scaling limits

#### Performance & Reliability Engineering
- Identified and mitigated token management inefficiencies contributing to elevated infrastructure load by redesigning the token refresh strategy, reducing unnecessary TTL updates and improving system stability
- Diagnosed recurring API/database performance issues and proposed application-layer caching strategies to eliminate excessive DocumentDB queries for static configuration data
- Partnered with operations and development teams to address connection limits, pooling inefficiencies, and query performance bottlenecks

#### Security & Architecture Leadership
- Designed and implemented a scalable service-to-service security architecture using OAuth and AWS Cognito, supporting multi-environment isolation and long-term service growth
- Led cross-functional collaboration across Development, SecOps, and Architecture teams to define boundaries for environment segregation, scope design, and client management strategies
- Resolved Cognito client-scaling constraints by designing a scope-based authorization model using single-client-per-service patterns, preventing long-term platform limitations
- Refactored Terraform architecture to support evolving security requirements, including externalized configuration logic via Lambda integrations
- Delivered a security platform now supporting 30+ services across environments, establishing a durable foundation for service growth

### TECHNICAL STACK
- **Cloud:** AWS (S3, Athena, CloudFront, Cognito, Lambda, CloudTrail, ALB/ELB/NLB)
- **IaC:** Terraform, JCasC, Proton
- **CI/CD:** Jenkins, Git-based workflows
- **Observability:** Datadog, Splunk
- **Containers:** Docker, ECS
- **Security/Secrets:** Cognito, AWS Parameter Store, Secrets Manager
- **Databases/Data Stores:** MySQL, Redis, OpenSearch, DocumentDB, PostgreSQL
- **Languages/Tools:** Python, JSON Line, Bash, JavaScript, Markdown, PHP, Ruby, YAML

---

### Lexia Learning, A Rosetta Stone Company – Concord, MA *(2016 – 2019)*
*Improving student literacy through the use of technology*

#### Senior DevOps Software Engineer

Led a major technical/process improvement effort for e-learning software suite, including multiple infrastructure and software improvements in the areas of AWS cloud, Configuration Management, Infrastructure as Code, CI/CD, and Business Intelligence. 

- Migrated Dev/QA environments to AWS from on-premises hardware, including 3.5 TB MySQL DB
- Developed a process to dump, split, transfer and load a 3.5 TB MySQL database to AWS RDS MySQL in under 48 hours; the previous on-premises dump and reload process running on SSDs and 32 Core DB CPUs took 5-6 days to complete.
- Integrated SAML authentication for SSO support with large school districts across all products**
- Upgraded Bamboo build system to support push-button deployments and rollbacks from dev/qa through staging and production. Optimized build times and continue to work on CI/CD best practices
- Automated the creation and maintenance of AWS infrastructure using Terraform to better manage and maintain the agility and reliability of dev/qa systems to help achieve development goals**
- Transitioned code repos from internal SVN server to Corporate GIT Bitbucket Server
- Developed a logging mechanism to log all SQL queries made to the database and use Splunk to analyze the data to improve API performance to help meet SLAs.
- Implemented Tableau Server for our Research team so they could easily share workbooks with Sales, Marketing and Implementation teams

---

### Cabot Heritage Corporation – Salem, MA *(2013 – 2016)*
*Independent Investment Advisory Services*

#### Director of Technology

Stabilized and streamlined a failing system architecture with new network, VPN and cloud architecture. Developed new objects in Sitecore CMS to improve site-wide SEO, provide new paid services, and improve customer functionality. Supported Marketing with campaign scripts for name collection, targeted advertising, and lifetime name value analysis. Improved in-house communication, project management, and business intelligence.

- Stabilized, consolidated and secured web and system architecture to improve performance, reducing costs over 40%, along with adding automated processes to reduce workload
- Built a data warehouse, custom ETL in Java and analyzed data with Tableau Desktop and Server to find business opportunities and process improvement
- Installed new subscription management and billing system to streamline business processes, improve customer support and sales; tokenized Credit Card processing with Cybersource
- Transitioned website to a customized CMS built on the Laravel PHP framework

---

### Eagle-Tribune Publishing Company – North Andover, MA
*Publisher of four morning daily newspapers and four weekly newspapers with 300K readers.*

#### Director of Research & Development *(2006 – 2012)*

Led all web, software, and operations development to drive sales and expand readership. Key player in implementing new order entry and accounts receivable systems. Revamped web strategies, maintain interdepartmental communication, and improve website quality and design to increase web traffic. Analyzed market data, create program, and trained web designers to successfully deploy the Daily Deals initiative. 

#### Director of Research & Development, Production *(2004 – 2006)*

Assembled and captained development team to build custom integration software, improving content management capabilities for multiple departments. Created centralized advertising web-application to synthesize data from five disparate systems into one user-friendly application, improving ad layout accuracy while streamlining interdepartmental communication.

## EDUCATION & AWARDS

* **BS – Electrical Engineering** – Merrimack College – North Andover, MA
* **SAFe 4 Certified Practitioner** – Scaled Agile, Inc
* **"20 Under 40" award** – Newspaper Association of America
* **Inbound Certification** – HubSpot
* **Team Manager and Board Member** – Danvers National Little League
