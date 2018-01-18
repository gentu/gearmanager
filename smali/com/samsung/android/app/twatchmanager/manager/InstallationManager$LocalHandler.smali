.class final Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;


# direct methods
.method public constructor <init>(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 10

    const-wide/16 v8, 0xdac

    const/16 v7, 0x13d

    const/16 v4, 0x13b

    const/4 v3, 0x0

    const/16 v6, 0x25b

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mlocalInstallHandler  : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p1, Landroid/os/Message;->what:I

    sparse-switch v0, :sswitch_data_0

    :cond_0
    :goto_0
    return-void

    :sswitch_0
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    const/4 v1, 0x1

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v2}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$100(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;)Landroid/app/Activity;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/twatchmanager/util/CertificateChecker;->get(Landroid/content/Context;)Lcom/samsung/android/app/twatchmanager/util/CertificateChecker;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v2, v1

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/twatchmanager/model/InstallPack;

    if-eqz v4, :cond_2

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->isLocalInstallation()Z

    move-result v6

    if-eqz v6, :cond_1

    iget-object v1, v1, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->path:Ljava/lang/String;

    iget-object v6, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v6}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$100(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;)Landroid/app/Activity;

    move-result-object v6

    invoke-virtual {v6}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v1, v6}, Lcom/samsung/android/app/twatchmanager/util/CertificateChecker;->matchSignatureWithDifferentInstalledPackage(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v1, v2

    :goto_2
    move v2, v1

    goto :goto_1

    :cond_1
    iget-object v6, v1, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->path:Ljava/lang/String;

    iget-object v1, v1, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->signature:Ljava/lang/String;

    invoke-virtual {v4, v6, v1}, Lcom/samsung/android/app/twatchmanager/util/CertificateChecker;->verifySignature(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    and-int/2addr v1, v2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    goto :goto_2

    :cond_3
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "checker.verifySignature() returns :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " signatureMatch :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v2, :cond_5

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v2}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$100(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;)Landroid/app/Activity;

    move-result-object v2

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->path:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->cleardumpStorage(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_3

    :cond_4
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$200(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_5
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isSamsungDevice()Z

    move-result v1

    if-eqz v1, :cond_b

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getCurrentDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getAdditionalPackageList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v4

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/twatchmanager/model/InstallPack;

    iget-object v2, v1, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->packName:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getExpectedSupportPackage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_5
    move-object v3, v1

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_16

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_16

    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_7
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_16

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;

    iget-object v7, v2, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;->packageName:Ljava/lang/String;

    iget-object v8, v1, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->packName:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    iget-object v2, v2, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;->installerPackage:Ljava/lang/String;

    iput-object v2, v1, Lcom/samsung/android/app/twatchmanager/model/InstallPack;->installerPackage:Ljava/lang/String;

    move-object v1, v3

    goto :goto_5

    :cond_8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_9

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->setPendingInstallList(Ljava/util/ArrayList;)V

    :cond_9
    if-eqz v3, :cond_a

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->installSupportedModule(Lcom/samsung/android/app/twatchmanager/model/InstallPack;)V

    goto/16 :goto_0

    :cond_a
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getExpectedSupportPackage()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->handleProviderInstallation(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_b
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    const-string v2, "APP_STORE"

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->installPackages(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_1
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "handleProviderInstallation getAllPackageInstallerInfo: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v4}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$100(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;)Landroid/app/Activity;

    move-result-object v4

    invoke-static {v4, v0}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getAllPackageInstallerInfo(Landroid/content/Context;Ljava/lang/String;)Ljava/util/HashMap;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$100(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;)Landroid/app/Activity;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getCurrentDeviceName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getPackageInstallerInfo(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "orderPackageListMap :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_15

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-lez v2, :cond_15

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getEssentialFolderName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v0, v1, v4}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$300(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;Ljava/lang/String;Ljava/util/ArrayList;Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_15

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v2, v6}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$402(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;I)I

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "handleProviderInstallation() providerPackList.size():"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v2, v1}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$500(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    move-result-object v1

    move-object v2, v1

    :goto_6
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$600(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;)Ljava/util/ArrayList;

    move-result-object v1

    if-eqz v1, :cond_d

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$600(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_d

    if-nez v2, :cond_e

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$600(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;)Ljava/util/ArrayList;

    move-result-object v2

    :cond_c
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v1, v3}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$602(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;Ljava/util/ArrayList;)Ljava/util/ArrayList;

    :cond_d
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Filtered packagelist :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v2, :cond_f

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-lez v1, :cond_f

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$200(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;)Landroid/os/Handler;

    move-result-object v1

    const/16 v3, 0x135

    invoke-virtual {v1, v3}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    iput v3, v1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v3}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$200(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;)Landroid/os/Handler;

    move-result-object v3

    invoke-virtual {v3, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-virtual {v1, v2, v0}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->installPackages(Ljava/util/ArrayList;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_e
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$600(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_7
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/twatchmanager/model/InstallPack;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$000()Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "handleProviderInstallation() adding pending InstallPack to install list: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_7

    :cond_f
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$700(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$700(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0xca

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto/16 :goto_0

    :cond_10
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mlocalInstallHandler is null"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :sswitch_2
    invoke-virtual {p1}, Landroid/os/Message;->getData()Landroid/os/Bundle;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    const-string v2, "packageName"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->lastProcessedpackageName:Ljava/lang/String;

    const-string v1, "package_index"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$400(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;)I

    move-result v1

    if-ne v1, v6, :cond_0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "INSTALLATION_TYPE_ESSENTIAL"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$200(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    const/16 v2, 0x136

    iput v2, v1, Landroid/os/Message;->what:I

    iput v0, v1, Landroid/os/Message;->arg1:I

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$200(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :sswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$400(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;)I

    move-result v0

    const/16 v1, 0x25c

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$200(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;)Landroid/os/Handler;

    move-result-object v0

    const/16 v1, 0x13c

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getCurrentGearInfo()Lcom/samsung/android/app/twatchmanager/model/GearInfo;

    move-result-object v0

    iget-object v1, v0, Lcom/samsung/android/app/twatchmanager/model/GearInfo;->containerPackage:Ljava/lang/String;

    if-eqz v1, :cond_11

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/model/GearInfo;->containerPackage:Ljava/lang/String;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    iget-object v1, v1, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->lastProcessedpackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_12

    :cond_11
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$600(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;)Ljava/util/ArrayList;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$600(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_13

    :cond_12
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    iget-object v1, v1, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->lastProcessedpackageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->handleProviderInstallation(Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_13
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$200(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :cond_14
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$400(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;)I

    move-result v0

    if-ne v0, v6, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$200(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4, v8, v9}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$200(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager$LocalHandler;->this$0:Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;->access$200(Lcom/samsung/android/app/twatchmanager/manager/InstallationManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v1, v7, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    goto/16 :goto_0

    :cond_15
    move-object v2, v3

    goto/16 :goto_6

    :cond_16
    move-object v1, v3

    goto/16 :goto_5

    :sswitch_data_0
    .sparse-switch
        0xc9 -> :sswitch_2
        0xca -> :sswitch_3
        0xcd -> :sswitch_1
        0xce -> :sswitch_0
        0x13d -> :sswitch_4
    .end sparse-switch
.end method
