## **The NF2 Patient-Led Care Survey_0627_FRversion**

### Section 1: Demographic & Clinical Baseline

1. What is your relationship to NF2?

- I am an NF2 patient.
- I am a parent, spouse, or primary caregiver of an NF2 patient.

> **Why this question matters:** *User segmentation:*
> Separates patients from caregivers. Caregivers are often the primary record-keepers, so both stay in scope for a timeline/summary tool — but splitting them keeps the personas clean and reveals who actually assembles the medical history.


2. What is your/the patient's age range?

- < 18
- 18–25
- 26–35
- 36–45
- 46–55
- 55+

> **Why this question matters:** *Accessibility Segments:* 
> Older generations experience a higher compounding of native age-related vision/motor degradation alongside progressive NF2 schwannomas. This maps out your primary, secondary, and tertiary accessibility personas. (TO XUAN: THIS OPINION BASE ON UX DESIGN)


3. Where do you currently reside?

- China mainland
- HK/Macao/Taiwan
- North America (US / Canada)
- Europe / UK
- Southeast Asia (Malaysia, Singapore, etc.)
- Other regions

> **Why this question matters:** *Ecosystem Choice:* 
> Residents in Western countries primarily use web applications or standalone iOS/Android apps linked to regional medical portals. This dictates your digital deployment platform.

4. How long has it been since the initial NF2 diagnosis?

- < 1 year
- 1–3 years
- 3–5 years
- 5–10 years
- 10+ years

> **Why this question matters:** *Persona / onboarding state:* 
> Diagnosis tenure segments the cohort: newly-diagnosed users (panic, info-hunting) need gentler onboarding and lighter history import; 10+ year veterans arrive with large back-catalogs of scans and tracking fatigue. Shapes default timeline density and the onboarding flow.
> **Shared exploratory (Xuan):** also a preliminary, hypothesis-generating read on the psychosocial curve (acute anxiety vs burnout) — exploratory only, small n, not a validated measure. 

### Section 2: Accessibility & Physical UX (The Design Framework)

5. Which of the following physical or sensory challenges actively impact how you use your phone or computer? (Select all that apply)

- Hearing loss / Profound deafness (I rely heavily on captions, visual alerts, or text)
- Vision issues / Blurriness / Double vision (I struggle with small fonts or low contrast)
- Hand/finger weakness, numbness, or tremors (It’s physically hard to tap small buttons or type)
- Balance / Dizziness / Vestibular issues (Screen motion or fast scrolling triggers nausea)
- None of the above

> **Why this question matters:** *Strict Figma Blueprint:* 
> This defines your design requirements. If 40% select hand weakness, small buttons are an immediate anti-goal. If vestibular issues are prominent, you must ban modern parallax animations from the UI.


### Section 3: Data Tracking & Medical Logistics

6. How do you currently track your NF2 medical history (MRIs, audiograms, surgical history, tumor sizes)?

- Physical paperwork, binders, or printed films
- Manually recording millimeter sizes in personal digital notebooks/spreadsheets (Excel, Notion, Phone Notes)
- Digital health apps or generic patient portals (regional clinic apps)
- I don't track it systematically; records are scattered and I rely mostly on memory or my doctor

> **Why this question matters:** *Validating the Problem:* 
> This proves the necessity of your app. If a large segment uses manual notebooks or scattered papers, it confirms that existing health products possess a severe UX failure rate for multi-tumor, rare diseases.

7. When a NEW or worsening symptom appears (e.g., sudden tinnitus, new numbness), what is your VERY FIRST reaction?

- Search online platforms immediately (Google, Wikipedia, etc.)
- Ask for real-world advice in patient community groups (Facebook Groups, Reddit, WhatsApp)
- Review and compare past MRI text reports to see if it aligns with known tumors
- Immediately book an appointment or message my attending physician
- Log/document it and wait quietly to observe if it persists


> **Why this question matters:** *Feature Architecture:* 
> This establishes your home screen architecture. If their instinct is to view past MRIs, the home screen needs a prominent "Compare My Last Scan" button. If they turn to community advice, a secure peer-interaction hub must be easily accessible.

### Section 4: Doctor Communication & Community

8. When visiting a NEW specialist or seeking cross-border care, what is your single biggest friction point in explaining your medical history?

- Stacks of historical MRIs and records are too fragmented; it's hard to highlight key progression points quickly
- Language barriers and translating complex medical jargon accurately
- Consultation time is too short (<10 mins) for the doctor to review my massive pile of history
- It is highly difficult to clearly explain the chronological timeline of my subjective symptoms, past surgeries, and drug trials
- I rarely face issues explaining my history

> **Why this question matters:** *Dashboard / export layout:* 
> Defines the Summary screen. If short consultation time is the top friction, the export must be a high-density, single-page summary a doctor can scan in 60 seconds.
> **Shared exploratory (Xuan):** the communication-burden data doubles as preliminary QoL signal on fragmented cross-border care — exploratory only, not validated.

