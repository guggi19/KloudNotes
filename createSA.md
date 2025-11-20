# Vorbereitung
```powershell
$PROJECT_ID = "kloudnotes-478113"
$SA_NAME    = "terraform"
$SA_EMAIL   = "$SA_NAME@$PROJECT_ID.iam.gserviceaccount.com"

gcloud iam service-accounts create $SA_NAME --display-name "TerraformServiceAccount"
```

## Roles
```powershell
### Storage
gcloud projects add-iam-policy-binding kloudnotes-478113 `--member="serviceAccount:terraform@kloudnotes-478113.iam.gserviceaccount.com" `--role="roles/storage.admin"

# Cloud Functions / Cloud Run
gcloud projects add-iam-policy-binding kloudnotes-478113 `--member="serviceAccount:terraform@kloudnotes-478113.iam.gserviceaccount.com" `--role="roles/cloudfunctions.admin"
gcloud projects add-iam-policy-binding kloudnotes-478113 `--member="serviceAccount:terraform@kloudnotes-478113.iam.gserviceaccount.com" `--role="roles/run.admin"

# Service Accounts (für Functions, Scheduler etc.)
gcloud projects add-iam-policy-binding kloudnotes-478113 `--member="serviceAccount:terraform@kloudnotes-478113.iam.gserviceaccount.com" `--role="roles/iam.serviceAccountAdmin"
gcloud projects add-iam-policy-binding kloudnotes-478113 `--member="serviceAccount:terraform@kloudnotes-478113.iam.gserviceaccount.com" `--role="roles/iam.serviceAccountUser"

# Firestore
gcloud projects add-iam-policy-binding kloudnotes-478113 `--member="serviceAccount:terraform@kloudnotes-478113.iam.gserviceaccount.com" `--role="roles/datastore.owner"

# Scheduler
gcloud projects add-iam-policy-binding kloudnotes-478113 `--member="serviceAccount:terraform@kloudnotes-478113.iam.gserviceaccount.com" `--role="roles/cloudscheduler.admin"

# Services/API aktivieren
gcloud projects add-iam-policy-binding kloudnotes-478113 `--member="serviceAccount:terraform@kloudnotes-478113.iam.gserviceaccount.com" `--role="roles/serviceusage.serviceUsageAdmin"
```