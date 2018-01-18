.class Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;

.field final synthetic val$commonDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;Lcom/samsung/android/app/twatchmanager/util/CommonDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;

    iput-object p2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$1;->val$commonDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "disconnect wearable device"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$1;->val$commonDialog:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->dismiss()V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isSamsungDevice()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->access$100(Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "connected_wearable_id"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->access$100(Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "connected_wearable"

    const-string v2, "Gear2"

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->access$100(Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "connected_wearable"

    const-string v2, ""

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->access$200(Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;)Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$IDisconnectTask;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->access$200(Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;)Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$IDisconnectTask;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$IDisconnectTask;->doTask()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;->access$300(Lcom/samsung/android/app/watchmanager/setupwizard/GearFitFragment;)V

    return-void
.end method
