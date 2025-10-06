---
layout: default
permalink: /
title: ""
---
<link rel="stylesheet" href="{{ '/assets/css/site-overrides.css?v=2' | relative_url }}">

<style>
/* Hide Cayman header/footer; comfy width */
footer.site-footer{display:none!important}
.page-header{display:none!important}
.main-content{max-width:900px;margin:0 auto;padding:0 1rem!important;line-height:1.65}

/* No mid-word breaks */
.main-content,.main-content *{overflow-wrap:normal;word-break:normal;hyphens:auto}

/* TOP NAV: wraps cleanly on mobile */
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

/* Header row: image + compact contact */
.header-row{display:flex;align-items:flex-start;gap:12px;margin:10px 0 16px;flex-wrap:nowrap}
.avatar{
  width:clamp(80px,18vw,130px);
  height:clamp(80px,18vw,130px);
  border-radius:50%;object-fit:cover;border:3px solid #e5e5e5
}
.contact{font-size:.85rem;line-height:1.35;color:#333;max-width:420px}
.contact a{color:#0366d6;text-decoration:none}
.contact a:hover{text-decoration:underline}

/* Page body (use rem so global scaling applies) */
.page-body{font-size:1rem;line-height:1.65}
.page-body h2{font-size:1.2rem;margin-top:1.1em}
.page-body ul{margin:.4rem 0 .8rem 1.2rem}

/* Extra mobile tweaks */
@media (max-width:560px){
  .topnav{gap:.3rem .6rem;padding:.5rem .75rem}
  .header-row{flex-wrap:wrap}
  .contact{flex:1 1 100%;font-size:.8rem}
}
</style>

<nav class="topnav">
  <a class="active" href="/">Home</a>
  <a href="/research/">Research</a>
  <a href="/teaching/">Teaching</a>
  <a href="/group/">Group</a>
  <a href="/blog/">Readings</a>
</nav>

<!-- Header with image + compact signature aligned right -->
<div class="header-row">
  <img class="avatar" src="{{ '/meisam.png?v=3' | relative_url }}" alt="Meisam Mohammady">
  <div class="contact">
    <strong>Contact</strong><br>
    2434 Osborn Dr · Dept. of Computer Science · Iowa State University · Ames, IA 50011 USA<br>
    <strong>Office:</strong> 232 Atanasoff Hall ·
    <strong>Email:</strong> <a href="mailto:meisam@iastate.edu">meisam@iastate.edu</a><br>
    <strong>Affiliation:</strong> Responsible Computing Lab, Dept. of Computer Science, Iowa State University (ISU)<br>
    <span style="color:#777;">© {{ site.time | date: "%Y" }} Meisam Mohammady</span>
  </div>
</div>

<div class="page-body" markdown="1">

**Dr. Meisam Mohammady** is an Assistant Professor in the [Department of Computer Science](https://www.cs.iastate.edu) at [Iowa State University](https://www.iastate.edu) (ISU), where his research focuses on developing responsible Machine Learning methods that are **privacy-preserving, adversarially robust, and fair**, leveraging tools such as *Differential Privacy, Learning Theory,* and *Optimization*, with applications in *High Performance Computing (HPC), Federated Learning (FL), Networking, Anomaly Detection,* and *Private Retrieval*. His research has been published in top-tier conferences and journals such as IEEE Symposium on Security and Privacy (**IEEE S&P**), ACM Conference on Computer and Communications Security (**ACM CCS**), ACM Transactions on Intelligent Systems and Technology (**ACM TIST**), IEEE Computer Security Foundations Symposium (**IEEE CSF**), IEEE Transactions on Dependable and Secure Computing (**IEEE TDSC**), ACM Transactions on Privacy and Security (**ACM TOPS**), and IEEE Transactions on Knowledge and Data Engineering (**IEEE TKDE**).

Prior to joining ISU, he was a Research Scientist at [CSIRO](https://www.csiro.au/en/)'s [Data61](https://data61.csiro.au/), Australia's leading digital research network.

👉 [Access my CV here]({{ '/assets/cv/Meisam_Mohammady_CV_2025-10-05.pdf' | relative_url }})

---
I am always looking for **motivated students, visiting scholars/students, and undergraduate researchers**.  
Please email your application materials to Dr. Meisam Mohammady if you are interested in our research.  
Graduate admission information can be found [here](https://www.cs.iastate.edu/computer-science-graduate-admissions).

---

## 🧭 Recent News

**🧪 Groundbreaking Advances in Privacy-Preserving Machine Learning**  
We’re excited to share recent successes from our group in *privacy-preserving deep learning*, featured at top security venues. Our pioneering work on enabling the **Laplace family in DP-SGD** has delivered transformative results:

<ul style="list-style-type:'🔹'; margin-left:1.5em; padding-left:0; margin-top:0.35em;">
  <li style="margin-bottom:0.5em;">
    <em><strong>PLRV-O: Advancing Differentially Private Deep Learning via Privacy-Loss Random Variable Optimization</strong></em>, accepted at <strong>ACM CCS 2025</strong>, introduces the <strong>first task-adaptive</strong> approach that jointly designs noise and clipping parameters for each deep learning task—defined by <em>epochs, batch size, and privacy guarantee</em>. It achieves up to <strong>11% higher accuracy</strong> on ViT/CIFAR-10 and <strong>40% on RoBERTa-Large/SST-2</strong> compared to standard DP-SGD.  
    🏅 Congrats to <strong>Qin, Nicholas, Ayesha</strong>, and all co-authors!
  </li>
  <li>
    <em><strong>Lap₂: Revisiting Laplace DP-SGD for High Dimensions via Majorization Theory</strong></em>, accepted at <strong>IEEE CSF 2026</strong>, shows that Laplace noise can outperform Gaussian in DP-SGD by applying <em>majorization theory</em>, achieving <strong>40–50% accuracy gains</strong> at the same privacy budget compared to standard Laplace approaches.  
    🏅 Congrats to <strong>Qin, Nicholas, Ayesha</strong>, and the team!
  </li>
</ul>

---

**🧩 Private Federated Recommendation**  
<em><strong>FedSIG: Privacy-Preserving Federated Recommendation via Synthetic Interaction Generation</strong></em>, accepted at <strong>RAID 2025</strong>, introduces synthetic interaction generation for privacy-preserving recommendation.  
🏅 Congrats to <strong>Thirasara</strong> and the team!

---

**🚗 NSF Collaborative Grant Awarded**  
Collaborative grant <em><strong>Privacy-Preserving Collaborative Data Sharing for Intelligent Transportation</strong></em> awarded by <strong>NSF PDaSP (2025–2028)</strong> in partnership with <strong>UConn</strong>, <strong>UW</strong>, and <strong>IIT</strong>.

---

**📊 High-Utility Data Sharing Framework**  
<em><strong>Towards Usability of Data with Privacy: A Unified Framework for Privacy-Preserving Data Sharing with High Utility</strong></em>, accepted at <strong>ASIACCS 2025</strong>.  
🏅 Congrats to <strong>Chamikara</strong> and the team!

---

**⚙️ Harmonized Differential Privacy in Federated Learning**  
<em><strong>Harmonizing Differential Privacy Mechanisms for Federated Learning: Boosting Accuracy and Convergence</strong></em>, accepted at <strong>CODASPY 2025</strong>.  
🏅 Congrats to <strong>Shuya</strong> and the team!

---

**🔐 User-Driven Local Differential Privacy**  
<em><strong>UD-LDP: A Technique for Optimally Catalyzing User-Driven Local Differential Privacy</strong></em>, to appear in <strong>FGCS 2025</strong>.  
🏅 Congrats to <strong>Gnana</strong> and collaborators!

---

**💡 Patent Granted**  
<em><strong>Utility-Optimized Differential Privacy System</strong></em> — <strong>U.S. Patent No. 12321478</strong>.  
🏅 Congrats to <strong>Mengyuan</strong> and the team!

---

**📘 Foundational Privacy Study**  
<em><strong>DPI: Ensuring Strict Differential Privacy for Infinite Data Streaming</strong></em>, appeared in <strong>IEEE S&P 2024</strong>.  
🏅 Congrats to <strong>Shuya</strong> and all co-authors!
</div>
