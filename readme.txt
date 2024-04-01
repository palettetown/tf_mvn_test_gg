>>add another repo  
gcloud iam service-accounts add-iam-policy-binding "proj1servacc@august-water-417802.iam.gserviceaccount.com" \
   --project="august-water-417802"   --role="roles/iam.workloadIdentityUser" \
   --member="principalSet://iam.googleapis.com/projects/198122355685/locations/global/workloadIdentityPools/githubactions/attribute.repository/palettetown/tf-mvn-test-gg"

   
Your Cloud Platform project in this session is set to august-water-417802.
Use “gcloud config set project [PROJECT_ID]” to change to a different project.
kasinyee01@cloudshell:~ (august-water-417802)$ gcloud iam service-accounts add-iam-policy-binding "proj1servacc@august-water-417802.iam.gserviceaccount.com" \
   --project="august-water-417802"   --role="roles/iam.workloadIdentityUser" \
   --member="principalSet://iam.googleapis.com/projects/198122355685/locations/global/workloadIdentityPools/githubactions/attribute.repository/palettetown/tf-mvn-test-gg"
Updated IAM policy for serviceAccount [proj1servacc@august-water-417802.iam.gserviceaccount.com].
bindings:
- members:
  - principalSet://iam.googleapis.com/projects/198122355685/locations/global/workloadIdentityPools/githubactions/attribute.repository/palettetown/tf-mvn-test-gg
  role: roles/iam.workloadIdentityUser
etag: BwYVEAzFAgs=
version: 1
kasinyee01@cloudshell:~ (august-water-417802)$    