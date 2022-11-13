# Debug Postgres Connection
kubectl create -f /Users/bradmccoy/Development/bradmccoydev/ortelius-kubernetes/kube-infra/kustomize/catalog/backstage/envs/prod/postgres-test.yaml

kubectl -n backstage exec -it postgres-debug -- /bin/sh
apk --no-cache add curl && apk --update add postgresql-client

psql -h postgresql.postgres.svc.cluster.local -U backstage -d backstage
  enter password: passW0rd

nslookup postgresql.postgres.svc.cluster.local
telnet postgresql.postgres.svc.cluster.local 5432
nc postgresql.postgres.svc.cluster.local

psql -h localhost -U idr
\list
\c idr
\dp
\q
exit
kubectl -n backstage exec -it nfs-debug -- /bin/sh

vi /var/lib/postgresql/data/postgresql.conf

kubectl run postgresql-client --rm --tty -i --restart='Never' --namespace backstage --image docker.io/bitnami/postgresql:11.11.0-debian-10-r24 --env="PGPASSWORD=$POSTGRES_PASSWORD" --command -- psql --host postgresql -U postgres -d postgres -p 5432

kubectl run debuy --rm --tty -i --restart='Never' --namespace backstage --image busybox -p 5432
