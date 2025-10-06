---
layout: default
permalink: /research/
title: "Research"
---
<link rel="stylesheet" href="{{ '/assets/css/site-overrides.css?v=2' | relative_url }}">

<style>
/* Hide Cayman header/footer */
.page-header{display:none!important}
footer.site-footer{display:none!important}

/* Comfortable width + NO mid-word breaking */
.main-content{max-width:900px;margin:0 auto;padding:0 1rem!important;line-height:1.65}
.main-content, .main-content *{overflow-wrap:normal;word-break:normal;hyphens:auto}

/* Simple sticky nav (same feel as Home) */
.topnav{
  position:sticky;top:0;z-index:20;
  display:flex;flex-wrap:wrap;gap:.4rem .75rem;align-items:center;
  padding:.6rem 1rem;background:#fff;border-bottom:1px solid #e5e5e5
}
.topnav a{
  white-space:nowrap;overflow-wrap:normal;word-break:normal;
  text-decoration:none;font-weight:600;color:#1f2328
}
.topnav a:hover{text-decoration:underline}
.topnav .active{color:#0366d6}

/* Page typography — rem so global scaling applies */
.page-body{font-size:1rem;line-height:1.65}
.page-body h1{font-size:1.35rem;margin:.9rem 0 .4rem}
.page-body h2{font-size:1.2rem;margin:.85rem 0 .4rem}
.page-body h3{font-size:1.05rem;margin:.8rem 0 .35rem}
.page-body ul, .page-body ol{margin:.4rem 0 .8rem 1.2rem}
.page-body li{margin:.25rem 0}
.page-body hr{margin:1rem 0;border:0;border-top:1px solid #e5e5e5}
</style>

<nav class="topnav">
  <a href="/">Home</a>
  <a class="active" href="/research/">Research</a>
  <a href="/teaching/">Teaching</a>
  <a href="/group/">Group</a>
  <a href="/blog/">Readings</a>
</nav>

<div class="page-body" markdown="1">

# Funding

- **G.1.** *[NSF PDaSP Track 2: Holistic Privacy-Preserving Collaborative Data Sharing for Intelligent Transportation](https://nsf.elsevierpure.com/en/projects/pdasp-track-2-a-holistic-privacy-preserving-collaborative-data-sh-3)*  
  **NSF #2452747**, Co-PI (ISU PI)  
  **Funding:** $1.2M total ($250K ISU share)  
  **Duration:** Oct 2025 – Oct 2028  
  **Lead PI:** Yuan Hong (UConn)  
  **Co-PIs:** Xuegang Ban (UW), Binghui Wang (IIT)  
  This project focuses on **building a holistic system for privately sharing naturalistic driving data**, enabling collaborative research while preserving user privacy. We are very grateful to **NSF** and **FHWA/DOT** for their generous support!  

</div>

<hr>

<div class="page-body" markdown="1">

# Refereed Publications

1. Qin Yang, Nicholas Stout, **Meisam Mohammady (Corresponding author)**, Han Wang, Ayesha Samreen, Christopher J Quinn, Yan Yan, Ashish Kundu, Yuan Hong.  
   *PLRV-O: Advancing Differentially Private Deep Learning via Privacy Loss Random Variable Optimization.*  
   **Proceedings of the 2025 ACM Conference on Computer and Communications Security (CCS '25).**  *Acceptance rate: TBD*.

2. Thirasara Ariyarathna, Salil Kanhere, Hye-Young (Helen) Paik, **Meisam Mohammady**.  
   *FedSIG: Privacy-Preserving Federated Recommendation via Synthetic Interaction Generation.*  
   **Proceedings of the 28th International Symposium on Research in Attacks, Intrusions and Defenses (RAID '25).**  *Acceptance rate: TBD*.

3. M.A.P. Chamikara, Seung Ick Jang, Ian Oppermann, Dongxi Liu, Musotto Roberto, Sushmita Ruj, Arindam Pal, **Meisam Mohammady**, Seyit Camtepe, Sylvia Young, Chris Dorrian, Nasir David.  
   *Towards Usability of Data with Privacy: A Unified Framework for Privacy-Preserving Data Sharing with High Utility.*  
   **Proceedings of the 20th ACM Asia Conference on Computer and Communications Security (ASIACCS '25).**  *Acceptance rate: TBD*.

4. Shuya Feng, **Meisam Mohammady**, Hanbin Hong, Shenao Yan, Ashish Kundu, Binghui Wang, Yuan Hong.  
   *Harmonizing Differential Privacy Mechanisms for Federated Learning: Boosting Accuracy and Convergence.*  
   **Proceedings of the Fifteenth ACM Conference on Data and Application Security and Privacy (CODASPY '25).**  *Acceptance rate: TBD*.

5. Gnanakumar Thedchanamoorthy, Michael Bewong, **Meisam Mohammady**, Tanveer Zia, Md Zahidul Islam.  
   *UD-LDP: A Technique for Optimally Catalyzing User Driven Local Differential Privacy.*  
   **Future Generation Computer Systems (FGCS '25).**  *Impact Factor: 7.187*.

6. Mengyuan Zhang, Yosr Jarraya, Makan Pourzandi, **Meisam Mohammady**, Shangyu Xie, Yuan Hong, Lingyu Wang, Mourad Debbabi.  
   *Utility Optimized Differential Privacy System.*  
   **U.S. Patent No. 12321478.**

7. Shuya Feng\*, **Meisam Mohammady\***, Han Wang, Xiaochen Li, Zhan Qin, Yuan Hong.  
   *DPI: Ensuring Strict Differential Privacy for Infinite Data Streaming.*  
   **45th IEEE Symposium on Security and Privacy (S&P '24).**  *Acceptance rate: 202/1389 ≈ 14.5%*.  \*Equal Contribution.

8. Gnanakumar Thedchanamoorthy, Michael Bewong, **Meisam Mohammady**, Tanveer Zia, Md Zahidul Islam.  
   *FUD-LDP: Fully User Driven Local Differential Privacy.*  
   **WISE '24.**  *Acceptance rate: TBD*.

9. Thirasara Ariyarathna, **Meisam Mohammady**, Hye-Young (Helen) Paik, Salil S. Kanhere.  
   *VLIA: Navigating Shadows with Proximity for Highly Accurate Visited Location Inference Attack against Federated Recommendation Models.*  
   **ASIACCS '24.**  *Acceptance rate: 55/284 ≈ 19%*.

10. Thirasara Ariyarathna, **Meisam Mohammady**, Hye-Young (Helen) Paik, Salil S. Kanhere.  
    *DeepSneak: User GPS Trajectory Reconstruction from Federated Route Recommendation Models.*  
    **ACM TIST '24.**  *Impact Factor: 10.489*.

11. Kane Walter, **Meisam Mohammady**, Surya Nepal, Salil S. Kanhere.  
    *Mitigating Distributed Backdoor Attack in Federated Learning Through Mode Connectivity.*  
    **ASIACCS '24.**  *Acceptance rate: 19%*.

12. G. Thedchanamoorthy, M. Bewong, **M. Mohammady**, T. A. Zia, M. Z. Islam.  
    *Optimization of UD-LDP with Statistical Prior Knowledge.*  
    **PerCom 2024.**  *Acceptance rate: TBD*.

13. Kane Walter, **Meisam Mohammady**, Surya Nepal, Salil S. Kanhere.  
    *Optimally Mitigating Backdoor Attacks in Federated Learning.*  
    **IEEE TDSC '23.**  *Impact Factor: 7.3*.

14. **Meisam Mohammady**, Reza Arablouei.  
    *Efficient Privacy-Preserved Processing of Multimodal Data for Vehicular Traffic Analysis.*  
    **VehicleSec '23.**

15. **Meisam Mohammady**, Momen Oqaily, Lingyu Wang, Yuan Hong, Habib Louafi, Makan Pourzandi, Mourad Debbabi.  
    *A Multi-view Approach to Preserve Both Privacy and Utility in Network Trace Anonymization.*  
    **ACM TOPS, 2020.**

16. Shangyu Xie, **Meisam Mohammady**, Han Wang, Yuan Hong, Lingyu Wang, Jaideep Vaidya.  
    *Generalizing Prefix-Preserving Data Outsourcing: Ensuring both Privacy and Utility.*  
    **IEEE TKDE, 2020.**

17. **Meisam Mohammady**, Shangyu Xie, Yuan Hong, Mengyuan Zhang, Lingyu Wang, Makan Pourzandi, Mourad Debbabi.  
    *R²DP: A Universal and Automated Approach to Optimizing the Randomization Mechanisms of Differential Privacy.*  
    **ACM CCS '20.**  *Acceptance rate: 11%*.

18. Momen Oqaily, Yosr Jarraya, **Meisam Mohammady**, Suryadipta Majumdar, Lingyu Wang, Makan Pourzandi, Mourad Debbabi.  
    *SegGuard: Protecting Audit Data Using Segmentation-based Anonymization for Multi-tenant Cloud Auditing.*  
    **IEEE TDSC, 2019.**

19. Bingyu Liu, Shangyu Xie, Han Wang, Yuan Hong, Xuegang Ban, **Meisam Mohammady**.  
    *VTDP: Privately Sanitizing Fine-grained Vehicle Trajectory Data with Boosted Utility.*  
    **IEEE TDSC, 2019.**

20. Suryadipta Majumdar, Azadeh Tabiban, **Meisam Mohammady**, Alaa Oqaily, Yosr Jarraya, Makan Pourzandi, Lingyu Wang, Mourad Debbabi.  
    *Proactivizer: Transforming Existing Verification Tools into Efficient Solutions for Runtime Security Enforcement.*  
    **ESORICS '19.**  *Acceptance rate: 19.5%*.

21. Suryadipta Majumdar, Azadeh Tabiban, **Meisam Mohammady**, Alaa Oqaily, Yosr Jarraya, Makan Pourzandi, Lingyu Wang, Mourad Debbabi.  
    *Multi-Level Proactive Security Auditing for Clouds.*  
    **IEEE DSC 2019.**

22. **Meisam Mohammady**, Lingyu Wang, Yuan Hong, Habib Louafi, Makan Pourzandi, Mourad Debbabi.  
    *Preserving Both Privacy and Utility in Network Trace Anonymization.*  
    **ACM CCS '18.**  *Acceptance rate: 16.5%*.

23. Jerome Le Ny, **Meisam Mohammady**.  
    *Differentially Private MIMO Filtering for Event Streams.*  
    **IEEE Transactions on Automatic Control, 2018.**  *Impact Factor: 5.625*.

24. Jerome Le Ny, **Meisam Mohammady**.  
    *Differentially Private MIMO Filtering for Event Streams and Spatio-temporal Monitoring.*  
    **CDC '14.**  *H-index: 118*.

</div>

<hr>

<div class="page-body" markdown="1">

## Invited Talks

1. *Preserving Both Privacy and Utility in Network Trace Anonymization* — UQAM, Montréal, Canada — **Nov 22, 2019**  
2. *R²DP: Optimizing Randomization Mechanisms for Differential Privacy* — UQAM, Montréal, Canada — **Nov 22, 2019**  
3. *DP-IDS: Differentially Private Intrusion Detection System* — SPF Seminars, Montréal, Canada — **May 10, 2019**  
4. *R²DP: Optimizing Randomization Mechanisms for DP* — CSIRO Data61 Reading Seminar, Sydney — **Nov 22, 2020**  
5. *Novel Approaches to Preserving Utility in PETs* — DPI RD Seminar, Chicago — **Sep 9, 2021**

</div>

<hr>

<div class="page-body" markdown="1">

## Demonstrations

1. *Network Trace Anonymization* — Ericsson Security Research, Montréal — **May 2018**  
2. *R²DP: Optimizing Randomization Mechanisms for DP* — Ericsson Security Research — **Oct 2019**  
3. *DPOAD: Differentially Private Outsourcing of Anomaly Detection* — Ericsson Security Research — **Oct 2020**

</div>
