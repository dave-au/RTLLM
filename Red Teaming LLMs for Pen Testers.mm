<map version="1.0.1">
<!-- To view this file, download free mind mapping software FreeMind from http://freemind.sourceforge.net -->
<node CREATED="1708563653492" ID="ID_1533548645" MODIFIED="1708563841967" TEXT="Red Teaming LLMs for Pen Testers">
<node CREATED="1709098064978" ID="ID_890667714" MODIFIED="1709098067597" POSITION="right" TEXT="Introduction"/>
<node CREATED="1708564429604" FOLDED="true" ID="ID_455367840" MODIFIED="1709103709543" POSITION="right" TEXT="Caveats">
<node CREATED="1708564439208" ID="ID_1292172408" MODIFIED="1708564455075" TEXT="Focusing on stuff that can be tested at inference time">
<node CREATED="1708564457488" ID="ID_1202549987" MODIFIED="1708564472298" TEXT="Training attacks are discounted"/>
<node CREATED="1708564731926" ID="ID_183332911" MODIFIED="1709101764576" TEXT="&quot;Overreliance&quot; discounted">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1708566664764" ID="ID_1826371324" MODIFIED="1708566701299" TEXT="Focusing on adversarial / red-team tactics, rather than defensive / operational controls and tools"/>
<node CREATED="1708564485344" ID="ID_1818049914" MODIFIED="1708564499803" TEXT="Focusing on stuff that is specific to LLMs">
<node CREATED="1708564505796" ID="ID_56024817" MODIFIED="1708564519142" TEXT="Not included:">
<node CREATED="1708564521210" ID="ID_585373710" MODIFIED="1709101770062" TEXT="Insecure output handling">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1708564767396" ID="ID_1661679302" MODIFIED="1708564781951" TEXT="Direct model theft"/>
<node CREATED="1708564560234" ID="ID_852278616" MODIFIED="1708564571400" TEXT="Maybe &quot;Insecure Plugin Design&quot;?"/>
<node CREATED="1708564574147" ID="ID_798974210" MODIFIED="1709101771339" TEXT="Maybe &quot;Supply Chain Vulnerabilities&quot;?">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node CREATED="1708566547193" ID="ID_667567315" MODIFIED="1708566576303" TEXT="Focusing primarily on cyber security aspects">
<node CREATED="1708566578419" ID="ID_1992791033" MODIFIED="1708566583503" TEXT="Not model drift"/>
<node CREATED="1708566584349" ID="ID_1799110910" MODIFIED="1708566617210" TEXT="Not model accuracy (excepting hallucination)"/>
</node>
<node CREATED="1708568719583" ID="ID_1541708034" MODIFIED="1708568753862" TEXT="Assuming a black-box (or at best grey-box) scenario"/>
<node CREATED="1708569638535" ID="ID_1469076520" MODIFIED="1708569672783" TEXT="Assuming tester will have &quot;query access&quot; and possibly &quot;resource control&quot;">
<node CREATED="1708569681557" ID="ID_6200843" MODIFIED="1708569687210" TEXT="refer to NIST"/>
</node>
</node>
<node CREATED="1708563881098" ID="ID_311032965" MODIFIED="1708563886813" POSITION="right" TEXT="Threat modelling">
<node CREATED="1708563956637" ID="ID_81338835" MODIFIED="1708563972899" TEXT="Making a request of an LLM that should not be allowed">
<node CREATED="1708564208615" ID="ID_456004810" MODIFIED="1708564215147" TEXT="Prompt injection">
<node CREATED="1708565305420" ID="ID_516356945" MODIFIED="1709109299152" TEXT="Overwrites / bypasses system prompts">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1708569788609" ID="ID_349909711" MODIFIED="1709109299150" TEXT="Prompt intended to alter the behaviour of the LLM">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1708564216041" ID="ID_1444842206" MODIFIED="1708564222738" TEXT="Indirect prompt injection">
<node CREATED="1708565330518" ID="ID_1975713450" MODIFIED="1709109299145" TEXT="e.g. Alter behaviour of LLM based on inputs from external sources">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1708566005101" ID="ID_1196811561" MODIFIED="1709109299144" TEXT="Injecting prompt through OOB">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1708570121858" ID="ID_1097476788" MODIFIED="1708570125225" TEXT="Via DOM"/>
<node CREATED="1708570125783" ID="ID_1822497089" MODIFIED="1708570133131" TEXT="Via file macros"/>
</node>
</node>
<node CREATED="1708564223424" ID="ID_1193344187" MODIFIED="1708564231280" TEXT="&quot;Jailbreaking&quot;">
<node CREATED="1708569823724" ID="ID_1066687013" MODIFIED="1709109299137" TEXT="Direct prompt injection for the purpose of model abuse (NIST)">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1708569908470" ID="ID_1093702899" MODIFIED="1709109299137" TEXT="Tactics:">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1708569913851" ID="ID_1533076825" MODIFIED="1708569920665" TEXT="Prefix injection"/>
<node CREATED="1708569921436" ID="ID_367391561" MODIFIED="1708569927335" TEXT="Refusal suppression"/>
<node CREATED="1708569929065" ID="ID_700234048" MODIFIED="1708569932682" TEXT="Style injection"/>
<node CREATED="1708569937279" ID="ID_1774738114" MODIFIED="1708569940130" TEXT="Role-play"/>
</node>
<node CREATED="1708569975109" ID="ID_1196407699" MODIFIED="1709109299133" TEXT="Tricks:">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1708569979470" ID="ID_53721034" MODIFIED="1708569994570" TEXT="Special encoding (e.g. base64)"/>
<node CREATED="1708569996459" ID="ID_488129447" MODIFIED="1708570007029" TEXT="Character transformation (e.g. ROT13)"/>
<node CREATED="1708570007893" ID="ID_1998535681" MODIFIED="1708570025592" TEXT="Word transformation (e.g. pig latin)"/>
<node CREATED="1708570034221" ID="ID_177802880" MODIFIED="1708570048658" TEXT="Prompt obfuscation (e.g. language translation)"/>
</node>
</node>
<node CREATED="1708564180499" ID="ID_312686035" MODIFIED="1708564192436" TEXT="Receiving a response from an LLM that should not be allowed">
<node CREATED="1708564240619" ID="ID_320887933" MODIFIED="1708564247451" TEXT="Sensitive information disclosure">
<node CREATED="1708564641807" ID="ID_373638815" MODIFIED="1709109315272" TEXT="From training">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1708567568086" ID="ID_1462974854" MODIFIED="1708567574181" TEXT="&quot;Training Data Extraction&quot;"/>
</node>
<node CREATED="1708564646152" ID="ID_334050603" MODIFIED="1709109315270" TEXT="From RAG">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1708564649517" ID="ID_1965420301" MODIFIED="1709109315269" TEXT="From integrations">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1708567680826" ID="ID_701279492" MODIFIED="1709109315269" TEXT="System prompt extraction">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1708566880303" ID="ID_549954537" MODIFIED="1709109315269" TEXT="&quot;Privilege escalation&quot;">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1708564279306" ID="ID_1989026484" MODIFIED="1708564284335" TEXT="Harmful responses">
<node CREATED="1708564829055" ID="ID_1732173775" MODIFIED="1709109315269" TEXT="Dangerous content">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
<node CREATED="1708564851271" ID="ID_613448886" MODIFIED="1708564871714" TEXT="e.g. Guidance for committing crimes"/>
</node>
<node CREATED="1708564875386" ID="ID_644926814" MODIFIED="1709109315269" TEXT="Bias / discrimination">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1708564298473" ID="ID_1700219454" MODIFIED="1708567014273" TEXT="Off-topic / off-brand responses">
<node CREATED="1708564692973" ID="ID_474175474" MODIFIED="1709109315264" TEXT="e.g Getting customer service chatbot to create DALL-E images">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
</node>
<node CREATED="1708564341021" FOLDED="true" ID="ID_1297973871" MODIFIED="1709109322451" TEXT="Triggering an action from an LLM that should not be allowed">
<node CREATED="1708564618378" ID="ID_396644044" MODIFIED="1708564623864" TEXT="Excessive agency"/>
<node CREATED="1708566889510" ID="ID_880174251" MODIFIED="1708566894580" TEXT="&quot;Privilege escalation&quot;"/>
</node>
<node CREATED="1708565637732" ID="ID_33293733" MODIFIED="1708565658546" TEXT="Receiving factually incorrect information from an LLM"/>
<node CREATED="1708564288702" ID="ID_130451473" MODIFIED="1708564294510" TEXT="Model denial of service?">
<node CREATED="1708565210290" ID="ID_1353260632" MODIFIED="1709109328103" TEXT="Token input limit">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1708564967253" ID="ID_1906950220" MODIFIED="1708564978023" TEXT="Cost impacts?">
<node CREATED="1708566796553" ID="ID_40141804" MODIFIED="1708566802991" TEXT="&quot;Denial of wallet&quot;"/>
</node>
<node CREATED="1708564797962" ID="ID_1495232985" MODIFIED="1709109337461" TEXT="Model theft through inference?">
<font NAME="SansSerif" SIZE="12"/>
<node CREATED="1708564943591" ID="ID_1012563842" MODIFIED="1709109341741" TEXT="Rate limiting">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1708564952475" ID="ID_1697593050" MODIFIED="1709109341738" TEXT="Monitoring excessive queries">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
<node CREATED="1708569346489" ID="ID_670829700" MODIFIED="1709109341738" TEXT="Orca LLM">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1708565813226" ID="ID_494854952" MODIFIED="1709108769528" TEXT="Sensitive information input captured in chat logs?">
<font BOLD="true" NAME="SansSerif" SIZE="12"/>
</node>
</node>
<node CREATED="1708571036635" FOLDED="true" ID="ID_1640407706" MODIFIED="1709103702198" POSITION="right" TEXT="Glossary / definitions">
<node CREATED="1708571046869" ID="ID_168141409" MODIFIED="1708571050962" TEXT="Inference"/>
<node CREATED="1708571052078" ID="ID_1518187166" MODIFIED="1708571053991" TEXT="RAG"/>
<node CREATED="1709098114922" ID="ID_563718442" MODIFIED="1709098117266" TEXT="Training"/>
<node CREATED="1709098118183" ID="ID_88381683" MODIFIED="1709098122108" TEXT="Fine-tuning"/>
<node CREATED="1709098122957" ID="ID_247132416" MODIFIED="1709098126524" TEXT="System prompt"/>
<node CREATED="1709101216826" ID="ID_662887158" MODIFIED="1709101219821" TEXT="Model drift"/>
</node>
<node CREATED="1708567740076" ID="ID_1129852913" MODIFIED="1708567744053" POSITION="right" TEXT="To consider...">
<node CREATED="1708567746066" ID="ID_907621252" MODIFIED="1708567759533" TEXT="Testing the base model vs. after mitigations are put in place"/>
<node CREATED="1708568031182" ID="ID_371611905" MODIFIED="1708568048336" TEXT="Assurance against defined objectives"/>
</node>
<node CREATED="1708563892027" FOLDED="true" ID="ID_674830650" MODIFIED="1709103699136" POSITION="left" TEXT="Reference information">
<node CREATED="1708563899813" ID="ID_1275473255" MODIFIED="1708563925798" TEXT="OWASP Top 10 for LLM applications">
<node CREATED="1708563927425" ID="ID_1966376716" MODIFIED="1708563929715" TEXT="https://owasp.org/www-project-top-10-for-large-language-model-applications/assets/PDF/OWASP-Top-10-for-LLMs-2023-v1_1.pdf"/>
</node>
<node CREATED="1708568860428" ID="ID_1595099089" MODIFIED="1708568910632" TEXT="NIST Adversarial Machine Learning">
<node CREATED="1708568912374" ID="ID_1575025497" MODIFIED="1708571803939" TEXT="https://nvlpubs.nist.gov/nistpubs/ai/NIST.AI.100-2e2023.pdf"/>
<node CREATED="1708569431741" ID="ID_979055508" MODIFIED="1708569440462" TEXT="Long and comprehensive, but dry"/>
</node>
<node CREATED="1708564131969" ID="ID_285294871" MODIFIED="1708564162967" TEXT="&quot;Gandalf&quot; prompt injection game from Lakera">
<node CREATED="1708564165305" ID="ID_1514098200" MODIFIED="1708564167195" TEXT="https://gandalf.lakera.ai/"/>
</node>
<node CREATED="1708565005003" ID="ID_801335954" MODIFIED="1708565012677" TEXT="Huggingface page on Red Teaming">
<node CREATED="1708565014091" ID="ID_943081614" MODIFIED="1708565028609" TEXT="https://huggingface.co/blog/red-teaming"/>
</node>
<node CREATED="1708567840418" ID="ID_1715498658" MODIFIED="1708567855343" TEXT="Planning red-team LLM engagements">
<node CREATED="1708567856582" ID="ID_1747814256" MODIFIED="1708567857556" TEXT="https://learn.microsoft.com/en-us/azure/ai-services/openai/concepts/red-teaming"/>
</node>
<node CREATED="1708571315109" ID="ID_1639993784" MODIFIED="1708571327160" TEXT="AI Vulnerability Database (AVID)">
<node CREATED="1708571329047" ID="ID_1454732407" MODIFIED="1708571331127" TEXT="https://avidml.org/database/"/>
</node>
<node CREATED="1708565090557" ID="ID_887063863" MODIFIED="1708577432754" TEXT="Slashdot best LLM tools">
<node CREATED="1708565104493" ID="ID_127674645" MODIFIED="1708565105921" TEXT="https://slashdot.org/software/llm-security/"/>
<node CREATED="1708565107499" ID="ID_1643370606" MODIFIED="1708565119360" TEXT="Not many of these are adversarial"/>
</node>
<node CREATED="1708577434058" ID="ID_1068422237" MODIFIED="1708577454042" TEXT="Threat modelling LLMs by GTKlondike">
<node CREATED="1708577458965" ID="ID_360329196" MODIFIED="1708577461407" TEXT="https://aivillage.org/large%20language%20models/threat-modeling-llm/"/>
</node>
</node>
<node CREATED="1708565040579" ID="ID_559282370" MODIFIED="1708565044390" POSITION="left" TEXT="Testing tools">
<node CREATED="1708565061122" ID="ID_503872425" MODIFIED="1708565062884" TEXT="Garak">
<node CREATED="1708565064083" ID="ID_1973173666" MODIFIED="1708565065070" TEXT="https://github.com/leondz/garak"/>
</node>
<node CREATED="1708565977786" ID="ID_813580705" MODIFIED="1708565981560" TEXT="LLMFuzzer">
<node CREATED="1708565983018" ID="ID_597892217" MODIFIED="1708565984040" TEXT="https://github.com/mnns/LLMFuzzer"/>
<node CREATED="1708566071513" ID="ID_1402868867" MODIFIED="1708566077640" TEXT="No longer actively maintained"/>
</node>
<node CREATED="1709098021317" ID="ID_1300210665" MODIFIED="1709098032615" TEXT="Microsoft PyRIT">
<node CREATED="1709098034494" ID="ID_1722380247" MODIFIED="1709098036794" TEXT="https://github.com/Azure/PyRIT/"/>
</node>
</node>
<node CREATED="1708568414202" ID="ID_1490062777" MODIFIED="1708568418565" POSITION="left" TEXT="To look into...">
<node CREATED="1708568426239" ID="ID_1214045897" MODIFIED="1708568433297" TEXT="Red teaming LMs with LMs">
<node CREATED="1708568419970" ID="ID_1035503635" MODIFIED="1708568421240" TEXT="https://arxiv.org/abs/2202.03286"/>
</node>
</node>
</node>
</map>
