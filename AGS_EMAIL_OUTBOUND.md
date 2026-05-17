# AGS Email Outbound Strategy & Sequences

> **Purpose:** 5 email sequence styles aligned to the Owner-to-Owner philosophy + domain setup guide.  
> **Last Updated:** 2026-05-17  
> **Domain:** agspartners.com  
> **Tool:** Instantly.ai ($30/mo)  
> **Philosophy:** See `STRATEGY_RULES.md` §13 — "Owner to Owner, Not Salesman to Prospect"

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

## 2. The 5 Email Approaches

> **Choose ONE approach per prospect segment.** Test all 5 for 2 weeks, then double down on the top 2 performers. Each approach matches a conversation style from `AGS_COLD_CALL_SCRIPTS.md`.

### Rules for ALL Approaches
- Must read like a **personal email from one owner to another** — NOT marketing
- Plain text only — no images, no HTML, no logos
- Short subject lines (4-7 words)
- Include unsubscribe option in every email
- **Personalize the first line** — reference their business, location, or something specific

---

## Approach A: "Industry Insider" Sequence
**Matches:** Cold Call Approach 1 (Industry Talk)  
**Best for:** Established K&B stores, experienced contractors, GC owners  
**Tone:** Peer sharing market observations

### Email A1 — (Day 1)

**Subject:** Noticing a shift in the market

Hi [First Name],

I'm Serhan — I run a stone fabrication shop in Edgewood, MD. Been doing this for about 20 years.

I'm reaching out because I've been connecting with other business owners in the [Baltimore/Harford Co] area and I'm curious — are you seeing the same things I'm seeing right now?

The material costs, the labor market, the way customer expectations have completely changed in the last 2-3 years... it's a different business than it was 5 years ago.

Not trying to sell you anything. Genuinely curious what the view looks like from your side of the business.

If you're ever up for a coffee and some honest shop talk, I'd enjoy that.

— Serhan
Advanced Granite Solutions
[Phone]

*Reply "remove" if you'd rather not hear from me.*

---

### Email A2 — (Day 5)

**Subject:** Re: Noticing a shift in the market

Hi [First Name],

Quick follow-up — I was talking to another contractor this week who said something that stuck with me:

*"The guys who are going to survive the next 10 years are the ones building real partnerships, not just chasing the lowest bid."*

That's exactly how I've been running our shop. We stopped chasing volume years ago and focused on being the fabrication partner that makes contractors and K&B stores look good. Everything in-house, no subs, indoor slab yard where your clients can actually see what they're getting.

Would love to hear your take over a coffee sometime. No agenda — just two owners comparing notes.

— Serhan

*Reply "remove" to unsubscribe.*

---

### Email A3 — (Day 14)

**Subject:** Worth 5 minutes?

Hi [First Name],

Last note on this — I genuinely just want to connect with other business owners in the area. I spend so much time inside my own shop that I forget to look up and see what's happening around me.

If you're ever driving through the Edgewood area, our door is always open. We've got a fully indoor slab yard that I'm pretty proud of — and the coffee's decent too.

No pitch. Just a handshake and a conversation.

Hope you're having a good month.

— Serhan
[Phone]

*Reply "remove" to unsubscribe.*

---

## Approach B: "Future Forward" Sequence
**Matches:** Cold Call Approach 2 (AI / Tech Talk)  
**Best for:** Younger owners, tech-savvy shops, anyone with a strong online presence  
**Tone:** Forward-thinking, excited about what's coming

### Email B1 — (Day 1)

**Subject:** Quick thought on where our industry is headed

Hi [First Name],

I'm Serhan — 20 years in stone fabrication. Something I've been thinking about a lot lately:

Our industry is one of the last to adopt technology. Most shops still do everything by phone and paper. Meanwhile, other industries have been using self-serve portals, AI-powered scheduling, and instant quoting for years.

I've actually been building a system where contractors and K&B stores can log in, browse our actual slab inventory, and build quotes themselves — no phone calls, no waiting on us. Self-serve, 24/7.

I'm curious — have you been looking into any tech tools for your business? I'm always hunting for ideas.

Would love to grab a coffee and compare notes if you're up for it.

— Serhan
Advanced Granite Solutions
[Phone]

*Reply "remove" if you'd rather not hear from me.*

---

### Email B2 — (Day 5)

**Subject:** Re: Quick thought on where our industry is headed

Hi [First Name],

One more thing I've been experimenting with — AI.

