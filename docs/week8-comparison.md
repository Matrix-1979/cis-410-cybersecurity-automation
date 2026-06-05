Deployment Process

In Weeks 3–5, I deployed the Flask application to a virtual machine using Docker. The workflow connected to the VM using SSH, built the Docker image, and started the container with Docker commands.

In Week 8, I deployed the same application to Google Cloud Run. Instead of using SSH keys and connecting to a VM, GitHub Actions authenticated to Google Cloud using OIDC. The workflow built the container image, pushed it to Artifact Registry, and deployed it directly to Cloud Run.

Infrastructure Management

With the VM deployment, I was responsible for managing the server, Docker service, networking, and container runtime.

With Cloud Run, Google manages the infrastructure. I only needed to deploy the container and configure the service.

Scaling

The Docker container on the VM remained running at all times, even when no users were accessing the application.

Cloud Run automatically scaled the application based on traffic. After sending requests, additional instances could be created as needed. When traffic stopped, Cloud Run scaled the service back toward zero instances.

Security

The VM deployment used SSH keys stored as GitHub secrets for remote access.

The Cloud Run deployment used OIDC authentication, eliminating the need to store long-lived service account keys or SSH credentials.

Cost Efficiency

The VM consumed resources continuously because the server remained running.

Cloud Run only uses resources when handling requests, which can reduce costs for low-traffic applications.

Conclusion

Based on my experience, Cloud Run provided a simpler deployment process, automatic scaling, and reduced infrastructure management compared to the VM-based Docker deployment. The overall workflow was easier to maintain while still supporting containerized applications.




 Week 8 Comparison: On-Premise Docker vs. Cloud Run

| Dimension | On-Premise Docker (Wks 3–5) | Cloud Run (Week 8) |
|---|---|---|
| Infrastructure setup | 3 VMs created, Docker installed on each | No VM setup. Cloud Run managed the server infrastructure automatically. |
| Deployment command | SSH → docker build → docker run | GitHub Actions used OIDC, built the image, pushed to Artifact Registry, then ran `gcloud run deploy`. |
| TLS / HTTPS | Not configured | HTTPS was provided automatically with the `.run.app` URL. |
| Scaling approach | Manual — redeploy or add VMs | Automatic scaling based on traffic, including scale to zero when idle. |
| Port management | Ports 5000/5001/5002 per environment | No manual port setup. Cloud Run handled routing through HTTPS. |
| Cost when idle | VM running 24/7 regardless of traffic | Cloud Run can scale to zero, so it does not run constantly when idle. |
| Rollback | Re-deploy previous image manually | Can redeploy a previous container image or revision in Cloud Run. |
| Secrets management | GitHub Secrets → env vars in workflow | GitHub Actions used OIDC with workload identity instead of long-lived SSH keys. |




















