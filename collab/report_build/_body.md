\tableofcontents
\clearpage

# Section 1: Introduction

*Woof! New York* is an interactive web-based narrative visualisation developed in R Shiny to help New York City residents understand how dog ownership, safety, and public infrastructure differ across neighbourhoods. The application is organised as a five-tab story — Introduction, Trends, Infrastructure, Safety, and About — guiding users from a broad overview into three connected questions before concluding with context and data sources.

The visualisation communicates three main findings.

First, **dog bite incidents are not simply explained by the number of dogs living in an area**. Between 2016 and 2023, Queens consistently recorded the highest number of reported dog bites despite not having the highest dog density. Across all boroughs, bite counts also dropped noticeably in 2020 before increasing again and reaching a peak around 2022–2023. This suggests that broader environmental factors, such as neighbourhood characteristics, public spaces, and owner behaviour, may also influence safety outcomes.

Second, **off-leash infrastructure is unevenly distributed across the city**. Approximately two-thirds of residential ZIP-code areas (ZCTAs) do not contain a dedicated dog run, and the mismatch between where dogs live and where facilities exist is particularly visible in the outer boroughs. More precisely, infrastructure has not kept pace with the growth in dog ownership: major off-leash parks are concentrated in Manhattan, which has the highest dog density, while the Gap Index (a measure of whether the number of run parks can satisfy the potential demand in a ZCTA) shows that many outer-borough ZCTAs are under-served.

Third, **dog bite rates appear to relate to neighbourhood income, although the relationship is not straightforward**. Lower-income areas often show higher bite rates per 1,000 licensed dogs, but the pattern varies considerably across locations. Rather than implying a direct causal relationship, the data suggests a broader tendency that interacts with other neighbourhood conditions.

Together, these findings support the central message of the project: dog-related safety and experiences in New York are shaped not only by the dogs themselves, but also by the places where people and dogs interact.

The intended audience is **New York City residents who currently own a dog or are considering getting one, together with other members of the household who may be involved in that decision.** This includes people with varied backgrounds and levels of familiarity with data, from children and parents to older family members.

Unlike analysts who approach data with predefined questions, this audience is more likely to arrive with practical concerns such as *“Is my neighbourhood safe?”* or *“Is there a nearby place where I can walk my dog?”* While they may already understand the city's geography, they are unlikely to have prior experience interpreting statistical patterns or spatial visualisations.

These audience characteristics influenced the design decisions throughout the project. The visualisation prioritises plain language over technical terminology, frames each section around everyday questions rather than chart titles, and grounds information within familiar geographic structures such as borough maps. Explanatory text is also included throughout the application to help users interpret patterns and understand important limitations.

Accessibility was considered from the beginning of the design process rather than being added at the end. Colour-blind-safe palettes, sufficient colour contrast, and visible keyboard focus states were incorporated so that users with different accessibility needs can comfortably interact with the application.

As the target audience expects guidance rather than open-ended exploration, the application follows an author-driven narrative structure. Each tab naturally transitions to the next, allowing users to progressively build understanding rather than navigate a fully open analytical dashboard.

Meantime, accessibility considerations extend beyond the visualisation itself to the report document. All implementation screenshots are accompanied by descriptive figure captions so that readers can understand the purpose, structure, and key visual elements of each interface view without relying solely on the image. This reflects the project’s broader accessibility objective of ensuring that important information is communicated through both visual and textual channels.


# Section 2: Design Process

The final design was developed using the Five Design Sheets (FdS) method (Roberts et al., 2016). Sheet 1 captured initial ideas, questions, and possible data directions, while Sheets 2–4 explored three alternative design concepts. Sheet 5 then combined the strongest elements into the final design that was implemented. All five sheets, together with a sixth that documents a later revision to the Safety tab, are included in the Appendix. *Section 2.1 narrates this process — how three kinds of layouts were generated, critiqued, and combined into the final design — and the remaining subsections justify the resulting choices against visualisation theory.* The section is organised around broader design themes rather than tab by tab, because many decisions — such as colour, layout, typography, and interaction — were applied across multiple parts of the application. Throughout, the main consideration was whether a choice would help a non-expert NYC resident understand and answer practical everyday questions.

## 2.1 Design process across the five sheets

The final design was developed through several iterations rather than being decided at the beginning. Different alternatives were explored and refined according to how well they supported the target audience.

**Sheet 1 (Brainstorm)** collected the candidate questions and explored a deliberately broad set of visualisation possibilities before any layout decisions were fixed. Pie and donut charts were initially considered for showing each borough's share of licensed dogs because part-to-whole displays can communicate proportions quickly to non-expert readers. Several temporal alternatives were also explored for bite incidents, including grouped and stacked bar charts, line charts, and a borough-by-year heatmap. The stacked-bar approach could summarise all boroughs within a single yearly view, while grouped bars would allow side-by-side comparison within each year. A choropleth map was identified early as the clearest way to communicate neighbourhood-level spatial information, while a scatter plot was considered suitable for examining the possible relationship between income and bite rate because it supports comparison between two quantitative variables through shared axes. Early interaction ideas were also explored, including borough filters, year filters, hover tooltips, and map-based exploration.

