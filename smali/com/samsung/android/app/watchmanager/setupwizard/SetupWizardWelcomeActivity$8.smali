.class Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$8;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$8;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "launch mode = LAUNCHED_FROM_BT_SETTING, all permissions are granted"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$8;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->access$1500(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;)Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->startUpdateChecking()V

    return-void
.end method
