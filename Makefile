# Python command
PYTHON := python3
VENV_ACTIVATE := . venv/bin/activate &&

.PHONY: help setup frontend-install backend-install dev-frontend dev-backend dev lint

# Show help menu
help:
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | sort | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'

# Setup the entire project
setup: 
	frontend-install backend-install

# Install frontend dependencies
frontend-install:
	cd frontend && pnpm install

# Setup Python virtual environment and install dependencies
backend-install:
	cd backend && $(PYTHON) -m venv venv && \
	$(VENV_ACTIVATE) \
	pip install -r requirements.txt

# Run front and backend in development mode
dev:
	make dev-backend & make dev-frontend

# Run only the frontend in development mode
dev-frontend:
	cd frontend && pnpm run dev

# Run only the backend in development mode
dev-backend:
	cd backend && $(VENV_ACTIVATE) $(PYTHON) manage.py runserver

# Run linters for both frontend and backend
lint:
	cd frontend && pnpm run lint
	cd backend && $(VENV_ACTIVATE) flake8 .

# Run tests for both frontend and backend
test:
	cd frontend && pnpm run test
	cd backend && $(VENV_ACTIVATE) $(PYTHON) manage.py test

# Build for production
build:
	cd frontend && pnpm run build

# Clean up generated files and cache
clean:
	find . -type d -name "__pycache__" -exec rm -rf {} +
	find . -type d -name "*.egg-info" -exec rm -rf {} +
	find . -type f -name "*.pyc" -delete
	find . -type d -name ".pytest_cache" -exec rm -rf {} +
	find . -type d -name "dist" -exec rm -rf {} +
	find . -type d -name "build" -exec rm -rf {} +

