.class Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;

.field final synthetic val$mNoticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;Lcom/samsung/android/app/twatchmanager/util/CommonDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$3;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;

    iput-object p2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$3;->val$mNoticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$3;->val$mNoticeDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$3;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;

    iget-object v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mActivity:Landroid/app/Activity;

    instance-of v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    if-eqz v0, :cond_0

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v0, "UnknownGear"

    const/4 v2, 0x1

    invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment$3;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;

    iget-object v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/BaseDeviceListFragment;->mActivity:Landroid/app/Activity;

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;->updateFragment(ILandroid/os/Bundle;)V

    :cond_0
    return-void
.end method
