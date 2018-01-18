.class Lcom/samsung/android/app/twatchmanager/util/UninstallManager$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/util/UninstallManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/util/UninstallManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/util/UninstallManager$1;->this$0:Lcom/samsung/android/app/twatchmanager/util/UninstallManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/UninstallManager$1;->this$0:Lcom/samsung/android/app/twatchmanager/util/UninstallManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/UninstallManager;->access$000(Lcom/samsung/android/app/twatchmanager/util/UninstallManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallationUtils.UNINSTALLATION_PROGRESS"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "package_index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const-string v2, "packageName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/util/UninstallManager$1;->this$0:Lcom/samsung/android/app/twatchmanager/util/UninstallManager;

    invoke-static {v2}, Lcom/samsung/android/app/twatchmanager/util/UninstallManager;->access$000(Lcom/samsung/android/app/twatchmanager/util/UninstallManager;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "InstallationUtils.UNINSTALLATION_PROGRESS, index ["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "], packageName ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/UninstallManager$1;->this$0:Lcom/samsung/android/app/twatchmanager/util/UninstallManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/UninstallManager;->access$000(Lcom/samsung/android/app/twatchmanager/util/UninstallManager;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "InstallationUtils.UNINSTALLATION_COMPLETE"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/UninstallManager$1;->this$0:Lcom/samsung/android/app/twatchmanager/util/UninstallManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/UninstallManager;->access$100(Lcom/samsung/android/app/twatchmanager/util/UninstallManager;)V

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0xcb
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
