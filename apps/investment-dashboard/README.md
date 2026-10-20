# Portfolio Lens

A static, zero-dependency investment **tracking** MVP in `apps/investment-dashboard/`. It is not an investment trading service and does not connect to brokerages or provide live prices.

## Features
- Manually add/edit/remove asset holdings (name, symbol, category, units, average purchase cost and current price)
- Portfolio current value, cost basis and unrealized gain/loss
- Allocation donut chart grouped by asset category
- CSV export
- Browser-local persistence

## Run
Open `index.html` in a modern browser, or run:

```bash
cd apps/investment-dashboard
python3 -m http.server 8080
```

Then open http://localhost:8080.

## Limitations / security
- The selected display currency **labels** all numbers but does not convert prices. Enter all holdings in a single currency. Don't mix GHS, USD etc. inside one portfolio.
- Browser localStorage has no encryption, account synchronization or backup. Export CSV to preserve data. Do not store sensitive account identifiers.
- No live market feed, tax/fees calculations, dividends, realized gains, or historical returns.
- This is a standalone static web app. REA is an optional reverse-engineering utility under `integrations/rea` **on a separate Git branch**; it is not needed to build/run this app. No claim is made that REA or Codex has executed this app.
- The `master` branch is unchanged.
