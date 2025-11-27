# Supply Chain Distribution Centers Database & Reporting

## Executive Summary
Designed a compact supply chain database with **10 distribution centers** and **14 delivery operators**, then produced an **“Important Operators” report** (TotalValue > 100). This showcases **data modeling, SQL/Access**, and **reporting** skills for real-world logistics operations.

## Business Problem
HQ leadership needs a quick way to identify **which delivery operators are handling the highest-value deliveries** so managers can **prioritize resources** and monitor performance by location.

## Solution & Impact
- **Relational model** with `DistributionCenter` (1) → `DeliveryOperator` (many).
- **Important Operators** filter (`TotalValue > 100`) surfaces high-value workload.
- **Impact**: faster prioritization and visibility; managers focus where value is concentrated.

**Estimated Value Impact (illustrative):**
- 10–20% improvement in route planning and supervisor focus for high-value deliveries.
- Potential 2–5% increase in on-time, high-value throughput.

## Methodology
1. Data design in MS Access (two tables, enforced referential integrity).
2. CSVs + SQL to enable re-creation.
3. Query: `TotalValue > 100`.
4. Simple visualization of the important operators.

## Skills Used / Learned
`Relational Modeling`, `ER Diagram`, `SQL (MS Access)`, `Data Cleaning`, `Reporting`, `Python (reproducibility)`

## Results / Screenshot
![Important Operators](docs/images/important_operators.png)

## Repository Structure
```
data/                   # CSV sources
sql/                    # schema and sample queries
scripts/                # tiny Python helper scripts
docs/images/            # ERD + charts
```
## How to Reproduce
- Access: run `sql/schema.sql`, import `data/*.csv`, create relationship on `DCID`, and filter `TotalValue > 100`.
- Python: `python scripts/important_operators.py`

## Recommendations & Next Steps
- Add **driver performance KPIs** (on-time rate, distance, capacity).
- Introduce **inventory & SKU granularity** and **geo-coordinates** for network optimization.
- Build a **Power BI/Tableau** dashboard for managers.

## Limitations
- Synthetic sample data; extend to live data feeds or larger datasets.