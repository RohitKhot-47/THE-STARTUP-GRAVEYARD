# 🪦 PROJ01 — The Startup Graveyard

### *Why do startups with billions in funding still die?*

> **Analyst:** Rohit Khot | **Framework:** McKinsey MECE | **Tools:** SQL · Excel · Power BI  
> 📧 rohitkhot.analytics@gmail.com · [LinkedIn](https://linkedin.com/in/rohitkhot-analyst) · [GitHub](https://github.com/RohitKhot-47)

---

## 🧭 The Central Argument

**Human decisions — not bad luck — are the primary cause of startup failure.**

Across 46 failed startups representing **$60B+ in destroyed capital**, a structured MECE analysis reveals that **93% of failures trace back to controllable decisions made by founders and executives** — not markets, not timing, not misfortune.

The data doesn't lie: startups don't die because the world is cruel. They die because the people running them made the wrong calls.

---

## 🗂️ Project Structure

```
PROJ01-Startup-Graveyard/
│
├── 📁 data/
│   ├── DATASET_PROJ01.csv           ← Raw dataset (18 fields, 46 companies)
│   ├── EDA_cleaned.csv              ← SQL-cleaned & engineered dataset
│   └── Final_visualization.csv     ← Power BI ready dataset
│
├── 📁 analysis/
│   └── EDA_queries.sql              ← All SQL queries (cleaning + EDA)
│
├── 📁 dashboard/
│   ├── Startup_Graveyard.pbix       ← Power BI dashboard file
│   └── dashboard_preview.png        ← Dashboard screenshot
│
├── 📁 process/
│   └── whiteboard_framework.jpg     ← McKinsey MECE argument map (hand-drawn)
│
└── README.md
```

---

## 🔍 Methodology — McKinsey MECE Framework

This project was not built by looking at data first. It was built by **thinking first**.

### Step 1 — Structured the Problem (Whiteboard)
Before touching any data, I mapped the central question on a whiteboard:

> *"What causes startup failure — and can we make it Mutually Exclusive, Collectively Exhaustive?"*

I identified **6 MECE failure pillars** that cover 100% of cases with zero overlap:

| Pillar | Definition | Companies |
|---|---|---|
| 🔴 Strategic Miscalculation | Wrong market, wrong model, wrong expansion | 14 |
| 🔴 Bad Decisions | Fraud, legal violations, leadership collapse | 10 |
| 🔴 Financial Mismanagement | Debt default, burn rate, unit economics failure | 4 |
| 🟡 Multiple | Two or more equal contributing pillars | 7 |
| ⚪ External Blame | Macro shifts, regulation, competition | 5 |
| ⚪ Uncontrolled | Clinical failures, force majeure events | 3 |

> 🔴 **Controllable = 93% of failures.** ⚪ Uncontrollable = 7%.

### Step 2 — Data Collection & Cleaning (SQL)
- Built raw dataset manually: 18 fields per company, sourced from Forbes, CB Insights, Britannica, SEC filings
- Cleaned in MySQL: standardized funding formats, created `int_funding` numeric field, resolved classification inconsistencies
- Engineered `classification` column to map each company to its MECE pillar

### Step 3 — Exploratory Data Analysis (SQL)
Key EDA questions answered:
- Which pillar has the highest average funding? *(Strategic Miscalculation — $22B)*
- Which pillar survives longest before collapse? *(Financial Mismanagement — avg 10.7 years)*
- Does more funding = longer survival? *(No — Northvolt raised $13.8B and failed in 8 years)*

### Step 4 — Visualization (Power BI)
Built an executive-ready dashboard with:
- KPI cards: 46 companies, 6.11 avg active years, $1.31B avg funding
- Dual-axis bar + line chart: Funding vs. Active Years by Pillar
- Pie chart: Company distribution by MECE classification
- Hero stat: **"93% of startup failures trace back to controllable human decisions"**

---

## 📊 Key Findings

### Finding 1 — The Vision Gap Kills More Than Market Crashes
Strategic Miscalculation accounts for **30.43% of failures** — the single largest pillar. Companies like Katerra ($2B), Argo AI ($2.6B), and Northvolt ($13.8B) didn't fail because markets shifted. They failed because leadership bet on a vision the market never validated.

### Finding 2 — Money Buys Time, Not Survival
The highest-funded failures cluster in Strategic Miscalculation (avg $22B raised). More capital without strategic clarity accelerates the burn — it doesn't delay the obituary.

### Finding 3 — Fraud is a Leadership Choice
10 companies (21.7%) are classified under Bad Decisions — including Theranos, FTX, Luckin Coffee, and Outcome Health. Each involved executives who chose deception over transparency. These aren't market failures. They are moral failures.

### Finding 4 — The 4.8-Year Danger Zone
Companies in the External Blame category lasted an average of **4.8 years** — the shortest survival window. The implication: startups that build without a defensible moat are most exposed to forces outside their control.

### Finding 5 — Unit Economics Is Non-Negotiable
Juicero, Shyp, Zume Pizza — all killed by the same thing: **cost > revenue per transaction**. The product worked. The business didn't. Validating unit economics before scaling is a survival requirement, not an optimization.

---

## 🧠 The Analyst's Verdict

> *"Most startup post-mortems read like tragedies. This analysis reads like a pattern.*
> *The recurring theme is not bad luck — it is the systematic failure to validate assumptions before deploying capital.*
> *The graveyard isn't full of unlucky founders. It's full of overconfident ones."*

**Strategic Recommendation:**
Before any Series A deployment, founders should pressure-test three questions:
1. Is our unit economics model profitable at scale? *(Financial Miscalculation check)*
2. Is our vision grounded in validated market demand? *(Strategic Miscalculation check)*
3. Are our governance and compliance structures built for scrutiny? *(Bad Decisions check)*

93% of these companies would still exist if someone had asked these questions early enough.

---

## 🛠️ Tools & Skills Demonstrated

| Tool | Application |
|---|---|
| **MySQL** | Data cleaning, column engineering, EDA queries |
| **Excel** | Initial data structuring, cross-validation |
| **Power BI** | Executive dashboard with dual-axis visualization |
| **McKinsey MECE** | Problem structuring, argument mapping, hypothesis-first thinking |
| **Research** | Manual dataset construction from Forbes, CB Insights, SEC filings, Britannica |

---

## 📁 Dataset Overview

**46 companies · 18 fields · $60B+ in total destroyed capital**

Key fields: `Company Name` · `Industry` · `Country` · `Funded Year` · `Shutdown Year` · `Years Active` · `Total Funding` · `Funding Rounds` · `Last Funding Stage` · `# Founders` · `Founders Left` · `Key Exec Departure` · `Official Cause` · `MECE Classification` · `Analyst's Own Thoughts`

Notable companies: WeWork · Theranos · FTX · Quibi · Jawbone · Northvolt · Byju's · Getir · Luckin Coffee · MoviePass

---

## 🔗 Connect

Built by **Rohit Khot** — Fresher Analyst | SQL · Excel · Power BI · Python

📧 rohitkhot.analytics@gmail.com  
🔗 [linkedin.com/in/rohitkhot-analyst](https://linkedin.com/in/rohitkhot-analyst)  
💻 [github.com/RohitKhot-47](https://github.com/RohitKhot-47)

---

*This is Project 01 of my end-to-end analytics portfolio. Each project is built with a business question first, data second, and a recommendation at the end — the way analysts actually work.*
