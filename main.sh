if [ -d "payments" ]; then
  rm -rf payments
fi

if [ -d "emails" ]; then
  rm -rf emails
fi

if [ -d "orders" ]; then
  rm -rf orders
fi

git clone git@github.com:phr3nzy/twig-challenge-payments.git payments
git clone git@github.com:phr3nzy/twig-challenge-orders.git orders
git clone git@github.com:phr3nzy/twig-challenge-emails.git emails

docker compose -f docker-compose.dev.yml up --build --remove-orphans