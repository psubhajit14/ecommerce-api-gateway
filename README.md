# 🌀 API Gateway - E-Commerce Microservices

This is the **API Gateway** component of the E-Commerce microservices architecture built using **Spring Cloud Gateway**.

It provides a centralized entry point for all microservices (Product, Invoice, Auth, etc.), with features like:

- 🔀 Intelligent Routing
- 🔐 Keycloak-based JWT Authentication
- 📉 Rate Limiting with Redis
- 🚀 CI/CD via Jenkins
- 🛡️ Caching Layer (optional)

---

## 🛠️ Technologies Used

- Spring Boot + Spring Cloud Gateway
- Redis (for rate limiting & caching)
- Keycloak (OAuth2 & JWT Auth)
- Docker + Helm + Kubernetes
- Jenkins CI/CD pipeline
- Ingress (for browser routing)

---

## ⚙️ Prerequisites

| Tool       | Version/Notes                         |
| ---------- | ------------------------------------- |
| Java       | 17+                                   |
| Maven      | 3.8+                                  |
| Docker     | Installed & running                   |
| Redis      | Running (locally or in K8s)           |
| Jenkins    | Running and integrated with GitHub    |
| Helm       | 3.x                                   |
| Kubernetes | KIND or Minikube (with Ingress setup) |
| Keycloak   | Pre-configured for realm/client setup |

---

## 🚀 Build & Run Locally

```bash
# 1. Clone this repository
git clone https://github.com/<your-org>/api-gateway.git
cd api-gateway

# 2. Build project
mvn clean package -DskipTests

# 3. Run locally
java -jar target/api-gateway-0.0.1-SNAPSHOT.jar
```
