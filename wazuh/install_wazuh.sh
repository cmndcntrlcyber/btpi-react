git clone https://github.com/wazuh/wazuh-docker.git -b v4.9.2
cd /opt/wazuh-docker/multi-node
rm docker-compose.yaml
curl https://raw.githubusercontent.com/cmndcntrlcyber/btpi-react/refs/heads/main/grr/compose.yaml > /opt/grr/compose.yaml
docker compose -f generate-indexer-certs.yml run --rm generator
docker compose up -d