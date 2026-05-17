# AGS Business Strategy & Architecture Rules

## Core Purpose
This document is the **single source of truth** for all AGS strategic sessions. **Every new AI session MUST read this file first**, then load the strategic plan and task tracker before executing any work.

---

## 1. Company Profile
* **Company:** Advanced Granite Solutions (AGS)
* **Established:** ~2004 (20+ year track record)
* **Leadership:** Two partners (User = primary strategist; business partner handles some ops)
* **Core Business:** B2B stone fabrication & installation (granite, quartz, marble, etc.)
* **Key Asset:** Fully **indoor slab yard** (~500 slabs) — protects material and provides a premium client experience regardless of weather
* **Reputation:** Strong word-of-mouth presence; name recognition drives organic walk-ins and referrals consistently
* **Location:** MD/PA/DE corridor

---

## 2. Strategic Orientation — PURE B2B
**AGS is a B2B-only operation. We do NOT pursue direct residential customers.**

### Current Marketing Channels (Residential — MAINTENANCE ONLY)
* 2 home shows per year
* Angi / HomeAdvisor leads (15+ year relationship)
* Word-of-mouth / organic walk-ins
* **NO new residential marketing channels will be added. Budget for residential acquisition stays at zero growth.**

### Failed/Rejected Channels
* **Google Ads:** Tested. Attracted price-first "bottom feeder" customers with no loyalty. Not aligned with AGS positioning. **Do not revisit.**

### B2B Growth Mandate
All strategic energy goes to **growing B2B accounts**. Marketing budget for B2B must remain **low-cost / lean** — outbound-driven, not paid-media-driven.

---

## 3. B2B Customer Segmentation (Target Types)
AGS currently has customers across ALL of these segments. The goal is to **add more accounts in each**:

| Segment | Payment Speed | Strategic Value | Current Examples |
|---|---|---|---|
| **Large General Contractors** | Slow (60-90 days) | High revenue, lumpy | Harkins Builders, CCS Building Group |
| **Medium General Contractors** | Slow (60-90 days) | Reliable mid-volume | Various active prospects |
| **Small General Contractors** | Moderate (30-60 days) | Volume, quicker turns | Organic inbound |
| **Kitchen & Bath Stores** | Fast (50% up / 50% completion) | Fast cash conversion | Existing accounts |
| **Interior Designers** | Moderate-Fast | High-margin, relationship-driven | Lost a decent designer account recently |
| **Apartment Complexes** | Varies (contract-dependent) | Bulk, recurring | Existing accounts |
| **Retirement Homes / Senior Living** | Varies (contract-dependent) | Bulk, recurring | Existing accounts |
| **Flippers / Investors** | Fast (cash or near-cash) | Volume, fast turns | **Declined significantly** — market shift |

---

## 4. Financial Reality & Constraints
This section exists so every session understands the financial backdrop. **Do not propose strategies that ignore these realities.**

### The Debt Overhang
* AGS lost **~$1 million** across two startup ventures launched in 2020.
* To cover those losses and weather market downturns, AGS took on **high-interest, short-term loans**.
* The business itself is **highly profitable operationally** — but a significant portion of gross profit is consumed by **interest expense**.