Not the hype stuff. Practical things. Using it for estimating, for scheduling, for market research. It's not perfect, but 6 months from now it's going to be 10x better. And the businesses that figure it out now are going to have a massive advantage.

I've been testing some of this in our stone shop and the results have been... honestly surprising. The quoting alone saves us hours every week.

If you're interested in this stuff at all, I'd genuinely enjoy swapping ideas. This isn't a pitch — I'm just a nerd about this and most people in our industry don't want to talk about it.

Coffee sometime?

— Serhan

*Reply "remove" to unsubscribe.*

---

### Email B3 — (Day 14)

**Subject:** Standing invite

Hi [First Name],

Last email from me on this. If you're ever curious about what we're building on the tech side — or if you just want to see a 20-year stone shop that's trying to modernize — come by anytime. 

The indoor slab yard is worth seeing on its own. And I genuinely enjoy talking to other business owners about where things are headed.

The door's always open. [Address]. Hope to meet you someday.

— Serhan
[Phone]

*Reply "remove" to unsubscribe.*

---

## Approach C: "Real Talk" Sequence
**Matches:** Cold Call Approach 3 (Shared Struggle)  
**Best for:** Small contractors, owner-operators, one-person shops  
**Tone:** Authentic, vulnerable, no pretense

### Email C1 — (Day 1)

**Subject:** Fellow business owner saying hi

Hi [First Name],

I'm Serhan. I run a stone fabrication shop. 20 years. Some days I love it, some days I wonder why I didn't become an accountant. *(Kidding. Mostly.)*

I found your business online and I just wanted to reach out — not to sell you anything, but because I've been making an effort to connect with other owners in our area. Running a business can be pretty isolating sometimes.

If you ever want to grab a coffee or lunch and just talk shop — the good, the bad, and the ugly — I'm always down for that.

— Serhan
Advanced Granite Solutions
[Phone]

*Reply "remove" if you'd rather not hear from me.*

---

### Email C2 — (Day 5)

**Subject:** Re: Fellow business owner saying hi

Hi [First Name],

Quick follow-up — I meant what I said about not trying to sell you anything. But I did want to mention something in case it's useful:

If you ever do a project that involves countertops, I'd rather you call me than end up with a bad experience from some fly-by-night fabricator who subcontracts everything.

We do everything in-house. No subs. I've been burned too many times as a customer to ever put someone else through that.

Anyway — if that's ever relevant, you've got my number. And the coffee offer still stands.

— Serhan

*Reply "remove" to unsubscribe.*

---

### Email C3 — (Day 14)

**Subject:** Let me know if I can help

Hi [First Name],

Last email from me. Here's the deal — I've been building a network of contractors, K&B stores, and designers in the area. 730+ businesses so far.

If you ever need a referral for something — a good electrician, a plumber, a flooring guy — let me know. I probably know someone. And if you ever need stone work done right, you know where to find me.

That's it. Just trying to be useful.

Have a great week.

— Serhan
[Phone]

*Reply "remove" to unsubscribe.*

---

## Approach D: "The Neighbor" Sequence
**Matches:** Cold Call Approach 4 (Community Builder)  
**Best for:** K&B showrooms, local businesses with physical storefronts  
**Tone:** Warm, community-focused, local pride

### Email D1 — (Day 1)

**Subject:** Local business owner introducing himself

Hi [First Name],

I'm Serhan — I run Advanced Granite Solutions over in Edgewood. We've been here 20 years and honestly, I should have introduced myself a long time ago.

I've been making an effort to get to know more local business owners, especially in the K&B world. I think there's a lot of potential for businesses like ours to support each other — referrals, shared knowledge, that kind of thing.

I'd love to stop by your showroom sometime and see what you've built. I've heard good things.

No agenda. Just a neighbor saying hi.

— Serhan
Advanced Granite Solutions
[Phone]

*Reply "remove" if you'd rather not hear from me.*

---

### Email D2 — (Day 7)

**Subject:** Re: Local business owner introducing himself

Hi [First Name],

Following up — one thing I forgot to mention. We have a fully indoor slab yard that's open anytime. A lot of the local K&B stores and contractors use it as a resource for their clients — bring the homeowner in, let them see the actual stone, and make a confident decision.

It takes the guesswork out of material selection. And honestly, it makes your team look great because the customer isn't arguing about what they ordered.

If you're ever curious, you're welcome to come see the operation. I'll give you the full tour and buy you a coffee.

— Serhan

*Reply "remove" to unsubscribe.*

---

### Email D3 — (Day 18)

**Subject:** Open door policy

