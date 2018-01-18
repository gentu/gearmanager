.class public Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;
.super Ljava/lang/Object;


# static fields
.field public static final ACTION_DATA_BACKUP_COMPLETE:Ljava/lang/String; = "com.samsung.android.app.watchmanager.ACTION_DATA_BACKUP_COMPLETE"

.field public static final ACTION_REQUEST_DATA_BACKUP:Ljava/lang/String; = "com.samsung.android.app.watchmanager.ACTION_REQUEST_DATA_BACKUP"

.field public static final EXTRA_PACKAGE_LIST:Ljava/lang/String; = "package_list"

.field private static final TAG:Ljava/lang/String;


# instance fields
.field final mContext:Landroid/content/Context;

.field final receiver:Landroid/content/BroadcastReceiver;

.field responseReceived:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;->responseReceived:Z

    new-instance v0, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper$1;-><init>(Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;->receiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public requestBackup(Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;->TAG:Ljava/lang/String;

    const-string v1, "requestBackup()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;->responseReceived:Z

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.samsung.android.app.watchmanager.ACTION_DATA_BACKUP_COMPLETE"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const-string v3, "com.samsung.android.hostmanager.permission.ACCESS_UNIFIED_HOST_MANAGER"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.samsung.android.app.watchmanager.ACTION_REQUEST_DATA_BACKUP"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "package_list"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;->mContext:Landroid/content/Context;

    const-string v2, "com.samsung.android.hostmanager.permission.ACCESS_UNIFIED_HOST_MANAGER"

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;->TAG:Ljava/lang/String;

    const-string v1, "Wait for Backup complete"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/16 v0, 0x4e20

    :try_start_1
    invoke-virtual {p0, v0, v1}, Ljava/lang/Object;->wait(J)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    :try_start_3
    sget-object v0, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;->TAG:Ljava/lang/String;

    const-string v1, "Backup Complete"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit p0

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;->TAG:Ljava/lang/String;

    const-string v2, "Exception while unregistering receiver."

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v0

    :catch_1
    move-exception v0

    :try_start_4
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;->TAG:Ljava/lang/String;

    const-string v1, "Backup Interrupted "

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :try_start_5
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_5
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    :goto_2
    :try_start_6
    monitor-exit p0

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;->TAG:Ljava/lang/String;

    const-string v2, "Exception while unregistering receiver."

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    :catchall_1
    move-exception v0

    :try_start_7
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_7
    .catch Ljava/lang/IllegalArgumentException; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :goto_3
    :try_start_8
    throw v0

    :catch_3
    move-exception v1

    sget-object v2, Lcom/samsung/android/app/twatchmanager/manager/BNRHelper;->TAG:Ljava/lang/String;

    const-string v3, "Exception while unregistering receiver."

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_3
.end method
