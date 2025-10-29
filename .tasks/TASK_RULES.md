# Règles de Gestion des Tâches

Ce document définit les règles et procédures pour la gestion des tâches dans le projet CV.

## Table des matières

- [Definition of Ready (DoR)](#definition-of-ready-dor)
- [Definition of Done (DoD)](#definition-of-done-dod)
- [Workflow Standard](#workflow-standard)
- [Quality Gates](#quality-gates)
- [Gestion des Erreurs](#gestion-des-erreurs)

---

## Definition of Ready (DoR)

Une tâche est considérée comme "prête à être démarrée" si elle respecte TOUS les critères suivants:

### Critères Obligatoires

- ✓ **Fichier de tâche créé** avec le template complet ([TASKS/TEMPLATE.md](TASKS/TEMPLATE.md))
- ✓ **ID unique et valide** au format `XXX-NNN` (trigramme + numéro à 3 chiffres)
- ✓ **Trigramme approprié** choisi parmi CNT, TPL, QUA, PIP, LAY, DOC, INF
- ✓ **Description claire** avec sections "Contexte" et "Objectif" remplies
- ✓ **Critères d'acceptation** explicites dans "Tests / Vérifications"
- ✓ **Entrée ajoutée** dans [TASKS.md](TASKS.md) section "Tâches actives"
- ✓ **Statistiques mises à jour** dans [TASKS.md](TASKS.md)

### Validation

Avant de démarrer une tâche, vérifier que:

1. Le fichier de tâche existe dans `TASKS/XXX-NNN-*.md`
2. Le statut est "⏳ À faire" (ou "🚫 Bloqué" si on débloque)
3. L'ID n'est pas déjà utilisé par une autre tâche
4. Toutes les sections obligatoires du template sont remplies

### Exceptions

Une tâche peut être démarrée même si tous les critères ne sont pas remplis dans les cas suivants:

- Tâche urgente nécessitant une action immédiate
- Exploration préliminaire pour mieux comprendre le besoin

Dans ces cas, documenter l'exception dans "Notes pour l'utilisateur".

---

## Definition of Done (DoD)

Une tâche est considérée comme "terminée" si elle respecte TOUS les critères suivants:

### Critères de Complétion

- ✓ **Toutes les sous-tâches cochées** dans le fichier de tâche
- ✓ **CV compile sans erreur** (`typst compile cv.typ` réussit)
- ✓ **Modifications vérifiées** dans le PDF généré
- ✓ **Section "Résultat final" complétée** avec détails des réalisations
- ✓ **Dates renseignées** ("Terminé le" et optionnellement "Temps réel")
- ✓ **Commit final créé** avec message formaté et `Closes XXX-NNN`
- ✓ **Statut "✅ Terminé"** dans le fichier de tâche
- ✓ **Entrée déplacée** vers "Tâches terminées" dans [TASKS.md](TASKS.md)
- ✓ **Statistiques actualisées** dans [TASKS.md](TASKS.md)

### Tests de Validation

Avant de considérer une tâche comme terminée, s'assurer que:

**Tests Techniques:**

1. Le CV compile sans erreur ni warning
2. Le PDF s'ouvre et s'affiche correctement
3. Les modifications sont visibles et correctes dans le PDF

**Tests de Qualité:**

1. Le contenu respecte la charte graphique existante
2. Aucune régression n'a été introduite
3. Les autres sections du CV ne sont pas affectées

**Tests Documentaires:**

1. La documentation pertinente a été mise à jour
2. Les commits respectent les conventions ([GIT_WORKFLOW.md](GIT_WORKFLOW.md))
3. Les références de fichiers dans les notes sont à jour

### Exceptions

Une tâche peut être considérée comme terminée même si tous les critères ne sont pas remplis dans les cas suivants:

- Tâche de recherche ou d'exploration sans livrable concret
- Tâche bloquée par une dépendance externe (documenter le blocage)
- Décision de ne pas implémenter (documenter la raison)

Dans ces cas, documenter l'exception dans "Résultat final".

---

## Workflow Standard

### Phase 1: Démarrage d'une Tâche

**Commande:** `/task-start XXX-NNN`

**Étapes automatisées:**

1. Validation de la DoR
2. Mise à jour du statut vers "🔄 En cours" dans le fichier de tâche
3. Mise à jour synchronisée de [TASKS.md](TASKS.md)
4. Création de la branche Git: `task/XXX-NNN-slug`
5. Commit initial: `chore(tasks): 🔧 start XXX-NNN`
6. Ajout d'une entrée dans "Historique des modifications"
7. Affichage du contexte (description, sous-tâches, notes pour Claude)

**Actions manuelles requises:**

- Aucune

**Résultat attendu:**

- Branche Git créée et active
- Fichiers mis à jour avec le bon statut
- Contexte chargé pour commencer le travail

### Phase 2: Travail sur une Tâche

**Cycle de travail:**

1. Consulter les sous-tâches dans le fichier de tâche
2. Implémenter les changements nécessaires
3. Cocher les sous-tâches au fur et à mesure
4. Faire des commits incrémentaux avec `Refs XXX-NNN`

**Format des commits incrémentaux:**

```bash
git commit -m "type(scope): emoji description

Details about the change.

Refs XXX-NNN"
```

**Bonnes pratiques:**

- Faire des commits atomiques (une fonctionnalité = un commit)
- Tester régulièrement avec `typst compile cv.typ`
- Cocher les sous-tâches dès qu'elles sont terminées
- Mettre à jour les notes si nécessaire

### Phase 3: Finalisation d'une Tâche

**Commande:** `/task-complete XXX-NNN`

**Étapes automatisées:**

1. Validation de la DoD
2. Compilation automatique du CV pour vérifier les erreurs
3. Prompt pour remplir "Résultat final" et "Temps réel"
4. Mise à jour du statut vers "✅ Terminé"
5. Remplissage automatique de "Terminé le"
6. Génération et création du commit final avec `Closes XXX-NNN`
7. Déplacement de l'entrée de "Actives" vers "Terminées" dans [TASKS.md](TASKS.md)
8. Mise à jour des statistiques
9. Proposition de merge de la branche

**Actions manuelles requises:**

- Renseigner le résultat final (prompt interactif)
- Confirmer ou éditer le message de commit généré
- Décider de merger la branche ou non

**Résultat attendu:**

- Tâche marquée comme terminée
- Dashboard mis à jour
- Commit final créé avec référence
- Branche prête à être mergée ou déjà mergée

### Phase 4: Archivage (Optionnel)

**Commande:** `/task-archive XXX-NNN`

**Étapes automatisées:**

1. Validation que la tâche est "✅ Terminé"
2. Déplacement du fichier vers `.archived-tasks/`
3. Retrait de l'entrée de [TASKS.md](TASKS.md)
4. Mise à jour des statistiques

**Actions manuelles requises:**

- Aucune

**Résultat attendu:**

- Fichier archivé mais historique Git conservé
- Dashboard nettoyé
- Statistiques actualisées

---

## Quality Gates

Points de contrôle automatiques pour garantir la qualité.

### Gate 1: Validation au Démarrage

**Quand:** Avant de démarrer une tâche avec `/task-start`

**Vérifications:**

- Le fichier de tâche existe
- Le statut est "À faire" ou "Bloqué"
- L'ID est unique
- Les sections obligatoires sont remplies

**Action en cas d'échec:**

- Afficher l'erreur avec détails
- Suggérer la correction à apporter
- Ne pas créer la branche Git

### Gate 2: Validation en Cours

**Quand:** À chaque compilation du CV

**Vérifications:**

- Le CV compile sans erreur
- Aucun warning critique
- Le PDF est généré correctement

**Action en cas d'échec:**

- Afficher l'erreur de compilation
- Ne pas permettre de terminer la tâche
- Bloquer le commit si nécessaire

### Gate 3: Validation à la Finalisation

**Quand:** Avant de terminer une tâche avec `/task-complete`

**Vérifications:**

- Toutes les sous-tâches sont cochées
- Le CV compile sans erreur
- Le fichier de tâche est complet
- Le format de commit est valide

**Action en cas d'échec:**

- Afficher les éléments manquants
- Proposer de compléter interactivement
- Ne pas créer le commit final tant que non résolu

### Gate 4: Validation de Cohérence

**Quand:** À la demande avec `/task-validate`

**Vérifications:**

- Cohérence entre task files et [TASKS.md](TASKS.md)
- Format valide de tous les task files
- Absence d'IDs en double
- Statistiques correctes

**Action en cas d'échec:**

- Lister toutes les incohérences
- Proposer des corrections automatiques
- Permettre une réparation manuelle si nécessaire

---

## Gestion des Erreurs

### Mode Interactif

Lorsqu'une erreur est détectée, les commandes adoptent un comportement interactif:

**Options proposées:**

1. **Corriger maintenant** - Claude propose de corriger l'erreur automatiquement
2. **Ignorer et continuer** - Pour les cas exceptionnels (avec warning)
3. **Annuler** - Stopper l'opération sans changement

**Exemple:**

```text
❌ Erreur: La tâche CNT-003 n'existe pas dans TASKS/

Options:
1. Créer la tâche maintenant
2. Vérifier l'ID (peut-être une faute de frappe?)
3. Annuler l'opération

Votre choix: _
```

### Types d'Erreurs

**Erreurs Bloquantes:**

- ID de tâche invalide ou inexistant
- Fichier de tâche manquant ou corrompu
- Erreur de compilation du CV
- Conflit Git non résolu

**Erreurs Non-Bloquantes (Warnings):**

- Sous-tâches incomplètes mais tâche marquée terminée
- Temps réel non renseigné
- Section "Résultat final" vide
- Statistiques légèrement désynchronisées

**Erreurs Récupérables:**

- Format de commit incorrect (correction automatique)
- Statut invalide (correction interactive)
- Entrée manquante dans [TASKS.md](TASKS.md) (ajout automatique)

### Stratégies de Récupération

**Validation Failed:**

1. Afficher clairement ce qui ne va pas
2. Proposer une correction automatique si possible
3. Permettre la correction manuelle sinon
4. Ne pas bloquer indéfiniment l'utilisateur

**Synchronisation Failed:**

1. Identifier la source de désynchronisation
2. Proposer de resynchroniser automatiquement
3. Sauvegarder l'état actuel avant correction
4. Valider après correction

**Git Conflicts:**

1. Afficher les fichiers en conflit
2. Proposer de résoudre les conflits simples
3. Guider vers la résolution manuelle si complexe
4. Ne pas forcer de merge automatique

---

## Références

- [TASKS.md](TASKS.md) - Dashboard central des tâches
- [TASKS/TEMPLATE.md](TASKS/TEMPLATE.md) - Template de tâche
- [GIT_WORKFLOW.md](GIT_WORKFLOW.md) - Conventions Git
- [CLAUDE.md](CLAUDE.md) - Instructions générales
- [.claude/commands/README.md](.claude/commands/README.md) - Documentation des commandes
