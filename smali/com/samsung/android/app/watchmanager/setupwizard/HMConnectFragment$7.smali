.class Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$7;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

.field final synthetic val$commonDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;Lcom/samsung/android/app/twatchmanager/util/CommonDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$7;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    iput-object p2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$7;->val$commonDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$7;->val$commonDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$7;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$000(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Landroid/app/Activity;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$7;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$1800(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IImprovedGrantedTask;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils;->INITIAL_PERMISSION:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->verifyPermissions(Landroid/app/Activity;Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;[Ljava/lang/String;)V

    return-void
.end method
