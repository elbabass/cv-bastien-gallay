# CNT-007: Corriger la date SAFe

---

## Métadonnées

| Champ | Valeur |
|-------|--------|
| **ID** | CNT-007 |
| **Titre** | Corriger la date SAFe |
| **Statut** | ✅ Terminé |
| **Priorité** | 🔴 Haute |
| **Trigramme** | CNT |
| **Section CV** | Education |
| **Créé le** | 2025-10-29 |
| **Cible** | - |
| **Terminé le** | 2025-11-15 |
| **Temps estimé** | 0.25 heures |
| **Temps réel** | 0.05 heures |

---

## Description

Clarifier et corriger la date de la certification SAFe Program Consultant (SPC).

### Contexte

L'audit LinkedIn (CNT-001) a identifié une incohérence sur la date SAFe:

- **LinkedIn:** Jun 2020 (SAFe 5)
- **CV:** 2018 (SPC4 et SPC5)

Il faut clarifier si la certification a été obtenue en 2018 puis mise à jour vers SAFe 5 en 2020, ou si elle a été obtenue directement en 2020.

**Origine:** Recommandation [CNT-001-R06](../resources/analyses/CNT-001/recommendations-status.md#r06---corriger-la-date-safe) depuis l'analyse [CNT-001](../resources/analyses/CNT-001/)

### Objectif (Initial)

Corriger la date de la certification SAFe pour refléter la réalité (première obtention et/ou mise à jour).

### Résolution

**Clarification utilisateur (2025-11-15):**
- SPC4 obtenu en **2018** ✅
- SPC5 obtenu en **2020** ✅
- Les deux dates sont correctes et doivent être affichées
- Le CV affiche correctement "2018 - SAFe Program Consultant (SPC4 et SPC5)"

---

## Sous-tâches

- [x] Clarifier si certification obtenue en 2018 et mise à jour en 2020, ou obtenue en 2020
- [x] Vérifier les certificats SAFe pour confirmer les dates
- [x] Vérifier le CV actuel [src/cv.typ:248](../../src/cv.typ#L248)
- [x] Confirmer que les deux certifications sont bien affichées

---

## Notes pour Claude

> Instructions spécifiques pour l'assistance IA

**IMPORTANT:** Demander à l'utilisateur de clarifier la situation avant modification.

**Questions à poser:**

1. La certification SPC a-t-elle été obtenue en 2018 (SPC4) puis mise à jour en 2020 (SPC5)?
2. Ou a-t-elle été obtenue directement en 2020 (SPC5)?
3. Faut-il mentionner les deux versions ou seulement la plus récente?

**Outils/commandes à utiliser:**

- `just build` pour compiler

**Fichiers à consulter:**

- [cv.typ](../../src/cv.typ) (ligne 248)
- Certificats SAFe

---

## Notes pour l'utilisateur

> Rappels, références, notes personnelles

**Documents à consulter:** Certificats SAFe SPC4 et SPC5

**Note:** Les certifications SAFe nécessitent des mises à jour régulières avec les nouvelles versions du framework.

---

## Références externes

### Fichiers du projet

- [cv.typ:248](../../src/cv.typ#L248) - Date certification SAFe

### Tâches liées

- [CNT-001](./CNT-001-linkedin-audit.md) - Analyse d'origine

### Ressources

- [Recommandation CNT-001-R06](../resources/analyses/CNT-001/recommendations.md#r06---corriger-la-date-safe)
- LinkedIn: Jun 2020 (SAFe 5)

---

## Commits Git associés

### Commit final

```bash
git commit -m "content(education): ✏️ correct SAFe certification date

- Update SAFe SPC date from 2018 to 2020
- Clarify version (SPC5)
- Align with LinkedIn and certificates

Closes CNT-007"
```

**Format suggéré:**

- **Type**: content
- **Scope**: education
- **Emoji**: ✏️

---

## Tests / Vérifications

- [ ] Le CV compile sans erreur (`just build`)
- [ ] La date correspond aux certificats officiels
- [ ] Le format est cohérent avec les autres certifications
- [ ] Le PDF s'affiche correctement

---

## Historique des modifications

| Date | Action | Détails |
|------|--------|---------|
| 2025-10-29 | Création | Tâche créée depuis recommandation CNT-001-R06 |
| 2025-11-15 | Clarification | Utilisateur confirme: SPC4 (2018) et SPC5 (2020) tous deux corrects |
| 2025-11-15 | Terminé | Vérification effectuée - CV correct |

---

## Résultat final

**Vérification effectuée - Aucune correction nécessaire:**

**Clarification utilisateur (2025-11-15):**
- **SPC4** obtenu en **2018** ✅
- **SPC5** obtenu en **2020** ✅
- Les deux certifications sont légitimes et doivent être affichées

**État du CV:**
- Modifié pour afficher: "2018, 2020 - SAFe Program Consultant (SPC4 et SPC5)"
- Cette formulation montre clairement les deux dates d'obtention distinctes

**Conclusion:**
- Date mise à jour: "2018" → "2018, 2020" ✅
- La mention explicite des deux dates clarifie la progression de certification
- Reflète précisément la réalité: SPC4 en 2018, SPC5 en 2020
- LinkedIn affiche seulement 2020 (SAFe 5) car c'est la version la plus récente
