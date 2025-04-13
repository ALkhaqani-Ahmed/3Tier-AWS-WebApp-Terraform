
![Digram](https://github.com/user-attachments/assets/9a71cd65-5357-41af-953e-b6686b913f5c)


Overview:

This project demonstrates the deployment of a **highly available, scalable, and secure 3-tier web application architecture** using **Terraform** to provision and manage infrastructure on **AWS**.



This structure separates responsibilities, improves maintainability, and enhances performance and security.

 🚀 Key Features

- ✅ **Scalability**: Auto Scaling Groups for frontend and backend tiers
- 🌍 **High Availability**: Resources span across multiple Availability Zones
- 🔐 **Security**: IAM roles, Security Groups, WAF, and private subnets
- ⚡ **Performance**: CloudFront for global content delivery


1. 📦 Providers Configuration

- **AWS Provider**: Sets up AWS as the cloud provider.
- Specifies region and version constraints.

2. 🌐 Network Configuration

- **VPC**: Custom Virtual Private Cloud to host resources
- **Subnets**: Public and private subnets across 2 Availability Zones
- **Internet Gateway**: Provides internet access to public subnets
- **NAT Gateway**: Enables private subnet resources to access the internet
- **Route Tables**: Direct traffic appropriately within the VPC

3. 🔒 Security Configuration

- **Security Groups**:
  - Web Tier: Allows HTTP, HTTPS, and SSH access
  - Application Tier: Internal communication only
  - Database Tier: Access restricted to backend instances

4. 🖥️ Compute Resources

- **Frontend EC2 (Web Tier)**:
  - Auto Scaling Group with Launch Template
  - Behind an Application Load Balancer
- **Backend EC2 (App Tier)**:
  - Auto Scaling Group in private subnet
  - Handles internal application logic

5. 🗄️ Database Configuration

  **Amazon RDS**:
  - MySQL instance
  - Private subnets with no direct internet access
  - DB Subnet Group and Security Group for access control

6. 📤 Content Delivery & Security

- **CloudFront**:
  - CDN for faster, global content delivery
  - Integrated with the Load Balancer or S3 (if static content used)
- **WAF (Web Application Firewall)**:
  - Protects CloudFront from common threats like SQL injection and XSS

