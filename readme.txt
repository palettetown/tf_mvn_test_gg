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
