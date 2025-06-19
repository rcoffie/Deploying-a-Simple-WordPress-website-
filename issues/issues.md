Here's a clear and actionable issue template you can use to document the Azure billing-related Terraform deployment problem:

---

**Title**: Azure Deployment Blocked - Subscription Billing Issue  
**Labels**: `azure`, `billing`, `blocked`, `terraform`  

### **Issue Description**  
Terraform deployments are failing because our Azure subscription (`ID: d23c01fa-5060-43cd-a999-9dd91ef91994`) is in **"Warned"** state due to billing issues. This puts the subscription at risk of being disabled, making all deployments fail with:  
`Error: Code="ReadOnlyDisabledSubscription"`  

### **Impact**  
- All Terraform `apply` operations are blocked  
- No new resources can be created/modified  
- Existing resources will become read-only if subscription is fully disabled  

### **Required Actions**  

#### 1. Immediate Remediation  
- [ ] Contact billing team/admin (@mention) to:  
  - Clear outstanding payments  
  - Verify payment method validity  
  - Remove spending limits (if applicable)  

#### 2. Verification Steps  
- [ ] Check subscription status:  
  ```bash
  az account show --subscription "d23c01fa-5060-43cd-a999-9dd91ef91994" --query "state"
  ```  
- [ ] Confirm balance due in [Azure Portal → Cost Management](https://portal.azure.com/#blade/Microsoft_Azure_Billing/SubscriptionsBlade)  

#### 3. Temporary Workaround  
- [ ] Switch deployments to backup subscription (ID: `[HEALTHY_SUB_ID]`):  
  ```hcl
  provider "azurerm" {
    features {}
    subscription_id = "[HEALTHY_SUB_ID]" 
  }
  ```  

### **Prevention Plan**  
- [ ] Setup billing alerts:  
  ```bash
  az consumption budget create --amount 1000 --budget-name "TerraformGuardrail" --category cost
  ```  
- [ ] Add payment method backup  
- [ ] Document escalation contacts for billing issues  

**ETA for Resolution**: [DD/MM/YYYY]  
**Owner**: @[ResponsibleTeamMember]  

--- 

### **Template Notes**  
1. Replace placeholders (`[HEALTHY_SUB_ID]`, `@mentions`, etc.)  
2. Attach:  
   - Screenshot of Azure billing alerts (if available)  
   - Full Terraform error log  
3. Update "ETA" and checkboxes as progress is made  

Would you like me to modify any sections for your specific workflow?