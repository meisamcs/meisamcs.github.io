---


---

<h1 id="rebuttal-for-popets-2025.4-submission-221">Rebuttal for PoPETs 2025.4 Submission #221:</h1>
<p><strong>Lap2: Advancing Laplace DP-SGD with Inverse Clipping and Norm-Adjusted Perturbation</strong></p>
<p>We thank all reviewers for their thoughtful feedback. Below we address each concern grouped by reviewer. For clarity, we begin with a summary of major clarifications and corrections.</p>
<hr>
<h2 id="🔧-summary-of-revisions-and-clarifications">🔧 Summary of Revisions and Clarifications</h2>
<ul>
<li>
<p>Clarified <strong>inverse clipping assumptions</strong> and fixed the edge case regarding zero gradients (Definition 9).</p>
</li>
<li>
<p>Added discussion on <strong>directional bias</strong> introduced by inverse clipping and why it is acceptable under Lap2.</p>
</li>
<li>
<p>Revised <strong>Figure 5</strong> and extended its explanation to clearly show the privacy wall effect and role of Rényi divergence.</p>
</li>
<li>
<p>Expanded <strong>hyperparameter tuning explanation</strong> and included clarification on the B=C/5 heuristic.</p>
</li>
<li>
<p>Updated figures and added <strong>dispersion/error bars</strong> and <strong>repetitions</strong>, including smaller epsilon runs.</p>
</li>
<li>
<p>Corrected notation, forward references, and missing variable definitions.</p>
</li>
<li>
<p>Strengthened justification for <strong>ViT results on CIFAR-10</strong>, referencing additional baselines and pretraining techniques.</p>
</li>
</ul>
<hr>
<h2 id="🧑‍⚖️-review-221a">🧑‍⚖️ Review #221A</h2>
<p><strong>Q: Unfair comparison—Gaussian noise multiplier should be optimized independently.</strong></p>
<p><strong>A:</strong> We agree and have re-run all Gaussian baselines with independently optimized noise multipliers. Updated results are reflected in Table X and now use DP-NormSearch rather than fixed mapping to Laplace b. Lap2 still outperforms across tasks.</p>
<p><strong>Q: Lap2 introduces hyperparameters B, α—how are they tuned?</strong></p>
<p><strong>A:</strong> We now clarify that B is heuristically tied to clipping norm ( C ) (e.g., ( B = C/5 )), and provide tuning ranges and grid steps used. We acknowledge that DP hyperparameter tuning is an open challenge and discuss this in Section Y.</p>
<p><strong>Q: Floored gradients and division by zero.</strong></p>
<p><strong>A:</strong> This is an important point. We correct Definition 9 to explicitly exclude zero-valued components from inverse adjustment. We also add a numerical stability clause to handle near-zero values in practice.</p>
<p><strong>Q: ViT accuracy seems implausible for CIFAR-10.</strong></p>
<p><strong>A:</strong> Our ViT model is pretrained on ImageNet and fine-tuned on CIFAR-10, which aligns with recent transfer learning practices. We now clearly state this in Section Z and compare to transfer-learning baselines.</p>
<hr>
<h2 id="🧑‍⚖️-review-221b">🧑‍⚖️ Review #221B</h2>
<p><strong>Q: Inverse clipping introduces directional bias—why is this acceptable?</strong></p>
<p><strong>A:</strong> While inverse clipping alters direction, the added Laplace noise is isotropic. We show empirically that this bias does not degrade performance, and we now expand our discussion in Section X to analyze its impact.</p>
<p><strong>Q: Forward reference from Definition 6 to Definition 8.</strong></p>
<p><strong>A:</strong> We have reordered definitions and now define inverse clipping first to improve clarity.</p>
<p><strong>Q: Concern about hyperparameter complexity in Lap2 vs. community familiarity with Gaussian DP-SGD.</strong></p>
<p><strong>A:</strong> This is a valid concern. We clarify that while Lap2 introduces new hyperparameters, they are stable across runs and do not require more tuning effort than clipping norm in standard DP-SGD.</p>
<p><strong>Q: Gap in Figure 8c—baseline tuning unclear.</strong></p>
<p><strong>A:</strong> We now describe baseline tuning ranges in detail and include variance/error bars over multiple seeds. See Section Y and Appendix Table A.1.</p>
<hr>
<h2 id="🧑‍⚖️-review-221c">🧑‍⚖️ Review #221C</h2>
<p><strong>Q: Notational inconsistencies and undefined variables.</strong></p>
<p><strong>A:</strong> Thank you. We fixed all notational issues (lines 183, 190, 223, etc.) and clearly define ( G ), ( T ), ( \Gamma ), and others in Section 2 and Appendix.</p>
<p><strong>Q: Clarity on problem setup, retained volumes, and Figure 2 interpretation.</strong></p>
<p><strong>A:</strong> We revised Section 3 to clarify the motivation behind volume comparisons and added intuition for Figure 2. We include volume estimates to show how ℓ1 clipping discards more mass.</p>
<p><strong>Q: Limited epsilon values and lack of dispersion indicators.</strong></p>
<p><strong>A:</strong> We now include additional ε values (e.g., 0.1, 0.5), and add standard deviation/error bars in Figures 8–9. Each experiment is repeated 5×.</p>
<hr>
<h2 id="🧑‍⚖️-review-221d">🧑‍⚖️ Review #221D</h2>
<p><strong>Q: Theorem 4 and the claim that inverse clipping followed by ℓ2 clipping guarantees all marginals ≥ B.</strong></p>
<p><strong>A:</strong> We appreciate this deep reading. The claim was incorrectly stated. You’re right—after ℓ2 clipping, some marginals can fall below B. We revise Theorem 4 to reflect that inverse clipping establishes a precondition for upper-bounding ℓ1 norm, but not post-clipping marginals. Privacy is ensured by upper-bounding ℓ1 norm via conservative analysis, not marginal enforcement. We provide an amended proof and updated privacy bounds in Appendix B.</p>
<p><strong>Q: Concern that Lap2 may not actually preserve DP.</strong></p>
<p><strong>A:</strong> Our revised proof uses conservative bounds and avoids relying on per-coordinate guarantees. We also compare Lap2’s accounting against known bounds for ℓ1 DP mechanisms and show tight agreement in Figure X. We welcome further feedback if any part remains unclear.</p>
<hr>
<p>We appreciate the reviewers’ detailed feedback and hope that our clarifications and revisions address the concerns raised. We are committed to further refining Lap2 and contributing to practical, tunable DP mechanisms beyond the Gaussian baseline.# Rebuttal for PoPETs 2025.4 Submission #221:</p>
<p><strong>Lap2: Advancing Laplace DP-SGD with Inverse Clipping and Norm-Adjusted Perturbation</strong></p>
<p>We thank all reviewers for their thoughtful feedback. Below we address each concern grouped by reviewer. For clarity, we begin with a summary of major clarifications and corrections.</p>
<hr>
<h2 id="🔧-summary-of-revisions-and-clarifications-1">🔧 Summary of Revisions and Clarifications</h2>
<ul>
<li>
<p>Clarified <strong>inverse clipping assumptions</strong> and fixed the edge case regarding zero gradients (Definition 9).</p>
</li>
<li>
<p>Added discussion on <strong>directional bias</strong> introduced by inverse clipping and why it is acceptable under Lap2.</p>
</li>
<li>
<p>Revised <strong>Figure 5</strong> and extended its explanation to clearly show the privacy wall effect and role of Rényi divergence.</p>
</li>
<li>
<p>Expanded <strong>hyperparameter tuning explanation</strong> and included clarification on the B=C/5 heuristic.</p>
</li>
<li>
<p>Updated figures and added <strong>dispersion/error bars</strong> and <strong>repetitions</strong>, including smaller epsilon runs.</p>
</li>
<li>
<p>Corrected notation, forward references, and missing variable definitions.</p>
</li>
<li>
<p>Strengthened justification for <strong>ViT results on CIFAR-10</strong>, referencing additional baselines and pretraining techniques.</p>
</li>
</ul>
<hr>
<h2 id="🧑‍⚖️-review-221a-1">🧑‍⚖️ Review #221A</h2>
<p><strong>Q: Unfair comparison—Gaussian noise multiplier should be optimized independently.</strong></p>
<p><strong>A:</strong> We agree and have re-run all Gaussian baselines with independently optimized noise multipliers. Updated results are reflected in Table X and now use DP-NormSearch rather than fixed mapping to Laplace b. Lap2 still outperforms across tasks.</p>
<p><strong>Q: Lap2 introduces hyperparameters B, α—how are they tuned?</strong></p>
<p><strong>A:</strong> We now clarify that B is heuristically tied to clipping norm ( C ) (e.g., ( B = C/5 )), and provide tuning ranges and grid steps used. We acknowledge that DP hyperparameter tuning is an open challenge and discuss this in Section Y.</p>
<p><strong>Q: Floored gradients and division by zero.</strong></p>
<p><strong>A:</strong> This is an important point. We correct Definition 9 to explicitly exclude zero-valued components from inverse adjustment. We also add a numerical stability clause to handle near-zero values in practice.</p>
<p><strong>Q: ViT accuracy seems implausible for CIFAR-10.</strong></p>
<p><strong>A:</strong> Our ViT model is pretrained on ImageNet and fine-tuned on CIFAR-10, which aligns with recent transfer learning practices. We now clearly state this in Section Z and compare to transfer-learning baselines.</p>
<hr>
<h2 id="🧑‍⚖️-review-221b-1">🧑‍⚖️ Review #221B</h2>
<p><strong>Q: Inverse clipping introduces directional bias—why is this acceptable?</strong></p>
<p><strong>A:</strong> While inverse clipping alters direction, the added Laplace noise is isotropic. We show empirically that this bias does not degrade performance, and we now expand our discussion in Section X to analyze its impact.</p>
<p><strong>Q: Forward reference from Definition 6 to Definition 8.</strong></p>
<p><strong>A:</strong> We have reordered definitions and now define inverse clipping first to improve clarity.</p>
<p><strong>Q: Concern about hyperparameter complexity in Lap2 vs. community familiarity with Gaussian DP-SGD.</strong></p>
<p><strong>A:</strong> This is a valid concern. We clarify that while Lap2 introduces new hyperparameters, they are stable across runs and do not require more tuning effort than clipping norm in standard DP-SGD.</p>
<p><strong>Q: Gap in Figure 8c—baseline tuning unclear.</strong></p>
<p><strong>A:</strong> We now describe baseline tuning ranges in detail and include variance/error bars over multiple seeds. See Section Y and Appendix Table A.1.</p>
<hr>
<h2 id="🧑‍⚖️-review-221c-1">🧑‍⚖️ Review #221C</h2>
<p><strong>Q: Notational inconsistencies and undefined variables.</strong></p>
<p><strong>A:</strong> Thank you. We fixed all notational issues (lines 183, 190, 223, etc.) and clearly define ( G ), ( T ), ( \Gamma ), and others in Section 2 and Appendix.</p>
<p><strong>Q: Clarity on problem setup, retained volumes, and Figure 2 interpretation.</strong></p>
<p><strong>A:</strong> We revised Section 3 to clarify the motivation behind volume comparisons and added intuition for Figure 2. We include volume estimates to show how ℓ1 clipping discards more mass.</p>
<p><strong>Q: Limited epsilon values and lack of dispersion indicators.</strong></p>
<p><strong>A:</strong> We now include additional ε values (e.g., 0.1, 0.5), and add standard deviation/error bars in Figures 8–9. Each experiment is repeated 5×.</p>
<hr>
<h2 id="🧑‍⚖️-review-221d-1">🧑‍⚖️ Review #221D</h2>
<p><strong>Q: Theorem 4 and the claim that inverse clipping followed by ℓ2 clipping guarantees all marginals ≥ B.</strong></p>
<p><strong>A:</strong> We appreciate this deep reading. The claim was incorrectly stated. You’re right—after ℓ2 clipping, some marginals can fall below B. We revise Theorem 4 to reflect that inverse clipping establishes a precondition for upper-bounding ℓ1 norm, but not post-clipping marginals. Privacy is ensured by upper-bounding ℓ1 norm via conservative analysis, not marginal enforcement. We provide an amended proof and updated privacy bounds in Appendix B.</p>
<p><strong>Q: Concern that Lap2 may not actually preserve DP.</strong></p>
<p><strong>A:</strong> Our revised proof uses conservative bounds and avoids relying on per-coordinate guarantees. We also compare Lap2’s accounting against known bounds for ℓ1 DP mechanisms and show tight agreement in Figure X. We welcome further feedback if any part remains unclear.</p>
<hr>
<p>We appreciate the reviewers’ detailed feedback and hope that our clarifications and revisions address the concerns raised. We are committed to further refining Lap2 and contributing to practical, tunable DP mechanisms beyond the Gaussian baseline.</p>

