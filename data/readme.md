# Notes

- As an artifact of how this project evolved, files that are not prepended with a schoolname are implied to be yale. For example `players.json` should actually be `yale_players.json`.

- `raw`- Data that is scraped goes directly into `raw`. No transformations have been applied, it is the "source of truth". A `Makefile` will be specified for keeping this data up-to-date.

- `interim` - Data that is being processed by exploratory ETL scripts are left in `interim`. Eventually there will be a Makefile that specifies how to transform data from the RAW folder, move it into interim for preprocessing, and then moved into `processed` when complete.

- `external` is for holding datasets that are maintained and processed by outside organizations, such as the US Census.

- `processed` contains data that is suitable for being used by our production Rails application.