Hi [First Name],

Last note from me. I just wanted you to know — our yard is always open to you and your team. Whether it's for a specific project or just to see what's available.

We're at [Address]. I'm there most days. If you ever swing by, ask for Serhan. I'd love to put a face to the name.

Wishing you a strong rest of the year.

— Serhan
[Phone]

*Reply "remove" to unsubscribe.*

---

## Approach E: "Straight Shooter" Sequence
**Matches:** Cold Call Approach 5 (Direct Value)  
**Best for:** Busy GCs, project managers, no-BS types who hate long emails  
**Tone:** Concise, respectful, zero fluff

### Email E1 — (Day 1)

**Subject:** Stone fab in your area

[First Name] —

Serhan here. 20-year stone fabrication shop. Everything in-house, no subs.

Two things that might matter to you:
1. Indoor slab yard — your clients pick their exact stone. No "that's not what I ordered" problems.
2. Building a self-serve Pro Portal — your team gets instant quotes without calling anyone.

Not trying to pitch you. Just want to be someone you know when you need stone done right.

Coffee's on me if you're ever in Edgewood.

— Serhan
[Phone]

*Reply "remove" to opt out.*

---

### Email E2 — (Day 7)

**Subject:** Re: Stone fab in your area

[First Name] —

One more thing and then I'll leave you alone:

Every install we do is our own crew. No subcontractors. No "the sub didn't show up" situation. You get the same team, same quality, every time.

If you've got a project coming up that involves countertops, I'd rather earn your business than have you find out the hard way that your current fabricator subs everything out.

— Serhan

*Reply "remove" to opt out.*

---

### Email E3 — (Day 14)

**Subject:** Last one

[First Name] —

This is it from me. Not going to fill your inbox.

If you ever need stone work: [Phone]. 20 years, indoor yard, in-house everything.

Good luck with your projects.

— Serhan

*Reply "remove" to opt out.*

---

## 3. Matching Approaches to Prospect Segments

| Segment | Best Approach | Why |
|---|---|---|
| Established K&B Stores | A (Industry Insider) or D (Neighbor) | They value peer relationships and local community |
| Young/Tech-Savvy Contractors | B (Future Forward) | They respond to innovation and tech talk |
| Small Owner-Operators | C (Real Talk) | They respond to authenticity and shared struggles |
| K&B Showrooms (walk-in range) | D (Neighbor) | Physical proximity = natural connection |
| Busy GCs / Project Managers | E (Straight Shooter) | They hate fluff. Respect their time. |
| Interior Designers | A or B | They value thoughtful, curated relationships |
| Remodelers (MHIC list) | C (Real Talk) or E (Straight Shooter) | Mix of small shops and established companies |
| Cabinet Shops | D (Neighbor) or A (Industry Insider) | Natural referral partners, community focus |

---

## 4. Post-Response Handling

| Response Type | Action |
|---|---|
| **Positive reply** | Serhan follows up personally. Schedule coffee/lunch/yard visit. |
| **"Tell me more"** | Reply conversationally. Do NOT send a one-pager yet — save for 2nd touchpoint. |
| **"Not right now"** | Move to quarterly check-in. Send a holiday/seasonal note. |
| **"Remove" / Unsubscribe** | Remove immediately. Never contact again from any channel. |
| **No response (all 3 emails)** | Wait 90 days. Then try a different approach (e.g., switch from A to D). |
| **Bounce** | Remove from list. Verify email was correct. |

---

## 5. Testing Framework

### Weeks 1-2: Test all 5 approaches

| Approach | Segment Tested | Emails Sent | Open Rate | Reply Rate | Meetings Booked | Notes |
|---|---|---|---|---|---|---|
| A — Industry Insider | | | | | | |
| B — Future Forward | | | | | | |
| C — Real Talk | | | | | | |
| D — The Neighbor | | | | | | |
| E — Straight Shooter | | | | | | |

### After 2 Weeks
- **Keep** the top 2 performers
- **Modify** the #3 approach based on learnings
- **Retire** the bottom 2

---

## ⚠️ Compliance — `STRATEGY_RULES.md` §10 + §13

- ✅ All approaches comply with §13 Owner-to-Owner philosophy
- ✅ Every email reads like a personal note, not marketing copy
- ✅ No slab counts, no price guarantees, no install date promises
- ✅ No financial strength claims, no competitor bashing
- ✅ Unsubscribe option in every email (CAN-SPAM compliant)
- ✅ Every sequence ends with a relationship step, NOT a transaction
