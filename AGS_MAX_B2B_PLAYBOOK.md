# AGS × Max AI — B2B Customer Acquisition Playbook

> **What this is:** The exact Max tools and workflows to use at each stage of winning a B2B partner.  
> **Who uses this:** AGS owner, office staff (3), and outside sales (2).  
> **Reference:** Full tool list in `AUTEVO_MAX_CAPABILITIES.md`

---

## Stage 1: Finding Prospects

### Google Maps Cold Prospecting (Small Contractors)

Your 2 outside sales people drive routes hitting small contractors from Google Maps.

**Max tools to use:**
| Action | Max Command | What Happens |
|---|---|---|
| Log the prospect | "Create a lead for Mike's Remodeling, phone 301-555-1234, source cold_call" | `create_lead` — prospect enters CRM pipeline |
| Assign to sales rep | "Assign the latest lead to [sales person name]" | `assign_lead` — ownership is clear |
| Set follow-up | "Set next action on lead 45: follow up call, March 22" | `set_lead_next_action` — nothing falls through cracks |
| Research the prospect | "Search the web for Mike's Remodeling Maryland reviews" | `web_search` — know who you're calling before you call |
| Get directions to their shop | "Directions from the shop to 123 Main St Rockville" | `get_directions` — plan the drive-by or walk-in |

**After the walk-in:**
| Action | Max Command |
|---|---|
| Log the visit | "Log a visit touch on lead 45, notes: met Mike, does 3-4 kitchens/month, currently uses XYZ Granite, unhappy with turnaround" |
| Schedule the yard tour | "Create calendar event: Yard tour with Mike's Remodeling, Thursday 2pm" |
| Draft the follow-up email | "Draft an email to Mike's Remodeling, subject: Great meeting you today, body: [Max writes it based on the notes]" |

---

### LinkedIn Outreach (Medium/Large GCs)

For GC project managers found via LinkedIn Sales Navigator.

**Max tools to use:**
| Action | Max Command |
|---|---|
| Create the lead | "Create a lead for Turner Construction, contact Sarah Johnson, email sjohnson@turner.com, source linkedin" |
| Score the lead | "Score my open leads" → `lead_scoring` ranks by close probability |
| Draft a connection message | "Draft a LinkedIn message for a GC project manager, tone: professional, about: stone fabrication partnership for their MD projects" |
| Research their projects | "Search the web for Turner Construction Maryland current projects" |

---

### K&B Store Walk-Ins

Your sales team walks into K&B showrooms with the one-pager.

**Max tools to use after the visit:**
| Action | Max Command |
|---|---|
| Create the lead | "Create a lead for Dynasty Kitchen & Bath, contact name James Park, phone 410-555-5678, source store_visit" |
| Log what you learned | "Log a visit on lead 52, notes: 6-person showroom, sells to homeowners, currently no fab partner, interested in seeing our yard" |
| Send the one-pager digitally | "Draft an email to Dynasty Kitchen, subject: AGS Trade Partner Info, body: Thanks for the conversation today, attached is our partner info..." |
| Add to drip sequence | "Add Dynasty Kitchen to the new partner nurture sequence" → `add_to_drip` |

---

## Stage 2: Converting Prospects to Partners

### The Yard Tour → First Quote Flow

This is where you win or lose the deal. Speed kills.

**During the yard tour:**
| Step | Max Command |
|---|---|
| Partner points at a slab | "Find slabs by material Calacatta Gold" → shows all available slabs with sqft, price, location |
| Partner asks about a remnant | "Show me remnants under 10 sqft" → `get_remnants` for upsell on vanity tops |
| Partner says "I have a kitchen, 45 sqft, bullnose edge, 4 cutouts" | "Generate a quote for 45 sqft Calacatta Gold 3CM, bullnose edge, 4 cutouts, for Dynasty Kitchen" → `quote_ai_generate` builds it in 30 seconds |

**After the yard tour (within 1 hour):**
| Step | Max Command |
|---|---|
| Generate the branded PDF | "Generate a proposal PDF for quote 87" → `generate_proposal_pdf` |
| Email it to the partner | "Email the quote PDF for quote 87 to Dynasty Kitchen" → `email_quote_pdf` |
| Set the follow-up | "Set next action on lead 52: call to discuss quote, two days from now" |
| Notify yourself when they sign | Already set up via event trigger: quote signed → SMS to you |

**The competitive advantage:** Competitor gives a quote in 3-5 days. You gave it during the yard tour and emailed the PDF before they drove home.

---

### Photo-to-Quote (Remote Partners)

A contractor texts you a kitchen template sheet photo. Your office handles it without you.

```
1. Contractor sends photo via portal chat or email
2. Office staff uploads to Max: "Extract layout from this photo"
   → stone_extract_layout_from_photo pulls dimensions
3. Max pushes to layout designer → calculates sqft automatically
4. Staff: "Generate a quote for this layout, material: White Ice Granite 3CM, bullnose"
   → quote_ai_generate with the extracted dimensions
5. Staff: "Generate the PDF and email it to [contractor]"
   → Done. Quote out in under an hour.
```

**This is your moat.** No small/mid fabricator in Maryland can do this.

---

## Stage 3: Onboarding New Partners

### First Job Workflow

Once a partner signs their first quote:

| Step | Max Command | What Happens |
|---|---|---|
| Quote accepted | Event trigger fires → SMS to owner + sales rep | You know instantly |
| Create the job | "Convert quote 87 to a job" → `convert_quote_to_job` | Job enters the pipeline |
| Schedule template | "Schedule job 120 for template on Thursday, crew A" | `schedule_job` |
| Create the invoice | "Convert quote 87 to an invoice" → `convert_quote_to_invoice` | Invoice ready |
| Collect deposit | Partner pays 50% via Stripe on the portal | Cash in hand before you cut |
| Track progress | Partner sees: Templating → Production → Installing in their portal | They feel informed, not anxious |
| Job complete | "Mark job 120 complete" → auto-sends review request after 24hrs | Google review = social proof for next prospect |
| Invoice remainder | "Send payment reminder for invoice 145" | Collect the balance |

