.class Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$AutoSwitchHandler;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$AutoSwitchHandler;->this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$AutoSwitchHandler;->this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->disconnectGearIfNeeded()V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$AutoSwitchHandler;->this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->disablePackageIfNeeded()V

    goto :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$AutoSwitchHandler;->this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->packagesToUninstall:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$AutoSwitchHandler;->this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->packagesToUninstall:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/twatchmanager/util/UninstallManager;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$AutoSwitchHandler;->this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$AutoSwitchHandler;->this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

    iget-object v2, v2, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->packagesToUninstall:Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$AutoSwitchHandler;->this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

    iget-object v3, v3, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->uninstallListener:Lcom/samsung/android/app/twatchmanager/util/UninstallManager$UninstallationListener;

    invoke-direct {v0, v1, v2, v3}, Lcom/samsung/android/app/twatchmanager/util/UninstallManager;-><init>(Landroid/content/Context;Ljava/util/List;Lcom/samsung/android/app/twatchmanager/util/UninstallManager$UninstallationListener;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/UninstallManager;->start()V

    goto :goto_0

    :cond_0
    const/16 v0, 0x324

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$AutoSwitchHandler;->sendEmptyMessage(I)Z

    goto :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$AutoSwitchHandler;->this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->access$000(Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;)V

    goto :goto_0

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$AutoSwitchHandler;->this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->cleanupAsyncTask:Lcom/samsung/android/app/twatchmanager/util/CleanupAsyncTask;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$AutoSwitchHandler;->this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->cleanupAsyncTask:Lcom/samsung/android/app/twatchmanager/util/CleanupAsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/CleanupAsyncTask;->cancel(Z)Z

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$AutoSwitchHandler;->this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->cleanupAsyncTask:Lcom/samsung/android/app/twatchmanager/util/CleanupAsyncTask;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$AutoSwitchHandler;->this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getExpectedSupportPackage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->enableApplication(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$AutoSwitchHandler;->this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$AutoSwitchHandler;->this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getCurrentDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getContainerPackage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getCurrentDeviceName()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$AutoSwitchHandler;->this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

    invoke-static {v3}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->isInstallFromPlaystore(Landroid/content/Context;)Z

    move-result v3

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->access$100(Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;Ljava/lang/String;Ljava/lang/String;Z)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService$AutoSwitchHandler;->this$0:Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;->access$200(Lcom/samsung/android/app/twatchmanager/autoswitch/AutoSwitchIntentService;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x321
        :pswitch_4
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method