### Credit Constraints
* The founder went through a **divorce**, which damaged personal credit.
* Traditional **refinancing / debt consolidation via conventional commercial lending is currently blocked** by the personal credit situation.
* Any financial strategy must work within this constraint (e.g., invoice factoring, supplier term negotiation, revenue-based financing that doesn't rely on personal credit score).

### Revenue Flatline Diagnosis (Recent 2 Years)
Despite adding two major accounts (Harkins + CCS), revenue remained **flat** due to three offsetting losses:
1. **Flipper segment collapse** — far fewer investor/flipper customers than prior years.
2. **Lost a significant designer account** — direct revenue and referral pipeline hit.
3. **General market softness** — existing B2B partners are slower (fewer projects flowing through them).

**Implication:** New account acquisition is working, but it's only backfilling attrition. We need **net-new growth** on top of replacement.

---

## 5. Showroom Expansion Context
* AGS has an **empty 2,000 sqft space adjacent to the current showroom** available for expansion.
* **Opportunity:** Add new product lines to increase wallet share per visit and attract new B2B segments.
* **CRITICAL RISK — Channel Conflict:** Some current B2B partners (K&B stores, designers) sell the same materials AGS would add. Expanding product lines carelessly could cause those partners to view AGS as a competitor and pull their business.
* **Rule:** Before adding any product line, we must model the **revenue at risk** (from potentially losing B2B partners who sell that product) vs. the **revenue gained** (from direct sales + new partners attracted by the expanded offering).

---

## 6. The Founder's Time Bottleneck
* The founder (User) is the **primary bottleneck** in the business.
* Responsibilities are split across: **AGS operations**, **Autevo (software build)**, **Niona (advisory)**, and **personal life**.
* The founder is the **only person** who can fill out GC qualification forms, OSHA documents, and safety compliance paperwork for new contractor accounts. Business partner can sometimes help.
* **Any strategy that requires significant founder time investment must justify the ROI explicitly.**

---

## 7. Related Projects
* **AGS (Advanced Granite Solutions):** **PRIMARY ACTIVE FOCUS** — 20-year established business. All strategic planning centers here.
* **Autevo (Job Business Flow):** Secondary. Software product. Relevant to AGS where it can automate internal workflows (e.g., GC packet automation, quoting).
* **Niona:** Advisory role only. Minimal time allocation.

---

## 8. Session Initialization Protocol
Every new session, the AI must execute this sequence:

1. **📋 Context Load:** Read `STRATEGY_RULES.md` (this file) — understand the business, constraints, and rules.
2. **🎯 Strategy Load:** Read `AGS_STRATEGIC_PLAN.md` — understand the current growth pillars and roadblocks.
3. **✅ Master TODO:** Read `AGS_MASTER_TODO.md` — the prioritized, step-by-step execution checklist. This is the **primary action reference**.
4. **📊 Task Detail:** Read `AGS_TASK_TRACKER.md` — detailed phase-level task breakdowns (supplements the master TODO).
5. **📇 Prospect Database:** Read `AGS_MASTER_OUTREACH.md` — the single-source-of-truth for all **538** B2B prospects (5 phases complete). Paired with `AGS_MASTER_OUTREACH.csv` for CRM/Excel tracking.
6. **🔍 Analysis Load (if relevant):** Read `AGS_COMPETITIVE_ANALYSIS.md` — understand competitive positioning.
7. **🚀 Execute:** Ask the user which specific task or block we are working on this session.

---

## 9. Documentation Rules
* **CRITICAL:** All files save to `g:\My Drive\AGS\` (Google Drive). This is the active working directory.
* **CRITICAL:** `AGS_MASTER_OUTREACH.md` is the SINGLE SOURCE OF TRUTH for all prospects. Do NOT create separate prospect files — add to master.
* **CRITICAL:** `AGS_MASTER_OUTREACH.csv` must always match the `.md` file (538+ entries, synced). Re-run `dashboard\build.ps1` after any MD edits.
* **CRITICAL:** Legacy/old prospect files are archived in `g:\My Drive\AGS\Archive_Prospect_Files\`.
* **NEVER** save business-critical docs exclusively to the ephemeral `.gemini/antigravity/brain` artifact directory.
* When a task is completed, immediately mark it `[x]` in the tracker.

### Active Files Reference
| File | Purpose |
|---|---|
| `STRATEGY_RULES.md` | This file — business rules, constraints, session protocol |
| `AGS_STRATEGIC_PLAN.md` | Growth pillars, roadblocks, strategic direction |
| `AGS_MASTER_TODO.md` | Prioritized execution checklist |
| `AGS_TASK_TRACKER.md` | Phase-level task breakdowns |
| `AGS_MASTER_OUTREACH.md` | 538 B2B prospect profiles — SINGLE SOURCE OF TRUTH |
| `AGS_MASTER_OUTREACH.csv` | CRM/Excel-compatible tracking (matches .md — 562 rows) |
| `AGS_COMPETITIVE_ANALYSIS.md` | Competitive positioning research |
| `AGS_MAX_B2B_PLAYBOOK.md` | B2B outreach playbook |
| `AGS_EMAIL_OUTBOUND.md` | Email outreach templates |
| `AGS_LINKEDIN_OUTBOUND.md` | LinkedIn outreach templates |
| `AGS_COLD_CALL_SCRIPTS.md` | Cold call scripts |
| `AGS_WHY_AGS_ONEPAGER.md` | One-pager for prospects |
| `AGS_NEW_CONTRACTOR_OFFERS.md` | New contractor onboarding offers |
| `AGS_SHOWROOM_DESIGN.md` | Showroom expansion plans |
| `dashboard/ags_dashboard.html` | AGS Command Center — self-contained tabbed viewer for all docs |
| `dashboard/build.ps1` | Rebuilds dashboard from latest MD files |
| `dashboard/index.html` | Dashboard template (used by build.ps1) |
| `Archive_Prospect_Files/` | Old prospect files (do not use for outreach) |

---

## 11. AGS Command Center (Dashboard)

### What It Is
A **self-contained HTML dashboard** that renders all AGS MD files in a premium dark-mode tabbed interface. No server needed — just open the `.html` file in a browser.

### File Location
* Dashboard: `g:\My Drive\AGS\dashboard\ags_dashboard.html`
* Build script: `g:\My Drive\AGS\dashboard\build.ps1`
* Template: `g:\My Drive\AGS\dashboard\index.html`

### How to Rebuild After Editing MD Files
```powershell
powershell -ExecutionPolicy Bypass -File "G:\My Drive\AGS\dashboard\build.ps1"
```
This reads all 11 MD files and embeds them into a single HTML. Takes ~3 seconds.

### How to View the Dashboard
1. **Locally (instant):** Double-click `g:\My Drive\AGS\dashboard\ags_dashboard.html` in File Explorer. Opens in your browser — no server needed.
2. **GitHub Pages (remote access):** Enable Pages on the private repo for mobile/any-device access. Requires GitHub Pro ($4/mo).

### GitHub Private Repo
* **Repo URL:** `https://github.com/ibkucuk-cmyk/ags-command-center`
* **Visibility:** Private — not public-facing. For internal ops only.
* **Push updates after editing MD files:**
```powershell
$env:Path += ";C:\Program Files\Git\cmd"
cd "G:\My Drive\AGS"
powershell -ExecutionPolicy Bypass -File dashboard\build.ps1
git add -A
git commit -m "Update docs"
git push
```

---

## 10. Messaging & Positioning Guardrails
**All copy, taglines, and sales messaging must follow these rules.** Refer to `AGS_COMPETITIVE_ANALYSIS.md` for full competitive context.

### What We WILL Say (Honest, Defensible)
* **"Build Your Own Quotes Instantly via the Pro Portal."** — Self-serve quoting is a real differentiator vs. competitors with slow estimating departments.
* **"100% In-House. No Subcontractors."** — True. AGS controls every install. Competitors (JPS) subcontract.
* **"A Dedicated Team — With Ownership Behind Every Job."** — True. AGS has 3 office staff + 2 outside sales reps managing accounts daily, with ownership accessible for decisions. Competitors are bureaucratic.
* **"20 Years. Indoor Slab Yard."** — True. The indoor yard is the differentiator, not the slab count.

### What We Will NEVER Say
* ❌ **Don't lead with slab count.** We have ~500 slabs. Classic and Artelye have 2,000-5,000. Lead with *indoor* and *experience quality*, never quantity.
* ❌ **Don't promise "Quotes in 24 Hours."** Undersells the Pro Portal. The real advantage is *instant self-serve quoting*, not a timeframe.
* ❌ **Don't say "Guaranteed Install Dates."** Delays happen (late stone orders). We communicate proactively, but we don't make promises we can't 100% keep.
* ❌ **Don't reference "financial backing" or financial strength.** Given our debt reality, this is misleading. Never use financial strength as a selling point.
* ❌ **Don't sell against United Granite with outdated quality assumptions.** Their quality may have improved. Get current intel before positioning against them.
* ❌ **Don't write generic marketing fluff.** Every claim must be tied to something AGS actually does differently. If it could appear on any competitor's website, it's not good enough.
