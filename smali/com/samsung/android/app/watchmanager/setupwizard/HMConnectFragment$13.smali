.class Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$13;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$13;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$13;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$000(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-static {}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mHandler mActivity == null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$13;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$3200(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Lcom/samsung/android/app/twatchmanager/util/CleanupAsyncTask;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$13;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$3200(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Lcom/samsung/android/app/twatchmanager/util/CleanupAsyncTask;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/CleanupAsyncTask;->cancel(Z)Z

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$13;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$3202(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;Lcom/samsung/android/app/twatchmanager/util/CleanupAsyncTask;)Lcom/samsung/android/app/twatchmanager/util/CleanupAsyncTask;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$13;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$1500(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$13;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$2700(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$13;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$2800(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$13;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$2800(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    new-instance v0, Lcom/samsung/android/app/twatchmanager/util/UninstallManager;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$13;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$000(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$13;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v2}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$2800(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Ljava/util/ArrayList;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$13;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v3}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$2900(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Lcom/samsung/android/app/twatchmanager/util/UninstallManager$UninstallationListener;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/twatchmanager/util/UninstallManager;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/twatchmanager/util/UninstallManager$UninstallationListener;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/UninstallManager;->start()V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$13;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$3000(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x324

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment$13;->this$0:Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;->access$3100(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragment;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x321
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