**Sheets 2–4** then developed three competing *layout* concepts and evaluated each design using a structured strengths-and-limitations review. *Layout A* (Sheet 2) was a tabbed `navbarPage` pairing a pie chart of dog proportions with a leaflet map, a scatter, and a line chart; its recorded weakness was that a pie chart is poor for comparing the similar-sized borough proportions, because the eye judges angle and area far less accurately than position or length (Cleveland, 1985). *Layout B* (Sheet 3) was a single-page scroll narrative opening on an "Are you a dog owner?" hero and built around a borough-by-year heatmap; its weakness was that the heatmap's colour-encoded values demand careful legend reading that a general, non-expert audience is unlikely to do, and that the minimal scrolling design gave the reader little guidance. *Layout C* (Sheet 4) was a map-first scroll layout with a donut chart and a year-slider-driven stacked bar; its weakness was weak interaction and the risk that stacking an income choropleth beneath a separate layer of location dots would overload a casual reader. These three layouts tell the same story in three different visual styles.

**Sheet 5 (the realisation)** resolved these by *combining the strongest element of each concept*: the multi-tab structure that keeps one idea on screen at a time (from Layout A), the question-led narrative opener (from the scroll concepts B and C), and the full-map treatment (from Layout C), while discarding the chart types which were found to be less suitable during evaluation. The pie and donut charts were dropped in favour of the line chart because part-to-whole displays become difficult to compare when several boroughs have relatively similar proportions, whereas the line chart supports more accurate comparison through position along a shared axis (Cleveland, 1985). The line chart also communicates the temporal narrative far more effectively, especially the visible decline during the COVID period and the later recovery. In addition, the dog-licensing data spans eight years, meaning an interactive pie or donut chart would require users to remember and mentally compare multiple states over time, increasing cognitive effort for a general audience. The heatmap was dropped in favour of the choropleth-plus-scatter pairing because the combination separates the spatial question (“where are higher bite rates located?”) from the socioeconomic question (“does income appear related?”), reducing cognitive load for non-expert readers. The choropleth additionally provides clearer neighbourhood-level geographic context through identifiable ZIP-code regions and hover details.

Lastly, income was moved off a choropleth onto the scatter's position axis — the most accurate channel for the relationship, and one that avoids the overloaded-map problem flagged on Sheet 4.

