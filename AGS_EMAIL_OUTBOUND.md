# AGS Email Outbound Strategy & Sequence

> **Purpose:** 5-email cold outreach sequence for Instantly.ai + domain/email setup guide.  
> **Last Updated:** 2026-05-15  
> **Domain:** agspartners.com  
> **Tool:** Instantly.ai ($30/mo)  
> **Messaging Compliance:** Verified against `STRATEGY_RULES.md` §10.

---

## 1. Domain & Email Setup Guide

### Step 1: Buy Domain
- Register `agspartners.com` (~$12/year)
- Recommended registrars: Namecheap, Cloudflare, Google Domains

### Step 2: Set Up Email Accounts
- Use Google Workspace ($6/user/mo) or Zoho Mail (free for up to 5 users)
- Create: `serhan@agspartners.com`, `info@agspartners.com`

### Step 3: DNS Authentication Records

**SPF Record** (TXT record on agspartners.com):
```
v=spf1 include:_spf.google.com ~all
```
*(Adjust the include based on your email provider)*

**DKIM Record:**
- Google Workspace generates this automatically in Admin Console → Apps → Gmail → Authenticate Email
- Add the generated TXT record to your DNS

**DMARC Record** (TXT record, name: `_dmarc`):
```
v=DMARC1; p=none; rua=mailto:serhan@agspartners.com
```
*(Start with p=none to monitor, then move to p=quarantine after 30 days)*

### Step 4: Connect to Instantly.ai
- Sign up at instantly.ai ($30/mo Growth plan)
- Add your email accounts
- Enable **Auto-Warmup** — Instantly will automatically send/receive emails to build reputation
- Warmup takes **2-3 weeks** — runs in the background, no action needed from you

### Step 5: Go Live
- Instantly tells you when domain is "warm"
- Start with **10-15 emails/day**, ramp to 30-40/day after 1 week
- Never exceed 50 cold emails/day from a single account

---

## 2. Target List Template

Build this list in a spreadsheet (or Autevo CRM). Aim for **50+ contacts**.

| Company Name | Contact Name | Title | Email | Phone | Location | Segment | Source | Notes |
|---|---|---|---|---|---|---|---|---|
| Capital K&B | Sarah Johnson | Owner | sarah@capitalkb.com | 410-555-1234 | Annapolis, MD | K&B Store | Google Maps | Mid-range renovations |
| [Next...] | | | | | | | | |

### Where to Find Contacts
1. **Google Maps** — "kitchen and bath store" / "interior designer" / "contractor" near your area
2. **LinkedIn Sales Navigator** — export from your saved searches
3. **Houzz Pro Directory** — houzz.com/professionals
4. **NKBA Directory** — nkba.org/find-a-member
5. **MBIA** — Maryland Building Industry Association member directory
6. **Angi/HomeAdvisor Pro Network** — ask your rep for contractor directories
7. **Yelp** — search for kitchen remodelers, contractors in your area

### Email Verification
- Before loading into Instantly, verify emails using **Hunter.io** (free for 25/mo) or **NeverBounce**
- Don't send to unverified emails — bounces destroy your sender reputation

---

## 3. Cold Email Sequence — 5 Emails Over 4 Weeks

### Rules
- All copy must pass `STRATEGY_RULES.md` §10 guardrails
- Personalize the first line of every email
- Keep subject lines short (4-7 words)
- No images or heavy HTML — plain text performs better for cold email
- Include an unsubscribe line at the bottom of every email

---

### Email 1 — Introduction (Day 1)

**Subject:** Quick question about your stone sourcing

**Body:**

Hi [First Name],

I'm [your name] from Advanced Granite Solutions. We're a stone fabrication and installation shop in [your city] — been at it for about 20 years.

I'm reaching out because we work with a number of [K&B stores / contractors / designers] in the MD/PA/DE area as their fabrication partner, and I wanted to see if you ever need support on the stone side.

Quick overview of what we do:
- Granite, quartz, marble, quartzite, porcelain slab fabrication + installation
- 100% in-house — we don't subcontract any installs
- Indoor slab yard where your clients can see exactly what they're getting

