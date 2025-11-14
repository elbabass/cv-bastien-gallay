# CNT-013: Analyse ancien CV > 5 ans (2019)

---

## Métadonnées

| Champ | Valeur |
|-------|--------|
| **ID** | CNT-013 |
| **Titre** | Analyse ancien CV > 5 ans (2019) |
| **Statut** | 🔄 En cours |
| **Priorité** | 🔴 Haute |
| **Trigramme** | CNT |
| **Section CV** | Experience |
| **Créé le** | 2025-11-14 |
| **Cible** | 2025-11-20 |
| **Terminé le** | - |
| **Temps estimé** | 2-3 heures |
| **Temps réel** | - |

---

## Description

Analyser l'ancien CV (version 2019, > 5 ans d'ancienneté) pour identifier les informations manquantes ou incomplètes dans le CV actuel concernant les expériences antérieures.

### Contexte

L'ancien CV (version 2019, > 5 ans d'ancienneté) contient des informations détaillées sur les expériences antérieures (Boonty, i-BP, DEKRA, etc.) qui ne sont plus présentes ou sont incomplètes dans le CV actuel. Cette analyse permettra d'enrichir le CV avec des dates précises, des missions détaillées et des accomplissements oubliés.

Les sources sont disponibles dans `.tasks/resources/sources-analyses/CV-2019/` en formats PDF et MD.

Cette analyse s'inscrit dans le processus complet: Source → Extraction → Analyse → Recommandations → Tâches → Modifications CV.

### Objectif

Extraire les données de l'ancien CV (PDF et MD), effectuer une analyse comparative avec le CV actuel, et produire des recommandations pour enrichir les expériences antérieures à 2013.

**Résultat attendu:**
- Fichier d'audit structuré dans `audits/CNT-013/`
- Analyse comparative dans `analyses/CNT-013/`
- Recommandations priorisées dans `analyses/CNT-013/recommendations.md`
- Fichier de tracking pour `/task-from-analysis`

---

## Sous-tâches

- [ ] Extraire les données de `.tasks/resources/sources-analyses/CV-2019/*.pdf`
- [ ] Extraire les données de `.tasks/resources/sources-analyses/CV-2019/*.md`
- [ ] Créer le fichier d'audit `audits/CNT-013/cv-2019.md`
- [ ] Comparer avec le CV actuel (expériences 2004-2013)
- [ ] Identifier les écarts et manques (dates, entreprises, missions)
- [ ] Créer l'analyse comparative `analyses/CNT-013/audit-report.md`
- [ ] Générer les recommandations avec priorités `analyses/CNT-013/recommendations.md`
- [ ] Créer le fichier de tracking `analyses/CNT-013/recommendations-status.md`
- [ ] Mettre à jour `.tasks/ANALYSES.md`

---

## Notes pour Claude

> Instructions spécifiques pour l'assistance IA

**Processus d'analyse:**

1. **Extraction des données (utiliser `/analyze-source`):**
   - Lire le PDF de l'ancien CV
   - Lire le MD de l'ancien CV
   - Structurer les données selon le template d'extraction
   - Sauvegarder dans `.tasks/resources/audits/CNT-013/cv-2019.md`

2. **Analyse comparative:**
   - Comparer chaque expérience (dates, durées, descriptions)
   - Identifier les expériences manquantes (i-BP, DEKRA)
   - Identifier les écarts de dates (Boonty, etc.)
   - Identifier les détails manquants (missions, accomplissements)

3. **Génération des recommandations:**
   - Utiliser le template `recommendations-template.md`
   - Prioriser selon l'impact (🔴🔴 / 🔴 / 🟡 / 🟢)
   - Créer le fichier de tracking `recommendations-status.md`
   - Format des IDs: `CNT-013-R01`, `CNT-013-R02`, etc.

4. **Mise à jour du dashboard:**
   - Ajouter l'analyse dans `.tasks/ANALYSES.md`
   - Indiquer le nombre de recommandations

**Outils/commandes à utiliser:**

- `/analyze-source --task-id=CNT-013` pour extraction guidée
- `just build` pour vérifier le CV actuel
- Lecture des templates dans `.tasks/resources/templates/`

**Fichiers à consulter:**

- [cv.typ](../../src/cv.typ) - CV actuel (expériences à comparer)
- `.tasks/resources/sources-analyses/CV-2019/` - Sources anciennes
- `.tasks/resources/templates/audit-template.md` - Template d'analyse
- `.tasks/resources/templates/recommendations-template.md` - Template recommandations

