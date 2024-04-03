<<<EXECUTE FROM PROJECT 2, WHERE WIP POOL RESIDES>>>

1) WIF Pool is in project 1
2) Service Account is in project 2
3) Bind iam-policy to Service Account (project 2) with WIF pool (project 1)

gcloud iam service-accounts add-iam-policy-binding "projects/august-water-417802/serviceAccounts/proj1servacc@august-water-417802.iam.gserviceaccount.com" \
   --project="my-second-project-418213"   --role="roles/iam.workloadIdentityUser" \
   --member="principalSet://iam.googleapis.com/projects/198122355685/locations/global/workloadIdentityPools/githubactions/attribute.repository/palettetown/tf_mvn_test_gg"

   
   
   
Open Terminal -> gcloud config set project my-second-project-418213

kasinyee01@cloudshell:~ (my-second-project-418213)$ gcloud iam service-accounts add-iam-policy-binding "projects/august-water-417802/serviceAccounts/proj1servacc@august-water-417802.iam.gserviceaccount.com" \
   --project="my-second-project-418213"   --role="roles/iam.workloadIdentityUser" \
   --member="principalSet://iam.googleapis.com/projects/198122355685/locations/global/workloadIdentityPools/githubactions/attribute.repository/palettetown/tf_mvn_test_gg"
Updated IAM policy for serviceAccount [proj1servacc@august-water-417802.iam.gserviceaccount.com].
bindings:
- members:
  - principalSet://iam.googleapis.com/projects/198122355685/locations/global/workloadIdentityPools/githubactions/attribute.repository/palettetown/tf-mvn-test-gg
  - principalSet://iam.googleapis.com/projects/198122355685/locations/global/workloadIdentityPools/githubactions/attribute.repository/palettetown/tf_mvn_test_gg
  role: roles/iam.workloadIdentityUser
etag: BwYVEMxk0X4=
version: 1
kasinyee01@cloudshell:~ (my-second-project-418213)$    
   
   
<<<EXECUTE FROM PROJECT 1, WHERE SERVICE ACCOUNT IS>>>

gcloud iam service-accounts add-iam-policy-binding "projects/august-water-417802/serviceAccounts/proj1servacc@august-water-417802.iam.gserviceaccount.com" \
   --project="august-water-417802"   --role="roles/iam.workloadIdentityUser" \
   --member="principalSet://iam.googleapis.com/projects/198122355685/locations/global/workloadIdentityPools/githubactions/attribute.repository/palettetown/tf_mvn_test_gg"




ROLES:

To grant the iam.serviceAccounts.setIamPolicy permission in Google Cloud IAM, you need the appropriate roles that include this permission. Some of the predefined roles that include the iam.serviceAccounts.setIamPolicy permission are:

roles/iam.serviceAccountAdmin: This role grants full control over service accounts, including the ability to set IAM policies for service accounts.

roles/owner: This role grants full access to all resources and services in a Google Cloud project, including the ability to manage IAM policies for service accounts.

roles/editor: This role grants permissions to modify and delete most resources and services in a Google Cloud project, including the ability to manage IAM policies for service accounts.

Custom roles: You can also create custom roles that include the iam.serviceAccounts.setIamPolicy permission and assign them to users or service accounts as needed.

Be cautious when assigning roles with the iam.serviceAccounts.setIamPolicy permission, as it allows users to set IAM policies for service accounts, which can have significant security implications. Ensure that only trusted users or services have this permission to avoid unauthorized access to resources.
