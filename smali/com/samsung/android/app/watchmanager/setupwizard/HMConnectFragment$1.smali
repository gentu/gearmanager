.class Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$000(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mInstallationHandler mActivity == null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    :pswitch_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallationUtils.MSG_INSTALL_ESSENTIAL_STARTED"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "3"

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$200(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;

    move-result-object v1

    const/16 v2, 0x135

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->setOperation(ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_2
    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallationUtils.MSG_INSTALL_ESSENTIAL_PROGRESS"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    const-string v1, "4"

    iget v2, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$200(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;

    move-result-object v1

    const/16 v2, 0x136

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->setOperation(ILandroid/os/Bundle;)V

    goto :goto_0

    :pswitch_3
    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallationUtils.MSG_INSTALL_ESSENTIAL_DONE"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_4
    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallationUtils.MSG_INSTALL_SPECIAL_PROGRESS"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_5
    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallationUtils.MSG_INSTALL_SPECIAL_FINISHED"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_6
    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallationUtils.MSG_FULL_INSTALLATION_COMPLETE"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Total installation time :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iget-object v4, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v4}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$300(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)J

    move-result-wide v4

    sub-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Complete installation finished"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$200(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;

    move-result-object v0

    const/16 v1, 0x13b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->setOperation(ILandroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$000(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getExpectedSupportPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->savePackageVersionCode(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$000(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->deleteObseletePrefernces(Landroid/content/Context;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$000(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getCurrentDeviceName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isRebootRequired(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    const/16 v1, 0x2ce

    invoke-static {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$400(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;I)V

    goto/16 :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$500(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V

    goto/16 :goto_0

    :pswitch_7
    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MSG_SUPPORT_INSTALLATION_COMPLETE"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :pswitch_8
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Lcom/samsung/android/app/twatchmanager/model/InstallationError;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    const/16 v2, 0x13d

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$600(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;ILjava/lang/Object;)V

    goto/16 :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$000(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Landroid/app/Activity;

    move-result-object v0

    const-string v1, "Installation Failed !"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/Toaster;->show(Landroid/content/Context;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Installation Failed !"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$700(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$1;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$000(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    goto/16 :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x135
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
    .end packed-switch
.end method
