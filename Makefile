APP_NAME=esme_my_react_app

# Build image pour la production
build:
	docker build --target prod -t $(APP_NAME) .

# Run l'image en mode production
run:
	docker run -p 3000:80 $(APP_NAME)

# Build + run (prod)
start: build run

# Lancer l’environnement de développement avec docker-compose
dev:
	docker-compose up --build

# Arrêter le dev
stop:
	docker-compose down

# Nettoyage complet
clean:
	docker-compose down -v --remove-orphans
	docker rmi $(APP_NAME) || true