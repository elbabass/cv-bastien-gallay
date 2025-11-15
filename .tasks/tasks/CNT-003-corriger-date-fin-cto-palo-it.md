# CNT-003: Corriger la date de fin CTO chez PALO IT

---

## Métadonnées

| Champ | Valeur |
|-------|--------|
| **ID** | CNT-003 |
| **Titre** | Corriger la date de fin CTO chez PALO IT |
| **Statut** | 🔄 En cours |
| **Priorité** | 🔴 Haute |
| **Trigramme** | CNT |
| **Section CV** | Experience |
| **Créé le** | 2025-10-29 |
| **Cible** | - |
| **Terminé le** | - |
| **Temps estimé** | 0.25 heures |
| **Temps réel** | - |

---

## Description

Corriger la date de fin du poste CTO chez PALO IT pour l'aligner avec LinkedIn.

### Contexte

L'audit LinkedIn (CNT-001) a identifié un écart de -2 mois sur la date de fin:

- **LinkedIn:** nov. 2024 - **oct. 2025**
- **CV:** 10/2024 - **08/2025**
- **Écart:** -2 mois

**Origine:** Recommandation [CNT-001-R02](../resources/analyses/CNT-001/recommendations-status.md#r02---corriger-la-date-de-fin-cto-chez-palo-it) depuis l'analyse [CNT-001](../resources/analyses/CNT-001/)

### Objectif

Mettre à jour le CV avec la date exacte de fin (octobre 2025) pour assurer la cohérence avec LinkedIn.

---

## Sous-tâches

- [ ] Modifier la date de fin de 08/2025 à 10/2025 dans [src/cv.typ:107](../../src/cv.typ#L107)
- [ ] Compiler le CV avec `just build`
- [ ] Vérifier le rendu dans le PDF généré
- [ ] Valider la cohérence des dates

---

## Notes pour Claude

> Instructions spécifiques pour l'assistance IA

Cette correction est simple et directe. La date LinkedIn (oct. 2025) doit être utilisée.

**Outils/commandes à utiliser:**

- `just build` pour compiler après modification
- Vérifier que la date est bien formatée (10/2025)

**Fichiers à consulter:**

- [cv.typ](../../src/cv.typ) (ligne 107)

---

## Notes pour l'utilisateur

> Rappels, références, notes personnelles

Correction mineure mais importante pour la cohérence globale du CV.

---

## Références externes

### Fichiers du projet

- [cv.typ:107](../../src/cv.typ#L107) - Date de fin CTO PALO IT

### Tâches liées

- [CNT-001](./CNT-001-linkedin-audit.md) - Analyse d'origine

### Ressources

- [Recommandation CNT-001-R02](../resources/analyses/CNT-001/recommendations.md#r02---corriger-la-date-de-fin-cto-chez-palo-it)
- LinkedIn: nov. 2024 - oct. 2025

---

## Commits Git associés

### Commit final

```bash
git commit -m "content(experience): ✏️ correct PALO IT CTO end date

- Update end date from 08/2025 to 10/2025
- Align with LinkedIn profile
- Fix -2 months discrepancy

Closes CNT-003"
```

**Format suggéré:**

- **Type**: content
- **Scope**: experience
- **Emoji**: ✏️

---

## Tests / Vérifications

- [ ] Le CV compile sans erreur (`just build`)
- [ ] Le PDF affiche 10/2025
- [ ] La date est cohérente avec le format du CV
- [ ] Les commits suivent la convention

---

## Historique des modifications

| Date | Action | Détails |
|------|--------|---------|
| 2025-10-29 | Création | Tâche créée depuis recommandation CNT-001-R02 |

---

## Résultat final

[À remplir une fois la tâche terminée]
