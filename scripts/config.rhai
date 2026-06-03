let titles_type = [
    "Benchmark", "Dataset", "Evaluation", "Survey", "Review", "Overview",
    "Leaderboard", "Challenge"
];

let titles_model = [
    "Multimodal Large Language Model", "Large Vision-Language Model",
    "Vision-Language Model", "Vision Language Model",
    "Vision-Language", "Vision Language",
    "MLLM", "LVLM", "VLM",
    "BLIP-2", "MiniGPT-4", "Qwen-VL", "InternVL",
    "LLaVA", "CLIP", "BLIP", "Flamingo", "Kosmos",
    "GPT-4V", "GPT-4o", "Gemini"
];

let titles_method = [
    // VLM and VQA
    "Knowledge-Based Visual Question Answering",
    "Knowledge-based Visual Question Answering",
    "Knowledge-Based VQA", "Knowledge-based VQA", "KB-VQA",
    "Visual Question Answering", "VQA",
    "Multimodal Question Answering", "Visual Reasoning",
    "Multimodal Reasoning", "Compositional Reasoning",

    // Knowledge and retrieval
    "Knowledge-Intensive", "Knowledge Intensive",
    "Knowledge-Augmented", "Knowledge Augmented",
    "Knowledge-Aware", "Knowledge Aware",
    "Knowledge Graph", "Knowledge Base", "Knowledge Retrieval",
    "Commonsense", "World Knowledge", "Entity Linking",
    "Retrieval-Augmented", "Retrieval Augmented", "RAG",
    "Grounding", "Visual Grounding", "Factuality", "Factual Knowledge",

    // Abstention, uncertainty, and trustworthy prediction
    "Abstention", "Abstain", "Selective Prediction", "Selective Generation",
    "Selective Classification", "Reject Option", "Refusal",
    "Answerability", "Unanswerable", "Uncertainty Quantification",
    "Uncertainty", "Calibration", "Confidence", "Conformal",
    "Risk-Coverage", "Risk Coverage", "Out-of-Distribution",
    "Out of Distribution", "OOD", "Hallucination", "Faithfulness",
    "Trustworthy", "Reliability", "Robustness"
];
let titles =  titles_model + titles_method + titles_type;
let authors_array = [
    "Qian Ma", "Ma Qian", "Van Qian",

    // Wiki-PRF
    "Yuyang Hong", "Jiaqi Gu", "Qi Yang", "Lubin Fan", "Yue Wu",
    "Ying Wang", "Kun Ding", "Shiming Xiang", "Jieping Ye",

    // ReflectiVA
    "Federico Cocchi", "Nicholas Moratelli", "Marcella Cornia",
    "Lorenzo Baraldi", "Rita Cucchiara"
];

let conferences = [
    // AI
    "AAAI", "AAMAS", "ACM MM", "AISTATS", "ALT", "CEC", "ECAI", "FUZZ IEEE", "GECCO", "ICANN", "ICAPS", "ICCBR", "ICONIP", "ICRA", "ICTAI", "IJCAI", "IJCNN", "IROS", "KR", "KSEM", "SIGGRAPH", "STOC", "UAI", "PPSN", "PRICAI", "TAAI",
    // CV
    "3DV", "ACCV", "ACM MM", "BMVC", "CVPR", "ECCV", "ICCV", "ICDAR", "ICIP", "ICME", "ICPR", "IEEE VIS", "MICCAI", "SIGGRAPH", "WACV",
    // DM
    "AKBC", "APWeb", "CIKM", "DASFAA", "ECML-PKDD", "ICDE", "ICDM", "ICDT", "KDD", "LREC", "MDM", "PAKDD", "PODS", "RecSys", "SDM", "SIGMOD", "VLDB", "WSDM", "WWW", "EDBT", "CIDR",
    // IR
    "ECIR", "ESWC", "ICMR", "ICTIR", "ISWC", "SIGIR",
    // ML
    "ACML", "AISTATS", "ECML", "ICLR", "ICML", "ML4H", "NeurIPS", "NIPS", "UAI",
    // NLP
    "AACL", "ACL", "CCL", "COLING", "COLT", "CoNLL", "EACL", "EMNLP", "ICASSP", "ICDAR", "ICONIP", "INTERSPEECH", "LREC", "NAACL", "NLPCC", "RepL4NLP", "SIGDIAL", "SemEval", "WANLP", "WASSA", "WOAH",
    // Arch
    "ASPLOS", "ATC", "DATE", "EuroSys", "FAST", "HPCA", "ISCA", "MICRO", "PPoPP", "SC", "SoCC",
    // System
    "FSE/ESEC", "ICSE", "ISSTA", "OSDI", "SOSP",
    // Security
    "ACSA", "AsiaCCS", "CCS", "DSN", "ESORICS", "EuroS&P", "ICICS", "NDSS", "RAID", "SP", "USENIX Security"
];

let start = conferences.shift();
let conferences_rg = conferences.reduce(|sum, v| sum + "|" + v, start);
let conferences_rg = "(" + conferences_rg + ")([\\s'-]*\\d+)?";

let start = titles.shift();
let title_rg = titles.reduce(|sum, v| sum + "|" + v, start);

let start = authors_array.shift();
let authors_rg = authors_array.reduce(|sum, v| sum + "|" + v, start);

export title_rg;
export authors_rg;
export conferences_rg;
