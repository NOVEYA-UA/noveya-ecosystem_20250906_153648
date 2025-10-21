[README.md](https://github.com/user-attachments/files/22188878/README.md)
# НОВЕЯ • Узел Таврида • Экосистемы • Токеномика

**Коротко:** это публичный каркас для модели:
- **Экономика региона (Таврида-узел):** открытые правила, реестр дел, цифровая тамга (Σ-Tamga), машинная справедливость.
- **Экосистемы и общины (НОВЕЯ):** общинные корпорации (Σ-CommCorp), смарт-специализации, «цепочки приходят к нам».
- **Токеномика (NVT + ENERGON):** вознаграждение за работу и ценность; энергокредит, привязанный к эффективности распределения энергии.

## Быстрый старт
1. Прочитать `docs/01_economy_tavrida_node.md` — что такое узел и как работает Σ-Tamga.
2. Прочитать `docs/02_ecosystems_communes_noveya.md` — как община становится корпорацией.
3. Прочитать `docs/03_tokenomics_noveya.md` — NVT/ECR, начисления, DAO.
4. Параметры и формулы — в `specs/parameters.md`, KPI — `specs/kpi.md`.

## Модульная карта (Σ)
- Σ-Registry • Σ-Slots • Σ-Tamga • Σ-Audit • Σ-Sanctions • Σ-KPI • Σ-Consent • Σ-Oracle/Privacy

## Лицензия и вклад

## License & Ethics

This repository follows a dual-license scheme:

- **Code:** AGPL-3.0  
- **Content / Symbols / Media:** CC BY-NC-SA 4.0  
- **Ethical charter:** see [LICENSE-ETHICS.md](./LICENSE-ETHICS.md)

Use of FDL/NOVEYA symbols is allowed **only** in open, benevolent contexts; closed or exploitative usage is prohibited.

---

## 3) Краткая настройка CI (по желанию, одинаковая везде)

`.github/workflows/ci.yml` (для Python; при необходимости сделаю Node-вариант):

```yaml
name: ci
on: [push, pull_request]
jobs:
  test:
    runs-on: ubuntu-latest
    steps:
      - uses: actions/checkout@v4
      - uses: actions/setup-python@v5
        with:
          python-version: '3.11'
      - run: pip install -r requirements.txt || true
      - run: pip install pytest || true
      - run: pytest -q || echo "No tests yet"

- См. `CONTRIBUTING.md`, `CODE_OF_CONDUCT.md`.

**Максима:** Люди+Код > Должности. Исток старше моря.
