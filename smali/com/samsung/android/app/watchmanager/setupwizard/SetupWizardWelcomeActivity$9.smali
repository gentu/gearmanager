.class Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$9;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$deviceAddress:Ljava/lang/String;

.field final synthetic val$deviceName:Ljava/lang/String;

.field final synthetic val$isSwitching:Z

.field final synthetic val$launchMode:I

.field final synthetic val$pluginPackage:Ljava/lang/String;

.field final synthetic val$targetPage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$9;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    iput-object p2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$9;->val$activity:Landroid/app/Activity;

    iput-object p3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$9;->val$pluginPackage:Ljava/lang/String;

    iput-object p4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$9;->val$deviceAddress:Ljava/lang/String;

    iput-object p5, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$9;->val$deviceName:Ljava/lang/String;

    iput-object p6, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$9;->val$targetPage:Ljava/lang/String;

    iput p7, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$9;->val$launchMode:I

    iput-boolean p8, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$9;->val$isSwitching:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doTask()V
    .locals 8

    const/4 v7, 0x0

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mLaunchPluginTask :: allPermissionGranted"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$9;->val$activity:Landroid/app/Activity;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$9;->val$pluginPackage:Ljava/lang/String;

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$9;->val$deviceAddress:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$9;->val$deviceName:Ljava/lang/String;

    iget-object v4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$9;->val$targetPage:Ljava/lang/String;

    iget v5, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$9;->val$launchMode:I

    iget-boolean v6, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$9;->val$isSwitching:Z

    invoke-static/range {v0 .. v6}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->startPluginActivity(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IZ)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$9;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->access$1600(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$9;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    invoke-static {v0, v7}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->access$1602(Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;Z)Z

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$9;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    invoke-virtual {v0, v7, v7}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->overridePendingTransition(II)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity$9;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->finish()V

    return-void
.end method
