.class final Lcom/samsung/android/app/twatchmanager/util/PermissionUtils$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic val$activity:Landroid/app/Activity;

.field final synthetic val$alertDialog:Landroid/app/AlertDialog;

.field final synthetic val$finishOnSettingsLaunch:Z


# direct methods
.method constructor <init>(Landroid/app/AlertDialog;Landroid/app/Activity;Z)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils$2;->val$alertDialog:Landroid/app/AlertDialog;

    iput-object p2, p0, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils$2;->val$activity:Landroid/app/Activity;

    iput-boolean p3, p0, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils$2;->val$finishOnSettingsLaunch:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils$2;->val$alertDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils$2;->val$activity:Landroid/app/Activity;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils;->access$100(Landroid/app/Activity;)V

    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils$2;->val$finishOnSettingsLaunch:Z

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->DEBUGGABLE()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils$2;->val$activity:Landroid/app/Activity;

    const-string v1, "Gear manger closed .Relaunch again!"

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils$2;->val$activity:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_1
    return-void
.end method