9. What is the biggest limitation of the current platforms you use to connect with the NF2 community (Facebook, Reddit, WhatsApp, etc.)?

- Information flows too fast; messages are messy, disorganized, and impossible to search systematically
- The continuous influx of negative medical cases or anxiety in the chat can feel emotionally overwhelming
- Lack of privacy; I don't want my private symptom questions tied directly to my personal social media profile
- The medical or drug advice shared by peers often feels unverified or conflicting, making it hard to trust

> **Why this question matters:** *Community guardrails:* 
> Reveals whether the design needs info-overload filters, anonymous question pools, or moderation to protect user well-being.
> **Shared exploratory (Xuan):** also a preliminary read on how community interaction drives psychological fatigue (anxiety contagion) — exploratory only, small n, not validated.


### Section 5: Feature Value Ranking

10. We are considering building the features below and want to focus on the few that matter most. If your launch version could include only TWO of these, which would you choose? (Select up to 2)

- **AI Scan Parser:** Automatically parsing text-based MRI reports to generate a clean, visual chart of tumor size trends
- **Unified Disease Timeline:** Interlinking sudden symptoms, surgical histories, drug logs, and scan intervals into a continuous graphic timeline
- **Doctor-Ready Summary:** Summarizing thick files into a concise, 1-page dashboard (with a bilingual toggle) for quick physician hand-off
- **Plain-Language Research Library:** Translating dense clinical trial papers or cutting-edge target therapy updates into patient-friendly language

> **Why this question matters:** *MVP prioritization (not discovery):* 
> These are candidate features we already scoped — this question forces a ranking so Week 4 builds only the top two. It is also the adjudicator for the "research library" debate: if it lands in the top 2, reconsider; if not, it stays cut. Let the data decide, not assumption.


11. (Optional) We are recruiting 5-8 participants for a deeper, anonymous online interview (30 mins, voice-only, strict privacy) to guide our Figma design phase. If you are open to helping, please leave your contact info (Email / WhatsApp):

## Survey for Chinese

NF2 患者全周期自主健康管理状况调查问卷

NF2患者终其一生都处在“动态管理”的状态——报告存于不同医院系统，身体也时有不测。症状-决策-就医-追踪，每个环节的信息都散落各处，导致反复低效沟通与决策焦虑。本研究通过问卷与访谈，挖掘患者自主管理的真实行为与痛点，为设计适配真实使用场景的数字化工具提供依据。


1. 您与NF2（神经纤维瘤病2型）的关系是? *
- 我是NF2患者
- 我是NF2患者的家属或照顾者

> 本题价值（用户分层）：
> 区分患者与家属。家属常常才是真正整理病历的人，因此时间线/摘要工具对两者都适用——分开统计是为了保持用户画像纯净，看清"谁在整理病史"。
> （已定：放弃"家属用电脑、患者用手机"的设备假设——在中国大陆用户基本都在手机上完成，此假设证据不足。与英文版统一为"用户分层"口径。）

2. 您或患者的年龄范围是? *
- 18–25
- 26–35
- 36–45
- 46–55
- 55+

> 本题价值（Accessibility Segments）： 评估老龄群体在自身生理机能退化的同时，叠加NF2症状的双重挑战。它直接决定你在无障碍设计（大字体、高对比度）上的极限阈值。

3. 您目前常居的地区是? *
- 中国大陆
- 港澳台地区
- 北美（美国 / 加拿大）
- 欧洲 / 英国
- 东南亚（马来西亚、新加坡等）
- 其他地区

> 本题价值（生态 / 跨境就医）： 选项与英文版保持一致，便于跨语言比对。区分大陆与海外群体，主要用于了解跨境/跨院就医的比例，以及"医生交接摘要"是否需要中英双语切换——而非决定具体技术平台（小程序 vs App），该部分本次 UX 设计不涉及。

4. 确诊NF2至今有多长时间? *
- < 1 年 
- 1–3 年
- 3–5 年
- 5–10 年
- 10+ 年
> 本题价值（用户画像 / 引导状态）： 确诊时长用于给用户分层——确诊1-3年的患者多处于急性应激、信息恐慌期，需要更温和的引导和更轻的病史导入；10年以上的"老患者"则带着大量既往影像和"追踪疲劳"。这决定时间线默认密度与 onboarding 流程。
> 🔁 共享探索题（Xuan）： 同时作为心理社会曲线（急性焦虑 vs 倦怠）的初步、启发性信号——仅为探索性，样本量小，非经验证的量表。

