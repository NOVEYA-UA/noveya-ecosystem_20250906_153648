# Parameters (тарифы, формулы, коэффициенты)

## Тариф узла
D = α·mass + β·value + γ·eco_factor + δ·lane_load − ε·local_quota

### Публичные коэффициенты (пример начальных):
α=2 (у.е./кг), β=0.5%, γ(class B)=150, δ=100, ε по решению громады.

## Work-to-Earn
NVT = R0·e^(−λt) × H × Q × ρ  (Q: 0.8–1.2; ρ: 0.9–1.1)

## Value-to-Earn
Pool_V2E = κ × ΔGVA_total
NVT_to_project = Pool_V2E × (ΔGVA_project / ΣΔGVA_all)

## ENERGON (ECR)
ECR = k × E_net × η_dist × (1 − losses) × μ_priority
- η_dist: учёт ровности нагрузки, локализации потребления, доли утилизации тепла.
- μ_priority: 0.9–1.1 (зелёные/критические коридоры).

## Governance
VP = sqrt(NVT_staked) × f(lockup) + β×RepScore + γ×WorkScore
Пауза/апелляция: 48–72 ч; кэп на влияние одного участника.

> Все изменения — PR + обсуждение + голосование DAO. История версий — через git-теги.
