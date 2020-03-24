

yc managed-kubernetes cluster create `
    --name k8s-test-cluster `
    --network-name default `
    --zone ru-central1-a `
    --subnet-name default-ru-central1-a `
    --public-ip `
    --release-channel regular `
    --version 1.13 `
    --cluster-ipv4-range 10.1.0.0/16 `
    --service-ipv4-range 10.2.0.0/16 `
    --service-account-name srv-res `
    --node-service-account-name srv-res `
    --daily-maintenance-window start=22:00,duration=10h `