**Fichiers à créer:**

- `.tasks/resources/audits/CNT-013/cv-2019.md` - Extraction structurée
- `.tasks/resources/analyses/CNT-013/audit-report.md` - Analyse comparative
- `.tasks/resources/analyses/CNT-013/recommendations.md` - Recommandations
- `.tasks/resources/analyses/CNT-013/recommendations-status.md` - Tracking
- `.tasks/resources/analyses/CNT-013/metrics.md` - Statistiques

---

## Notes pour l'utilisateur

> Rappels, références, notes personnelles

**Expériences à enrichir prioritairement:**

- **CNT-004** - Boonty (écart de -13 mois à clarifier)
- **CNT-008** - i-BP (expérience manquante)
- **CNT-009** - DEKRA (expérience manquante)
- Autres expériences antérieures à 2013

**Points d'attention:**

- Vérifier la cohérence des dates entre 2004-2013
- Identifier les trous dans le parcours
- Récupérer les missions/projets détaillés
- Noter les technologies/compétences mentionnées

**Après l'analyse:**

- Utiliser `/task-from-analysis --analysis-id=CNT-013` pour créer les tâches
- Filtrer par priorité: `--filter=high` pour les corrections critiques
- Les tâches créées viendront enrichir ou remplacer CNT-004, CNT-008, CNT-009

---

## Références externes

### Fichiers du projet

- [cv.typ](../../src/cv.typ) - CV actuel à comparer
- [CNT-001](./CNT-001-linkedin-audit.md) - Audit LinkedIn (méthodologie similaire)
- `.tasks/resources/sources-analyses/CV-2019/` - Sources CV 2019

### Tâches liées

- [CNT-001](./CNT-001-linkedin-audit.md) - Audit LinkedIn (exemple d'analyse complète)
- [CNT-004](./CNT-004-corriger-dates-boonty.md) - Dates Boonty à clarifier
- [CNT-008](./CNT-008-ajouter-experience-ibp.md) - Expérience i-BP manquante
- [CNT-009](./CNT-009-ajouter-experience-dekra.md) - Expérience DEKRA manquante

### Ressources

- [ANALYSES.md](../ANALYSES.md) - Dashboard des analyses
- [Templates d'analyse](../resources/templates/) - Templates à utiliser
- [Analyse CNT-001 exemple](../resources/analyses/CNT-001/) - Exemple complet

---

## Commits Git associés

### En cours de travail

```bash
git commit -m "docs(audit): 🔍 extract data from old CV (2019)

Extracting experience data from CV-2019 sources.

Refs CNT-013"
```

### Commit final

```bash
git commit -m "docs(audit): 📝 complete old CV (2019) analysis

- Extracted data from CV-2019 (PDF + MD)
- Created comparative analysis report
- Generated prioritized recommendations
- Created tracking file for task generation
- Updated ANALYSES.md dashboard

Identified X gaps and Y missing experiences from 2004-2013 period.

Closes CNT-013"
```

**Format suggéré:**

- **Type**: docs (documentation/analyse)
- **Scope**: audit, analysis
- **Emoji**: 📝 (documentation), 🔍 (investigation)

---

## Tests / Vérifications

- [ ] Fichier `audits/CNT-013/cv-2019.md` créé et structuré
- [ ] Fichier `analyses/CNT-013/audit-report.md` complet
- [ ] Fichier `analyses/CNT-013/recommendations.md` avec priorités
- [ ] Fichier `analyses/CNT-013/recommendations-status.md` au bon format
- [ ] Dashboard `.tasks/ANALYSES.md` mis à jour
- [ ] Toutes les expériences antérieures à 2013 comparées
- [ ] Les IDs de recommandations suivent le format `CNT-013-RXX`
- [ ] Les commits suivent la convention

---

## Historique des modifications

| Date | Action | Détails |
|------|--------|---------|
| 2025-11-14 | Création | Tâche créée pour analyse CV 2019 |
| 2025-11-14 | En cours | Début du travail |

---

## Résultat final

[À remplir une fois la tâche terminée]

**Ce qui a été fait:**

- [Liste des réalisations]

**Difficultés rencontrées:**

- [Problèmes et solutions]

**Améliorations futures:**

- [Idées pour aller plus loin]
