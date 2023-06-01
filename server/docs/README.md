# DB Diagram and Design

Using **dbdiagram** and **BDML** in `./dbdiagram/main.bdml`
https://dbdiagram.io/d/6476c7767764f72fcf24e65b

# Deploy Hasura

1. Start the container
2. Apply metadata and migrations
3. Apply seeds
4. Start the console

```sh
docker compose up -d
hasura deploy
hasura seed apply
hasura console
```
