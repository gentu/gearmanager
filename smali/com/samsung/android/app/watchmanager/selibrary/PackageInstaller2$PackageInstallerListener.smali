.class Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;
.super Landroid/content/BroadcastReceiver;


# instance fields
.field install:Z

.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;)V
    .locals 1

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;->this$0:Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;->install:Z

    return-void
.end method


# virtual methods
.method install(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;->install:Z

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7

    const/4 v6, 0x1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;->this$0:Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->access$000(Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;)V

    invoke-static {}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->access$100()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "], install ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;->install:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.content.pm.extra.STATUS"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    const-string v1, "android.content.pm.extra.STATUS_MESSAGE"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "android.content.pm.extra.PACKAGE_NAME"

    invoke-virtual {p2, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->access$100()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "PackageInstallerCallback: result ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "], message ["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "], packageName ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v4, "]"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    packed-switch v0, :pswitch_data_0

    invoke-static {}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->access$100()Ljava/lang/String;

    move-result-object v1

    const-string v3, "Install failed."

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v1, p0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;->install:Z

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;->this$0:Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->access$500(Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;Ljava/lang/String;I)V

    :goto_0
    return-void

    :pswitch_0
    invoke-static {}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "STATUS_PENDING_USER_ACTION"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;->this$0:Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->access$200(Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;)Landroid/content/Context;

    move-result-object v1

    const-string v0, "android.intent.extra.INTENT"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    invoke-virtual {v1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    goto :goto_0

    :pswitch_1
    invoke-static {}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "*** STATUS_SUCCESS ***"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;->install:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;->this$0:Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;

    invoke-static {v0, v2, v6}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->access$300(Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;Ljava/lang/String;I)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;->this$0:Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;

    invoke-static {v0, v2, v6}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->access$400(Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;Ljava/lang/String;I)V

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2$PackageInstallerListener;->this$0:Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;

    invoke-static {v1, v2, v0}, Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;->access$600(Lcom/samsung/android/app/watchmanager/selibrary/PackageInstaller2;Ljava/lang/String;I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch -0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