Would it make sense to connect? Happy to give you a quick tour of the yard — no commitment.

Best,
[Your Name]
Advanced Granite Solutions
[Phone]

*If you'd prefer not to hear from me, just reply "remove" and I'll take you off my list immediately.*

---

### Email 2 — Value Prop (Day 4)

**Subject:** Re: Quick question about your stone sourcing

**Body:**

Hi [First Name],

Following up on my last note. One thing I should have mentioned —

A lot of our partners tell us the two biggest headaches with their previous fabricators were:
1. **Slow quoting** — waiting 3-5 days just to get a price back
2. **Inconsistent quality** — different crews showing up with different standards

We solve both:
- We're building a **Pro Partner Portal** where you can browse our inventory and build quotes instantly — no waiting on us
- Every install is done by our own team. Same crew, same quality, every time.

Our indoor slab yard is also a real differentiator for your clients. They can walk in, see the actual stone, and make a confident decision on the spot. Rain or shine — it's all indoors.

Worth a quick call?

[Your Name]

*Reply "remove" to unsubscribe.*

---

### Email 3 — Social Proof (Day 10)

**Subject:** How a [contractor/K&B store] in [area] works with us

**Body:**

Hi [First Name],

Wanted to share a quick example of how one of our partnerships works:

We've been working with a mid-size GC in the Baltimore area on their kitchen and bathroom projects. They send us the scope, and we handle everything from material sourcing to final install. They don't have to manage a stone subcontractor or worry about who's showing up on install day.

The result: **faster project timelines** (because we're not waiting on a third party) and **zero quality callbacks** on the stone work.

Their project managers also use our indoor slab yard as a client selection tool — instead of flipping through sample chips, they bring the homeowner in and let them see the full slab. It closes deals faster.

If you're curious what a partnership like that looks like for your business, I'd love to show you around.

[Your Name]

*Reply "remove" to unsubscribe.*

---

### Email 4 — Showroom Invite (Day 18)

**Subject:** Open invite to see the yard

**Body:**

Hi [First Name],

I know you're busy, so I'll keep this short.

If you're ever in the [your city] area, you've got a standing invite to tour our indoor slab yard. Bring a client if you'd like — we'll roll out the red carpet and make you look good.

No pitch, no pressure. Just a chance to see the operation and decide if we'd be a good fit as a partner.

We're at [address]. Open [hours].

Hope to see you sometime.

[Your Name]

*Reply "remove" to unsubscribe.*

---

### Email 5 — Breakup (Day 28)

**Subject:** Last note from me

**Body:**

Hi [First Name],

This is my last email — I don't want to be that person clogging your inbox.

If the timing isn't right, I completely understand. Stone fabrication isn't something you think about until you need it.

If you ever do need a partner — whether it's for a one-off project or an ongoing relationship — we're here. 20 years, indoor slab yard, 100% in-house. 

Just reply to this email or call [phone number] anytime.

Wishing you a great rest of the year.

[Your Name]
Advanced Granite Solutions

*Reply "remove" to unsubscribe.*

---

## 4. Post-Response Handling

| Response Type | Action |
|---|---|
| **Positive reply** | Founder follows up personally. Schedule yard tour. Add to Autevo CRM. |
| **"Send more info"** | Reply with "Why AGS" one-pager (PDF). Follow up in 5 days. |
| **"Not right now"** | Move to nurture list. Monthly check-in email (different from cold cadence). |
| **"Remove" / Unsubscribe** | Remove immediately. Never contact again from any channel. |
| **No response (all 5 emails)** | Wait 90 days. Then add to a different, softer nurture sequence. |
| **Bounce** | Remove from list. Verify email was correct. |

---

## ⚠️ Compliance Notes
- ❌ No slab count | ❌ No "quotes in 24hrs" | ❌ No install guarantees
- ❌ No financial claims | ❌ No competitor names | ❌ No generic fluff
- ✅ Unsubscribe option in every email
- ✅ CAN-SPAM compliant (physical address + unsubscribe mechanism)
- ✅ Every claim tied to real AGS differentiators
