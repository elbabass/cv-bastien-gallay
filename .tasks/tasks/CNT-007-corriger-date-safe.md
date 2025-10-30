# CNT-007: Corriger la date SAFe

---

## Métadonnées

| Champ | Valeur |
|-------|--------|
| **ID** | CNT-007 |
| **Titre** | Corriger la date SAFe |
| **Statut** | ⏳ À faire |
| **Priorité** | 🔴 Haute |
| **Trigramme** | CNT |
| **Section CV** | Education |
| **Créé le** | 2025-10-29 |
| **Cible** | - |
| **Terminé le** | - |
| **Temps estimé** | 0.25 heures |
| **Temps réel** | - |

---

## Description

Clarifier et corriger la date de la certification SAFe Program Consultant (SPC).

### Contexte

L'audit LinkedIn (CNT-001) a identifié une incohérence sur la date SAFe:

- **LinkedIn:** Jun 2020 (SAFe 5)
- **CV:** 2018 (SPC4 et SPC5)

Il faut clarifier si la certification a été obtenue en 2018 puis mise à jour vers SAFe 5 en 2020, ou si elle a été obtenue directement en 2020.

**Origine:** Recommandation [CNT-001-R06](../resources/analyses/CNT-001/recommendations-status.md#r06---corriger-la-date-safe) depuis l'analyse [CNT-001](../resources/analyses/CNT-001/)

### Objectif

Corriger la date de la certification SAFe pour refléter la réalité (première obtention et/ou mise à jour).

---

## Sous-tâches

- [ ] Clarifier si certification obtenue en 2018 et mise à jour en 2020, ou obtenue en 2020
- [ ] Vérifier les certificats SAFe pour confirmer les dates
- [ ] Mettre à jour [src/cv.typ:248](../../src/cv.typ#L248) avec la date correcte
- [ ] Décider s'il faut mentionner SPC4 (2018) ET SPC5 (2020) ou seulement SPC5 (2020)
- [ ] Compiler le CV avec `just build`
- [ ] Vérifier le rendu

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

---

## Résultat final

[À remplir une fois la tâche terminée]
