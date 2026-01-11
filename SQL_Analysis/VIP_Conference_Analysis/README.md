**Overview**

This project analyzes VIP participation, event assignments, feedback relationships, and hotel reservations for a climate research conference. The goal is to support conference operations by answering practical business questions using SQL. 

All analysis was performed using **SQL**, demonstrating the use of: 
- INNER JOIN
- LEFT JOIN
- SELF JOIN
- Multi-table joins
- Aggregations and filtering

**Business Objective**

Conference organizers need clear insignts into: 
- Which VIPs are presenting and attending events
- Hotel and RSVP logistics
- Peer feedback assignments
- Organizational relationships among VIPs
- Gaps in feedback assignments

  This analysis helps ensure smooth coordination, balanced workloads, and complete participation across events.

**Dataset Description**

The database cosists of **four related tables:**

**vips**
- member_id- Unique VIP identifies
- first_name, last_name
- event - Event the VIP is presenting at
- provied_feedback_to - VIP receiving feedback
- association - Organization the VIP belongs to
- assoc_type- Type of organization
- member_since - Year joined

**events**
- event_id
- event_name
- event_type

**reservations**
- member_id
- hotel
- welcome_rsvp(1=Yes, 0=No)
- dinner_rsvp(1=Yes, 0=No)

**hotels**
- hotel_id
- hotel_name
- address

**Key Analysis & Findings**

**Query 1: VIP Event Participation**

**Question:** Which VIPs are presenting, and at which events? 

**Findings:**

Most VIPs are assigned to panels, with some workshops and keynote speakers. Several VIPs have no assigned event, indicating incomplete scheduling. 

**Query 2: Hotel Reservations & RSVPS**

**Question:** Which VIPS have RSVP'd for welcome and dinner events? 

**Finding:** RSVP participation varies by VIP and hotel, helping organizers identify attendance gaps for social events. 

**Query 3: Feedback Assignments(Self join)**

**Question:** Which hotel has the most VIP reservations? 

**Finding:** Feedback relationships are clearly mapped between VIPs, ensuring peer review coverage across panels and workshops. 

**Query 4: Hotel Demand**

**Question:** Which hotel has the most VIP reservations? 

**Finding:** One hotel(Hotel ID 2) hosts the largest numbers of VIPs, indicating higher demand and potential need for additional cordination. 

**Query 5: Shared Associations**

**Question:** Which VIPs belong to the same organization?

**Finding:** Several VIPs share affiliations  with the same institutions, highlighting networking clusters within the conference. 

**Query 6: Events missing Feedback Assignments**

**Question:** Which events have VIPs assigned but no feedback yet? 

**Finding:** Some workshops and events lack feedback assignments, signaling a need for follow-up to ensure full participation. 

**Skills Demonstrated**
- Relational database analysis
- Complete joins including self-joins
- Translating operational questions into SQL queries
- Data validation and gap identification
- Clean query structuring

**Conclusion**
This project demonstrates how SQL can be used to manage and analyze real-world event logistics. The analysis provides actionable insights for conference planners by identifying participation gaps, feedback relationships, and hotel demand patterns. 

The queries are structured to reflect real analyst workflows and business-driven questioning. 