5. 以下哪些身体或感官障碍会影响您使用手机/电脑?（可多选） *
□ 听力受损/全聋（高度依赖字幕、视觉提醒或文字交流）
□ 视力障碍/模糊/重影（看小字非常吃力，需要高对比度）
□ 肢体/手指无力、麻木、震颤（难以精准点击屏幕上的小按钮或打字）
□ 眩晕/平衡障碍/前庭功能受损（屏幕滑动过快、动态特效容易诱发恶心）
□ 以上皆无
> 本题价值（Strict Figma Blueprint）： 核心UI参数来源。如果有超过30%的人存在手指震颤，按钮触控面积必须大于48x48dp；若眩晕比例高，UI设计中必须一律禁止视差滚动和复杂的动效。

6. 您目前如何记录和管理自己的NF2病史（如MRI、听力图、手术史、肿瘤大小波动等）? *
- 纸质病历、文件夹或打印的胶片袋
- 在个人电子笔记或表格中手动记录毫米大小（如Excel、Notion、微信收藏、备忘录）
- 通用的数字健康软件或医院自身的官方平台
- 没有系统记录，档案很分散，主要靠记忆或听医生的

> 本题价值（Validating the Problem）： 确立产品开发的真实必要性。如果绝大多数人仍在使用极其低效的纸质或手动表格处理高精度的毫米数据，即证明市场现存工具在罕见病垂直领域完全失效。

7. 当出现新的或加重的症状时（如突发耳鸣、新的肢体麻木），您的第一反应通常是? *
- 立即在网络搜索引擎上查找(百度、知乎等)
- 立即去患者群里向群友咨询（微信群、QQ群等）
- 翻看并对比以前的 MRI 报告，看是否与已知的肿瘤位置/大小对应
- 立即预约或联系自己的主治医生
- 记录下来并观察一段时间，看症状是否会自行缓解

> 本题价值（Feature Architecture）： 决定产品主界面的“第一功能优先级”。如果患者习惯去群里咨询，产品需要内建一个安全的互动板块；如果倾向于翻看既往报告，首页第一焦点应当是“扫描/比对MRI”。


8. 当就诊新医生或寻求跨国/跨院医疗专家咨询时，您沟通病史的最大痛点是? *

- 历史MRI和病历太零散，很难在短时间内向医生呈现核心进展 
- 语言障碍，难以准确翻译复杂的医学专业术语（如中英互译）
- 门诊时间太短（不足10分钟），医生根本来不及看完我厚厚的历史资料
- 很难清晰表达主观症状、既往手术、药物试验在时间线上的先后因果关系
- 几乎没有遇到过沟通障碍
> 本题价值（导出 / 仪表盘排版）： 决定"摘要"界面。如果"门诊时间太短"是首要痛点，导出页必须是高密度、单页、医生 60 秒可读完的摘要。
> 🔁 共享探索题（Xuan）： 沟通负担数据同时作为"碎片化跨境就医"对生活质量影响的初步信号——仅为探索性，非经验证。

9. 您目前在患者社群（微信群等）获取或交流信息时，最大的局限性是? *
- 信息流转太快，内容杂乱无章，难以系统性搜索和沉淀
- 群里持续涌入的负面病例或焦虑情绪，有时会让我感到心理负担过重
- 缺乏隐私保护，不想把敏感的症状提问和个人微信账号完全绑定
- 群友分享的医疗或用药建议往往未经证实或相互冲突，难以判断真伪
> 本题价值（社群防护机制）： 揭示设计是否需要信息防过载过滤、匿名提问池或内容审核来保护用户心理健康。
> 🔁 共享探索题（Xuan）： 同时初步反映社群互动如何造成心理消耗（焦虑传染）——仅为探索性，样本量小，非经验证。

10. 以下是我们正在考虑开发的功能。如果首发版本只能保留其中两项，您最希望保留哪两项?（最多选2项） *
- AI报告解析: 自动识别文本MRI报告，生成清晰的肿瘤大小/毫米趋势图表 *
- 多维疾病时间线: 将突发症状、手术史、用药记录和复查时间串联成一条连续的直观图表
- 出诊交接仪表盘: 将厚重的病历浓缩成一页精简的报告（支持中英双语切换），方便快速向新医生出示
- 通俗前沿文献库: 将晦涩的国内外临床试验、前沿靶向药（如贝伐珠单抗）进展翻译并提炼为通俗语言
> 本题价值（MVP 优先级排序，非功能发掘）： 这些是已经定下的候选功能，本题强制排序，让 Week 4 只做票数最高的两项。它同时是"前沿文献库"去留的裁决器：若进入前二则重新考虑，否则维持砍掉。让数据决定，而非假设。

11. （可选）我们正在征集 5-8 位患者进行深度匿名线上访谈（约30分钟，仅语音，严守隐私）以指导后续的产品原型设计。若您愿意提供帮助，请留下您的联系方式（微信/邮箱/手机号）: *