A **sixth sheet** was added once implementation began, when the realised Safety tab exposed a problem the static sheets could not have predicted (the scatter's dots overlapped at full data range); it re-drafts the Safety tab as two rows and is discussed in Section 2.7. Two further refinements were also made between Sheet 5 and the running application — the borough palette and several interaction and accessibility details — and these are explained in Sections 2.5, 2.7, and 2.8 and summarised in Section 2.9. Documenting the alternatives that were rejected, and why, is the clearest evidence that the final design is the product of a reasoned process rather than a first guess.

## 2.2 Genre and narrative structure

The application follows an **author-driven narrative with some reader-driven elements**, aligning with Segel and Heer's (2010) description of effective data stories. The five-tab navigation structure (Introduction → Trends → Infrastructure → Safety → About) guides readers through the story in a planned order, while still allowing them to interact with the content through filtering, hovering, zooming, and exploration within individual tabs. This approach provides enough structure for readers who prefer guidance, while still giving them flexibility to investigate their own neighbourhood or area of interest.

Each tab begins with a question-based heading such as *"How have bite incidents changed?"* or *"Where do dogs live, and where can they run?"* Rather than presenting charts immediately, the design introduces information through questions that reflect the kinds of concerns users may realistically have. The Introduction tab also establishes a spatial reference point through a borough map so readers become familiar with the city structure before moving into more detailed views.

Within each analytical tab, content follows a simple **Setup → Visual → Reflection** structure. A short explanation introduces the topic, followed by the interactive visualisation and a reflection section underneath. This creates a predictable reading pattern across tabs and reduces the effort required to learn a new layout each time.

The reflection section follows a consistent structure consisting of a heading, short explanatory text, and three sections: *Key takeaway*, *Important context*, and *Continue exploring*. The final section also helps guide users toward the next relevant tab. Placing reflections after the visualisation was intentional, as it allows users to form their own observations first before reading additional interpretation (Segel & Heer, 2010).

## 2.3 Choice of visualisation type

Visualisation choices were guided by Munzner's (2014) what–why–how framework, which connects the data being shown, the task users want to perform, and the visual form used to support that task.

The Trends tab focuses on changes over time across boroughs, so a **multi-series line chart** was selected. Line charts are effective for showing trends because users can easily compare changes across a shared time scale.

The Infrastructure tab focuses on location and spatial distribution, so a **choropleth map** was used to display neighbourhood-level values alongside **point markers** representing dog-run locations. Since these represent different kinds of information — continuous regional values and individual facilities — separate visual marks were used.

The Safety tab addresses two connected questions: where bite rates are higher and whether they appear to relate to neighbourhood income. A choropleth map was first used to show the geographic distribution of bite rates, followed by a scatter plot to explore the relationship between bite rate and income. Separating these into two steps helps reduce cognitive load and allows users to focus on one question at a time.

## 2.4 Visual variables

Visual variables were selected based on recommendations from Bertin (1983), Munzner (2014), and Ware (2012). For quantitative variables such as dog density, gap index, and bite rate, the maps use changes in colour intensity along sequential colour scales. Since map position is already determined by geography, colour provides a clear way to communicate different magnitudes across neighbourhoods.

For the scatter plot, the two key variables — bite rate and income — are represented using position along shared axes, which is one of the most accurate visual channels for comparing numerical values. Borough identity, which is categorical information, is represented consistently through colour across all views.

Several preattentive visual cues were also intentionally applied to guide attention before conscious reading occurs (Ware, 2012). Position was used as the primary cue for comparing quantitative values in the line chart and scatter plot because viewers can rapidly perceive differences along aligned axes. Colour intensity was used on choropleth maps to immediately distinguish lower and higher values, while the Trends tab additionally uses a translucent highlighted band around the COVID period so readers instantly notice the unusual decline before interacting with the chart. In the interface itself, bold typography and orange highlight states are selectively used to direct attention toward active controls and important navigation elements without overwhelming the visualisation.

A deliberate decision was also made to avoid unnecessary encoding. Dog-run markers in the Infrastructure tab use a neutral green colour rather than borough colours because the underlying map already provides that information. Adding another colour layer would repeat information without improving interpretation (Munzner, 2014).

## 2.5 Colour

Colour plays an important role throughout the application and received careful consideration during the design process. Borough identity uses the Okabe-Ito qualitative palette (Okabe & Ito, 2008): Manhattan `#0072B2`, Brooklyn `#CC79A7`, Queens `#E69F00`, Bronx `#009E73`, and Staten Island `#D55E00`. This palette was selected because the colours remain distinguishable for users with common forms of colour-vision deficiency (Wong, 2011).

Compared with the DVP Part 1 design, the borough colours were adjusted to improve accessibility and reduce potential colour confusion. The same borough colours are also used consistently across charts, maps, and interface elements so that readers can quickly recognise recurring categories without repeatedly checking legends. This also aligns with the Gestalt principle of similarity (Ware, 2012). The Introduction-tab borough reference map is intentionally positioned first in the narrative so it acts as the *primary shared legend* for every borough-coloured idiom that follows (Trends line chart and Safety scatter). Each subsequent view keeps a small local legend close to its own data — placed *above* the chart rather than *beside* it on the Safety scatter — to support quick checking without competing for space with the visualisation itself.

For the quantitative choropleths, perceptually uniform sequential colour ramps from the viridis family are used — plasma for dog density, viridis for the gap index, and rocket (reversed) for bite rate — all of which remain interpretable for users with colour-vision deficiency (Crameri et al., 2020).

Different colour families were also used for the Infrastructure tab toggle states so that users can recognise which metric is currently selected without relying only on lightness differences. Dog density values were transformed using a square-root scale because the data was highly right-skewed, preventing a small number of dense areas from dominating the colour range (Cleveland, 1985). Bite rates, however, were kept in their original scale because their values already fall within a more interpretable range. The bite-rate palette was also reversed so that darker red shades represent higher values, matching common associations between red and caution or risk (Cairo, 2016).

**Crucial update — accessibility of colour on interaction (changed since DVP Part 1).** Two colour problems surfaced once the app was running and were redesigned.

 (1) The active/hover navigation state was first drawn as white text on the orange brand colour, which measures only 2.25:1 contrast and fails WCAG 2.1 AA even for large or bold text; it was corrected to **dark `#1F2933` text on orange (6.55:1, passes)** with bold weight retained as a second, non-colour cue (W3C, 2018). To reduce visual fatigue during extended reading, the interface avoids using pure black or pure white for large interface regions. Instead, darker interface text primarily uses #1F2933, supported by softer grey tones such as #525252 and #737373, while lighter interface backgrounds use off-white values such as #FAFAFA and #EEEEEE. This preserves contrast while creating a less visually harsh reading experience.

(2) Hovering a choropleth polygon originally tinted its fill, which destroys the colour-encoded value *at the very moment the reader is trying to read it*. The redesign signals hover by **thickening the border** (the primary, non-colour cue) and only slightly raising fill opacity, never changing the fill hue — so the encoding survives the interaction (Munzner, 2014). These changes make the tool friendlier to low-vision readers and follow the principle that interaction must not be communicated through colour alone.

A further refinement made during implementation was the separation between thematic map colours and interface-navigation colours. The choropleths already use strong sequential colour ramps to encode quantitative values, so the navigation bar and interface controls intentionally use softer neutral tones with orange highlights only for focus and active states. This prevents competition between interface elements and the data itself, helping users visually prioritise the analytical views rather than the surrounding interface chrome.

## 2.6 Typography

**Crucial update — single-family Lora typography (changed since DVP Part 1).** The DVP Part 1 design used the geometric sans-serif Futura. FFollowing tutor feedback that a serif typeface would better support readability for the intended audience, the typography system was redesigned around Lora, a calligraphic serif created for comfortable on-screen reading. The whole application — hero questions, headings, narrative paragraphs, KPI numbers, chart axes, legends, and map tooltips — uses the one stack `'Lora', Georgia, Cambria, 'Times New Roman', serif`. Hierarchy is created entirely through weight (400 Regular, 500 Medium, 600 SemiBold, 700 Bold) and size, not by mixing typefaces.

An alternative approach was also explored: keeping Futura for body text while using Lora only for headings, following a common editorial serif-heading and sans-body pattern. However, this approach was rejected after implementation because Futura’s geometric structure contrasted too strongly with Lora’s softer calligraphic forms, creating a less cohesive visual tone across the application. Using a single type family ultimately produced a calmer and more consistent reading experience across all five tabs (Bringhurst, 2004, ch. 4).

**Why Lora rather than another serif.** Lora was selected because it was designed for digital reading environments. Its relatively tall x-height improves readability at smaller sizes, while its moderate stroke contrast avoids the fragmentation often seen in more decorative serif typefaces on screens. The slightly organic character of Lora also better supports the warm and approachable tone of a project focused on pets and neighbourhood life than a more rigid serif such as Times New Roman. This became particularly important for smaller interface elements such as tooltip text, legends, and axis labels, which typically appear at around 12–13px.

**Why a single family rather than serif + sans.** Tufte (2001) argues that unnecessary visual variation can distract from the information itself. Because hierarchy in the application is already communicated through size, spacing, weight, and colour, introducing an additional typeface would add another visual distinction without improving interpretation. The single-family approach also follows Bringhurst’s (2004) principle that carefully controlling one well-chosen typeface often creates a more coherent reading experience than combining multiple competing typefaces.

**Local font bundling.** Because Lora is not installed by default on most operating systems, the required font files are bundled directly inside the submitted application rather than loaded from an external web service. The four .ttf weights are stored in the local Lora/ folder, registered through addResourcePath("lora", "Lora"), and exposed through CSS @font-face declarations. This ensures the typography renders consistently on the marker’s machine even without an internet connection. A fallback stack consisting of Georgia, Cambria, and the generic serif family is also provided so the interface still falls back to screen-optimised serif typefaces if the bundled font fails to load.

**Weight as the hierarchy channel.**  Hierarchy throughout the application is primarily communicated through differences in font weight and size rather than through multiple typefaces. Large hero questions use Bold 700 at 3rem to establish the narrative entry point of each tab, while reflection headings use SemiBold 600 at smaller sizes to distinguish supporting interpretation from the main narrative. Body text uses Regular 400 at 15px with a relatively generous 1.6 line height to improve readability during longer reading sections. Smaller captions and source notes use italic styling rather than a different typeface so that emphasis remains visually consistent across the interface.

## 2.7 Layout and consistency


The Trends and Infrastructure tabs both use a similar sidebar layout, with controls placed on the left and visual content on the right. Repeating the same layout structure helps readers become familiar with the interface and reduces the effort required to understand new sections. It also follows Gestalt principles of proximity by placing controls close to the visual elements they influence.

Several Gestalt principles were intentionally applied throughout the dashboard design. Proximity is used by grouping filters beside the charts they control, helping readers understand relationships between interface elements. Similarity is reinforced through the consistent borough colour palette and repeated layout structure across tabs, allowing users to recognise recurring categories quickly. Common region is also applied through the use of bordered reflection blocks and grouped narrative sections, visually separating explanatory content from analytical content. Continuity additionally influenced the top-to-bottom reading flow within each tab, guiding users naturally from narrative introduction, to visualisation, and finally to reflection and interpretation.

**Crucial update — the Safety tab layout (changed since DVP Part 1).** The DVP Part 1 Sheet 5 placed the Safety map and scatter **side by side in one row** (roughly 60/40). When implemented, this failed for the target audience: the scatter's x-axis spans the full NYC income range (about **\$26,000 to \$250,000**), and lower-income areas with higher bite rates and higher-income Manhattan areas became visually clustered within the narrow panel, so individual ZIP dots overlapped and their hover targets shrank below a comfortably clickable size. Because being able to hover a single ZIP is exactly how a resident finds *their* neighbourhood, this directly undermined the main user task. The revised layout is illustrated in the Appendix.

The tab was **redesigned into two rows**: Row 1 holds the map (width 7) beside a dedicated narrative block (width 5) interpreting the spatial story, and Row 2 holds the scatter at **full width** (the updated Sheet 5 for this tab, `Safety_new.png`, is in the Appendix). 

Full width gives every dot enough hit-area and gives the borough legend room to sit horizontally across the top, out of the data. The cost is extra vertical scrolling; this is mitigated by a "Before moving down" prompt in the map's side-narrative that explicitly directs the reader to the scatter — a small piece of narrative scaffolding (Segel & Heer, 2010). 

A stacked arrangement was also more appropriate because the two views answer sequential questions("where?" then "why?"), which matches a top-to-bottom reading order (Munzner, 2014, ch. 11).

## 2.8 Interaction techniques

Interaction design was guided by Shneiderman's (1996) principle of “overview first, zoom and filter, then details on demand”. The Introduction tab provides an overview of the topic, while maps support zooming and panning. Filtering options are available in the Trends and Infrastructure tabs, and additional information is provided through tooltips.

Different tooltip behaviours were used according to the type of task being supported. Area-based map regions use hover labels because users may want to quickly compare several neighbourhoods, while dog-run locations use click-based popups so information remains visible after selection. The Trends chart uses richer tooltips that provide additional context, such as year-on-year percentage changes and the COVID-related decline in bite incidents.

Interaction choices were intentionally kept lightweight and predictable. The application avoids advanced interactions such as animated transitions, complex multi-view brushing, or hidden gestures because the intended audience is not expected to have prior experience with analytical dashboards. Instead, interactions are limited to familiar web behaviours — hovering, clicking, filtering, scrolling, and zooming — so readers can focus on understanding the story rather than learning the interface itself.

**Crucial update — frozen navigation bar (changed since DVP Part 1).** Because each analytical tab ends with a reflection block the reader scrolls down to finish, the navigation bar originally scrolled out of view, forcing the reader to scroll back up before they could move to the next tab. 

The navbar was made **fixed (`position: fixed`)** with matching body top-padding so it stays reachable at all times; a reader who has just finished the Trends reflection can step straight into Infrastructure. This lowers the navigation cost of the multi-tab narrative and keeps the author-driven hand-offs in the reflection blocks usable. 

A **visible keyboard-focus ring** (`outline: 3px solid #0072B2`, in the Manhattan blue so it reads as part of the palette) was also added on links, buttons, and map shapes, since the default Bootstrap theme suppressed focus indication and keyboard users had no way to see where they were (W3C, 2018, SC 2.4.7).

## 2.9 Summary of changes since DVP Part 1

Six substantive changes were made between the DVP Part 1 design (Sheet 5) and the final implementation, each justified in the section noted. First, the **pie and donut charts** sketched for borough dog-share were dropped in favour of the **line chart**, because part-to-whole comparison of similar proportions is hard to read and a line better carries the temporal story (Section 2.1; Section 2.3). Second, the **heatmap** considered in Layout B was not adopted, because its colour-encoded values demand legend reading that the non-expert audience is unlikely to do (Section 2.1). Third, the **borough palette** was replaced with the colour-blind-safe Okabe-Ito set, removing the earlier red–green confusion (Section 2.5). Fourth, the **Safety tab** was restructured from a single side-by-side row into two stacked rows, after the implemented scatter showed overlapping dots and unusable hover targets (Section 2.7). Fifth, an **accessibility and interaction pass** added the contrast-corrected fixed navigation bar, the keyboard-focus ring, the border-only hover cue, and the realisation of the dog-run markers as neutral teal circles rather than the sketched paw icons (Sections 2.4, 2.5, 2.8). Sixth, the **typography** was  redesigned from the geometric sans-serif Futura to a single-family Lora serif system following tutor feedback on readability and tone; the four Lora weights are now bundled with the app so the typography renders reliably on the marker's machine without an internet connection (Section 2.6). Every change follows from the audience definition and from unit theory rather than from implementation convenience.


# Section 3: Implementation

## 3.1 Technical Implementation

The visualisation is implemented as a single-file R Shiny application (`app.R`, approximately 1,660 lines) organised into seven clearly commented sections: libraries, data loading, project-wide constants and derived objects, CSS styling, UI, server, and the run call. 

A single file was chosen over the conventional `ui.R`/`server.R`/`global.R` split as unit practice case because, at this scale, one file is easier for a marker as well as myself to read end to end and removes the risk of a missing-file error on first run.

**Libraries.** Eight packages are used, each for a specific role: `shiny` (application framework), `sf` (the spatial data class — `master_filtered.rds` is an sf object), `dplyr` and `readr` (data manipulation and CSV reading), `leaflet` (the interactive choropleth maps and markers), `plotly` (the interactive Trends line chart and Safety scatter), `ggplot2` (the static borough reference map on the Introduction tab), and `viridisLite` (the perceptually uniform `plasma()` and `viridis()` colour ramps). No external HTML template or theme was used; the styling is hand-written CSS injected into the page head, which keeps every styled element visible in the one file.

**External code sources.** The implementation draws on documented idioms rather than copied templates: the `leaflet`-for-R "leaflet-shiny" vignette for the base-map-plus-`leafletProxy` partial-update pattern used on the Infrastructure tab; the Plotly R reference for the `shapes`/`annotations` and legend configuration on the Trends and Safety charts; CartoDB Positron basemap tiles as a low-contrast backdrop for the thematic maps; and the viridisLite palettes. These are listed in the Bibliography.

**Bundled font asset.** The Lora typeface (Karpushina, SIL OFL) is bundled directly inside the `Lora/` folder of the submitted application rather than loaded from an online font service, so the typography renders consistently on the marker's machine with no internet dependency. The four static-weight `.ttf` files (Regular 400, Medium 500, SemiBold 600, Bold 700) are registered as a Shiny static-resource path through `addResourcePath("lora", "Lora")` near the top of `app.R`, and four `@font-face` declarations in the CSS block then point at `/lora/static/Lora-*.ttf`. This single-family approach is described in detail in Section 2.6.

**Additional data management.** No new datasets were added since the Data Exploration Project; the same cleaned inputs are reused. Several preparation steps were, however, added specifically for the visualisation, performed once during startup so calculations do not need to be repeated during user interaction. The cumulative **bite rate** is recomputed at load as `total_bites / total_dogs × 1000` so that the calculation remains transparent and consistent with the displayed metric. The `bites_per_year_borough` table is augmented with year-on-year percentage and context-flag columns that feed the Trends tooltip. The dog-run CSV is parsed from its WKT geometry column with `st_as_sf(wkt = "the_geom")`, its single-letter borough codes are translated with `dplyr::case_match()`, and per-run centroids are derived via `st_union()` and `st_coordinates()` for placing markers. Hover-label and tooltip strings for the maps and the scatter are pre-built as character vectors, and the scatter's data frame is reduced with `st_drop_geometry()` to avoid sending unnecessary spatial information into the interactive view and improve performance.

**Three challenges arose during coding.** First, **spatial data handling**: the two sf objects carry their geometry under different column names (`geometry` for the ZCTAs, `the_geom` preserved from the CSV's WKT), which had to be reconciled when extracting coordinates. Second, **using two different visualisation frameworks**: the maps use leaflet while the charts use native `plot_ly()` — chosen over `ggplotly()` because the latter does not reliably translate the COVID-period rectangle annotation — and the `leafletProxy` pattern was needed to swap the Infrastructure choropleth on toggle without re-fetching tiles or resetting the user's zoom. Third, **namespace management**: `plotly` exports its own `filter()`, so the data-wrangling `dplyr` verbs are namespaced (`dplyr::filter`) to avoid being shadowed.

**Differences between the final (Sheet 5) design and the implementation** are explained in Section 2 and summarised here: the paw-icon dog-run markers were realised as neutral teal circle markers, the Safety tab moved from a single side-by-side row to two stacked rows, and the borough palette was changed to Okabe-Ito. Each change is justified in Sections 2.4, 2.7, and 2.5 respectively.

## 3.2 Interactive Narrative Visualisation Implementation

This section walks through the five tabs as the reader encounters them, showing how each view's narrative and interaction deliver an insight to the intended audience. Cropped screenshots of the final implementation are referenced at each tab.

**Introduction.** The opening tab sets context with a hero question, a two-column layout pairing a short project narrative with a static borough reference map (rendered in `ggplot2`, with no interaction so the reader simply orients themselves), and three KPI cards across the bottom carrying headline numbers computed directly from the data: 182 residential ZIP-code areas analysed, 64.8% of them with no dedicated dog run, and the Bronx as the borough with the highest median bite rate. The cards give a non-expert reader the scale of the problem before any chart is read.

\begin{figure}[H]\centering\includegraphics[width=\linewidth]{screenshots/introduction.png}\par\vspace{0.4em}{\footnotesize\itshape \textbf{Figure 1.} The Introduction tab. The hero question "Are you a dog owner?" opens the narrative; a plain-language summary sits beside a static borough reference map that fixes each borough's colour for the rest of the application, and three KPI cards report the headline figures (182 ZCTAs analysed, 64.8\% with no off-leash run, the Bronx with the highest median bite rate).}\end{figure}

**Trends.** The Trends tab answers "How have bite incidents changed?" with a multi-series plotly line chart of yearly bite counts by borough. A checkbox panel on the left (all five boroughs selected by default, so the overall pattern is visible once the tab first opens) lets the reader isolate boroughs. A translucent yellow band marks the 2019.5–2020.5 COVID period with "COVID-19 drop" and "Recovery peak" labels baked into the chart. This highlighted region acts as a preattentive cue by immediately drawing viewer attention toward the unusual temporal disruption before detailed inspection occurs. The key pattern can be understood quickly without any interaction; a rich tooltip then supplies the year-on-year percentage change on demand for readers who want detail. The reflection block states the key finding — that Queens carries the highest counts and that bite counts are not simply a function of dog population — and notes the important caveat that these are absolute counts, since licensing data is incomplete for 2019–2021.

\begin{figure}[H]\centering\includegraphics[width=\linewidth]{screenshots/trend_line.png}\par\vspace{0.4em}{\footnotesize\itshape \textbf{Figure 2.} The Trends tab. The borough checkboxes (left) let the reader isolate any combination of boroughs; the yellow band and the "COVID-19 drop" / "Recovery peak" labels mark the 2020 dip and 2022–2023 recovery without any interaction; hovering a point reveals a rich tooltip carrying the year-on-year change (shown here for Manhattan in 2020: −29\%).}\end{figure}

**Infrastructure.** The Infrastructure tab answers "Where do dogs live, and where can they run?" with a leaflet choropleth of all 182 ZCTAs and teal circle markers for the 91 dog runs. A radio toggle switches the choropleth between dog density (plasma, square-root scaled) and the gap index (viridis); the map updates via `leafletProxy` without re-rendering the markers or resetting the view. Polygons reveal a hover label (ZIP, borough, density, run count, gap index) and the run markers reveal a click popup with the park's name. The reflection block draws out that roughly two-thirds of ZCTAs have no run and that the gap is widest in the outer boroughs.

\begin{figure}[H]\centering\includegraphics[width=\linewidth]{screenshots/infrastracture_density.png}\par\vspace{0.4em}{\footnotesize\itshape \textbf{Figure 3a.} The Infrastructure tab in its Dog density state. The plasma choropleth shades each ZCTA by licensed-dog density (legend in dogs/km²) and teal dots mark the 91 off-leash runs. Hovering a ZCTA shows a context label (ZIP, borough, density, runs, gap index); clicking a dot pins the park's name.}\end{figure}

\begin{figure}[H]\centering\includegraphics[width=\linewidth]{screenshots/infrastracture_gap.png}\par\vspace{0.4em}{\footnotesize\itshape \textbf{Figure 3b.} The same tab toggled to Gap index. The viridis ramp uses a different hue family from the density view (Figure 3a), so the reader can tell at a glance which metric is active; only the choropleth and legend redraw, while the markers and the map view stay put.}\end{figure}


**Safety.** The Safety tab answers "Does where you live shape how safe it is?" using the two-row layout described in Section 2.7. Row 1 pairs a rocket-palette choropleth of bite rate (dark red = high) with a side-narrative interpreting the spatial pattern — highest rates in parts of the Bronx, central Brooklyn, and southern Queens, not in dog-dense Manhattan. Row 2 holds a full-width scatter of bite rate against median household income, with each ZCTA dot coloured by borough and a horizontal legend across the top. Hovering over individual points reveals a tooltip containing the ZIP-code area, borough, median household income, and bite rate, allowing readers to connect broader patterns with information from specific neighbourhoods. Borough colours are also consistently retained within the tooltip design so readers can more easily connect information back to the borough reference introduced earlier in the narrative. Text colours are adjusted according to background contrast requirements, for example using white text on darker borough colours and darker text on lighter colours such as Queens. The reflection block explains that the income–bite-rate relationship is real but loose, and should be read as a tendency rather than a rule.

\begin{figure}[H]\centering\includegraphics[width=\linewidth]{screenshots/safety_map.png}\par\vspace{0.4em}{\footnotesize\itshape \textbf{Figure 4a.} The Safety tab, Row 1. A rocket-palette choropleth of bite rate (darker red = higher) sits beside a side-narrative interpreting the spatial pattern; the hover label reports each ZCTA's bite rate and median income. The narrative draws attention to the highest rates being in parts of the Bronx, central Brooklyn, and southern Queens rather than in dog-dense Manhattan.}\end{figure}

\begin{figure}[H]\centering\includegraphics[width=\linewidth]{screenshots/safety_income.png}\par\vspace{0.4em}{\footnotesize\itshape \textbf{Figure 4b.} The Safety tab, Row 2. The full-width scatter of bite rate against median household income, each dot a ZCTA coloured by borough, with the legend laid horizontally across the top. Full width gives every dot a usable hover target — the reason for the two-row redesign explained in Section 2.7.}\end{figure}

**About.** The final tab closes the narrative with a single-column credits page: a short project blurb, the five data sources with links to their original agencies, a credits line, links to the source-code repositories, an acknowledgement of the teaching team, and a copyright line with a dynamically generated year.

\begin{figure}[H]\centering\includegraphics[width=\linewidth]{screenshots/about-1.png}\par\vspace{0.4em}{\footnotesize\itshape \textbf{Figure 5.} The About tab. A single-column credits page listing the five open data sources with links to their agencies, the project credit, the source-code repositories, and an acknowledgement of the teaching team.}\end{figure}

## 3.3 Using the Implementation

The application runs in R (version 4.5.2) with RStudio. To launch it, open `woof_ny_app.Rproj` so the working directory is set correctly, ensure the eight packages listed in Section 3.1 are installed, and either click **Run App** in RStudio or call `shiny::runApp()`. The app opens in the Introduction tab; the `data/` folder ships with the project so no external files or downloads are required. The application is read top to bottom, beginning at Introduction and following the tab order to About.

Several interactions are easy to miss and are important to note. Each analytical tab continues **below the chart**: scrolling down reveals the reflection block, whose *Continue exploring* list links onward to the next relevant tab, so users who only view the chart may overlook both the interpretation and the narrative thread. Because the navigation bar is **fixed at the top of the window**, readers can switch tabs at any point, including after scrolling to the bottom of a tab. On the **Trends** tab, the borough checkboxes on the left filter the chart, and hovering a line reveals a detailed tooltip with the year-on-year change. On the **Infrastructure** tab, the radio toggle switches the map between dog density and the gap index, the coloured regions show a hover label, and the dog-run markers use **click** interaction rather than hover interaction to reveal the park name. On the **Safety** tab, the scatter sits in a second row beneath the map, so the income relationship is only seen after scrolling past the map and its side-narrative. Both maps also support standard zoom and pan. Keyboard users can move through the interactive elements with a visible focus outline.


# Section 4: Conclusion and Reflection

*Woof! New York* was designed to help everyday New York City residents better understand dog ownership, safety, and public infrastructure within their neighbourhoods. The project communicated three main findings. First, dog bite incidents are influenced by more than the number of dogs living in an area, as Queens recorded the highest number of incidents despite not having the highest dog density. Second, off-leash infrastructure is unevenly distributed, with approximately two-thirds of residential ZIP-code areas lacking a dedicated dog run. Third, neighbourhood income appears to have some relationship with bite rates, although the pattern varies across locations and should be interpreted as a general tendency rather than a direct relationship. Together, these findings reinforce the broader message that dog-related experiences and safety are shaped not only by dogs themselves, but also by the environments in which people and dogs interact.

The project resulted in a complete interactive narrative visualisation designed for users with little or no analytical background. Through the combination of narrative structure, interaction, and accessibility considerations, the application guides users through the data while still allowing them to explore areas that are personally relevant to them. Looking back at the development process, one of the most important lessons was that creating an effective visualisation involves much more than simply producing charts that function correctly. Some of the most valuable improvements were made after implementation had already begun, including redesigning the colour palette for accessibility, introducing a fixed navigation bar, improving hover behaviour, and restructuring the Safety tab layout.

The project also provided practical experience in connecting visualisation theory with implementation decisions. Concepts discussed in the unit, such as narrative structure, Gestalt principles, visual encoding, and accessibility guidelines, became more meaningful when applied to real design problems. It also highlighted the importance of selecting tools according to their strengths rather than trying to force one approach to support every task.

In hindsight, earlier user testing would likely have improved the design process. The issue of overlapping points in the Safety tab only became obvious after implementation, and simple testing during the design stage may have revealed the problem sooner. Future work could include incorporating more recent licensing data, introducing additional temporal analysis, and conducting usability testing with New York dog owners to better understand how readers interpret and interact with the narrative.


# Appendix

The five Five-Design-Sheet (FdS) sheets are reproduced below, followed by a sixth sheet that documents the revised two-row Safety-tab layout adopted during implementation (see Section 2.7).


# Bibliography

Bertin, J. (1983). *Semiology of graphics: Diagrams, networks, maps* (W. J. Berg, Trans.). University of Wisconsin Press. (Original work published 1967)

Bringhurst, R. (2004). *The elements of typographic style* (3rd ed.). Hartley & Marks.

Cairo, A. (2016). *The truthful art: Data, charts, and maps for communication*. New Riders.

Carter, M. (1996). *Designing Georgia*. Microsoft Typography. https://learn.microsoft.com/en-us/typography/font-list/georgia

Cleveland, W. S. (1985). *The elements of graphing data*. Wadsworth.

Crameri, F., Shephard, G. E., & Heron, P. J. (2020). The misuse of colour in science communication. *Nature Communications, 11*, 5444. https://doi.org/10.1038/s41467-020-19160-7

Munzner, T. (2014). *Visualization analysis and design*. CRC Press.

Okabe, M., & Ito, K. (2008). *Color universal design (CUD): How to make figures and presentations that are friendly to colorblind people*. https://jfly.uni-koeln.de/color/

Roberts, J. C., Headleand, C., & Ritsos, P. D. (2016). Sketching designs using the five design-sheet methodology. *IEEE Transactions on Visualization and Computer Graphics, 22*(1), 419–428. https://doi.org/10.1109/TVCG.2015.2467271

Segel, E., & Heer, J. (2010). Narrative visualization: Telling stories with data. *IEEE Transactions on Visualization and Computer Graphics, 16*(6), 1139–1148. https://doi.org/10.1109/TVCG.2010.179

Shneiderman, B. (1996). The eyes have it: A task by data type taxonomy for information visualizations. In *Proceedings of the IEEE Symposium on Visual Languages* (pp. 336–343). IEEE. https://doi.org/10.1109/VL.1996.545307

Tufte, E. R. (2001). *The visual display of quantitative information* (2nd ed.). Graphics Press.

Ware, C. (2012). *Information visualization: Perception for design* (3rd ed.). Morgan Kaufmann.

Wong, B. (2011). Points of view: Color blindness. *Nature Methods, 8*(6), 441. https://doi.org/10.1038/nmeth.1618

World Wide Web Consortium [W3C]. (2018). *Web content accessibility guidelines (WCAG) 2.1*. https://www.w3.org/TR/WCAG21/

## Software and packages

R Core Team. (2025). *R: A language and environment for statistical computing* (Version 4.5.2) [Computer software]. R Foundation for Statistical Computing. https://www.R-project.org/

Chang, W., Cheng, J., Allaire, J. J., Sievert, C., Schloerke, B., Xie, Y., Allen, J., McPherson, J., Dipert, A., & Borges, B. (2024). *shiny: Web application framework for R* [R package]. https://CRAN.R-project.org/package=shiny

Cheng, J., Schloerke, B., Karambelkar, B., & Xie, Y. (2024). *leaflet: Create interactive web maps with the JavaScript "Leaflet" library* [R package]. https://rstudio.github.io/leaflet/

Sievert, C. (2020). *Interactive web-based data visualization with R, plotly, and shiny*. Chapman and Hall/CRC. https://plotly-r.com

Pebesma, E. (2018). Simple features for R: Standardized support for spatial vector data. *The R Journal, 10*(1), 439–446. https://doi.org/10.32614/RJ-2018-009

Karpushina, O. (2011). *Lora* [Open-source typeface, SIL Open Font License]. https://fonts.google.com/specimen/Lora

## Data sources

NYC Department of Health and Mental Hygiene. (n.d.). *NYC dog licensing dataset* [Data set]. NYC Open Data. https://data.cityofnewyork.us/Health/NYC-Dog-Licensing-Dataset/nu7n-tubp

NYC Department of Health and Mental Hygiene. (n.d.). *DOHMH dog bite data* [Data set]. NYC Open Data. https://data.cityofnewyork.us/Health/DOHMH-Dog-Bite-Data/rsgh-akpg

NYC Department of Parks and Recreation. (n.d.). *Dog runs* [Data set]. NYC Open Data. https://data.cityofnewyork.us/Recreation/Dog-Runs/hxx3-bwgv/about_data

U.S. Census Bureau. (n.d.). *American Community Survey: Median household income estimates (2018–2022)* [Data set]. https://www.census.gov/programs-surveys/acs

U.S. Census Bureau. (2020). *TIGER/Line shapefiles: ZIP Code Tabulation Areas* [Data set]. https://www.census.gov/geographies/mapping-files/time-series/geo/tiger-line-file.html


# Declaration on the use of AI tools

In line with the unit's requirements, I declare that I used an AI assistant (Claude, by Anthropic) as part of this project. I treated the tool as a co-working partner — a "co-work with Claude AI" arrangement — in which I directed the work, made every design and analytical decision, and used the assistant to help me think through options, structure my writing, and check my reasoning.

Specifically, the AI assistant was used to discuss and pressure-test design choices against visualisation theory, to help organise and draft the prose of this report from my own design-decision notes, to explain unfamiliar functions and arguments line by line as I built the R Shiny application, and to suggest accessibility improvements (such as the contrast correction on the navigation bar and the border-only hover cue) which I then evaluated and implemented myself. All factual claims, data figures, and code in the submission were reviewed and verified by me, and I am able to explain and defend every part of the implementation. The data analysis, the design decisions, and the final wording are my own work; the AI assistant supported the process but did not replace my judgement.