---

## Stage 4: Retention & Growth

### Automated Follow-Up (Set Once, Runs Forever)

| Schedule | What Max Does | Why It Matters |
|---|---|---|
| **Every Friday 5pm** | Lists unsigned quotes + stale leads | You never forget to follow up |
| **Every Monday 9am** | Business snapshot: new leads, completing jobs, AR total | Start the week knowing your numbers |
| **Every day 8am** | Anomaly scan (stale leads, overdue invoices, pipeline stalls) | Catches problems before they cost you money |
| **1st of month** | Executive snapshot + P&L | Monthly health check |

### Keeping Partners Active

| Trigger | Max Action |
|---|---|
| Partner hasn't ordered in 30 days | `get_idle_customers` flags them → office calls to check in |
| New slab shipment arrives | "Draft a social post about our new Taj Mahal quartzite arrival" → `draft_social_post` for LinkedIn + send email blast to trade partners |
| Partner's job is complete | `send_review_request` → "How was your experience with AGS?" |
| Partner refers another contractor | Track via `list_referrals` → send a thank-you + referral credit |
| Remnant inventory piling up | "Show me remnants" → draft a "Remnant Clearance" email to all trade partners → `drip_email_draft` |

### Social Proof Machine

After every completed B2B job:

```
1. Take before/after photos on site
2. "Draft a LinkedIn post about this Calacatta Gold kitchen install in McLean VA, 
    tone: professional, call to action: Book a yard tour"
   → draft_social_post
3. "Generate a photo caption for Instagram: white quartz countertop, modern kitchen"
   → photo_caption with hashtags + alt text
4. Review the drafts, approve: "Approve social post 23"
   → approve_social_post
```

**Result:** Your LinkedIn feed shows a new completed project every week. GC project managers see it. K&B store owners see it. You become the visible, active fabricator in the market.

---

## Stage 5: Scaling (Month 3+)

### When You Have 10+ Active Partners

| Capability | Max Command | Impact |
|---|---|---|
| **Cash flow forecasting** | "Project my cash flow for the next 90 days" → `predictive_cash_flow_modeling` | Know if GC net-60 terms will create a cash crunch |
| **Supply chain alerts** | "Scan upcoming jobs for material shortages" → `supply_chain_edge_ai` | Never run out of a popular slab mid-job |
| **Crew optimization** | "Show me the crew schedule for next week" + "Get drive time matrix for jobs 120, 121, 122, 123" | Route installs efficiently, reduce windshield time |
| **Delegate complex tasks** | "Delegate to Sales Max: review all leads from the last 30 days, score them, and draft a follow-up email for each that hasn't been contacted in 10+ days" | `delegate_to_agent` — sub-agent does the grunt work |
| **Partner-specific analytics** | "Get customer LTV for Dynasty Kitchen" + "Get profit summary for the last quarter" | Know which partners are most profitable |

---

## Quick Reference: Top 25 Max Commands for AGS Sales Team

```
PROSPECTING:
  "Create a lead for [name], phone [number], source [cold_call/walk_in/linkedin/website]"
  "Assign the latest lead to [sales person]"
  "Log a [call/visit/email] on lead [id], notes: [what happened]"
  "Score my open leads"
  "Show me leads with no contact in 14 days"
  "Search the web for [prospect name] reviews"

QUOTING:
  "Generate a quote for [sqft] of [material], [edge], [cutouts], for [customer]"
  "Extract layout from this photo" (upload template sheet)
  "Generate a proposal PDF for quote [id]"
  "Email the quote PDF for quote [id]"
  "Show me available slabs of [material]"
  "Show me remnants under 10 sqft"

FOLLOW-UP:
  "Draft an email to [customer], subject: [subject]"
  "Draft an SMS to [customer]: [message]"
  "Set next action on lead [id]: [action], [date]"
  "List all unsigned quotes from this week"
  "Add [customer] to the [sequence name] drip"

OPERATIONS:
  "Convert quote [id] to a job"
  "Schedule job [id] for [date], crew [name]"
  "Convert quote [id] to an invoice"
  "Send payment reminder for invoice [id]"
  "Mark job [id] complete"
  
INTELLIGENCE:
  "Project my cash flow for the next 90 days"
  "Run a business anomaly check"
  "Give me a weekly report"
```

---

## The AGS Competitive Stack

```
┌─────────────────────────────────────────────────────┐
│           What the Partner Sees (Portal)             │
│  Browse slabs → Draw layout → Get instant quote     │
│  Track jobs → Pay online → Chat with AI assistant   │
└────────────────────────┬────────────────────────────┘
                         │
┌────────────────────────▼────────────────────────────┐
│           What AGS Staff Uses (Max)                  │
│  AI quotes in 30 sec → Photo-to-layout → PDF gen   │
│  Auto follow-ups → Lead scoring → Cash forecasting  │
└────────────────────────┬────────────────────────────┘
                         │
┌────────────────────────▼────────────────────────────┐
│           What Runs in Background (Agents)           │
│  Sales Bot captures leads 24/7                       │
│  Scheduled reports every Friday                      │
│  Event triggers → SMS on quote signed                │
│  Anomaly detection → catches dropped balls           │
└─────────────────────────────────────────────────────┘

No other small/mid fabricator in Maryland has this stack.
```
