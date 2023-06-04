# server

[![style: very good analysis][very_good_analysis_badge]][very_good_analysis_link]
[![Powered by Dart Frog](https://img.shields.io/endpoint?url=https://tinyurl.com/dartfrog-badge)](https://dartfrog.vgv.dev)

This server will provide the data to the clients (admin or security guards) where:

- Hasura is the GraphQL API with direct access to the PostgreSQL database
- The dart backend encapsulates the business logic and is called from Hasura.

---

## :page_facing_up: DB Diagram and Design

Using **dbdiagram** and **BDML** in `./dbdiagram/main.bdml`.

[Link to DBDiagram](https://dbdiagram.io/d/6476c7767764f72fcf24e65b)

---

## :flight_departure: Deploy Hasura

Navigate to `./server/hasura` and then run:

1. Start the container
2. Apply metadata and migrations
3. Apply seeds
4. Start the console

```sh
$ docker compose up -d
$ hasura deploy
$ hasura seed apply
$ hasura console
```

---

## :flight_departure: Start the dev server

To start the development server with hot reload at port 2300 run:

```sh
$ dart_frog dev --port=2300
```

[very_good_analysis_badge]: https://img.shields.io/badge/style-very_good_analysis-B22C89.svg
[very_good_analysis_link]: https://pub.dev/packages/very_good_analysis
