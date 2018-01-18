.class Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;
.super Landroid/os/Handler;


# static fields
.field private static final SKIP_INIT:Ljava/lang/String; = "skip_init"

.field private static final TIME_OUT:Ljava/lang/String; = "time_out"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private handled:Z

.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;


# direct methods
.method private constructor <init>(Lcom/samsung/android/app/twatchmanager/update/UpdateManager;)V
    .locals 2

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->access$200()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->handled:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/twatchmanager/update/UpdateManager;Lcom/samsung/android/app/twatchmanager/update/UpdateManager$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;-><init>(Lcom/samsung/android/app/twatchmanager/update/UpdateManager;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "handleMessage(), msg.what = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p1, Landroid/os/Message;->what:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->access$300(Lcom/samsung/android/app/twatchmanager/update/UpdateManager;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->TAG:Ljava/lang/String;

    const-string v1, "User quited from UHM."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->handled:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->handled:Z

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->TAG:Ljava/lang/String;

    const-string v1, "Update check result response came from server; continue with notice dialog launch."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->access$300(Lcom/samsung/android/app/twatchmanager/update/UpdateManager;)Z

    move-result v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    iput-boolean v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mFirstCheckFlag:Z

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mListener:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$IUpdateListener;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mListener:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$IUpdateListener;

    invoke-interface {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$IUpdateListener;->onUpdateAvailable()V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->access$400(Lcom/samsung/android/app/twatchmanager/update/UpdateManager;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->destroy()V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->TAG:Ljava/lang/String;

    const-string v1, "UpdateManager is down."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_9

    iget-boolean v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->handled:Z

    if-nez v0, :cond_0

    iput-boolean v3, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->handled:Z

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->TAG:Ljava/lang/String;

    const-string v1, "[No response came from server] / [time-out] / [connection failed] / [do nothing on no update available]; continue with app launch."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->access$300(Lcom/samsung/android/app/twatchmanager/update/UpdateManager;)Z

    move-result v0

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    iput-boolean v4, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mFirstCheckFlag:Z

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mContext:Landroid/content/Context;

    invoke-static {v0, v3}, Lcom/samsung/android/app/twatchmanager/util/UpdateUtil;->setIsNotifiedFlag(Landroid/content/Context;Z)V

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_5

    const-string v0, "skip_init"

    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_5
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Calling init()...Time-out condition-->"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "time_out"

    iget-object v3, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mListener:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$IUpdateListener;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->mListener:Lcom/samsung/android/app/twatchmanager/update/UpdateManager$IUpdateListener;

    invoke-interface {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$IUpdateListener;->onComplete()V

    :cond_6
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->access$400(Lcom/samsung/android/app/twatchmanager/update/UpdateManager;)V

    :goto_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateManager;->destroy()V

    goto/16 :goto_0

    :cond_7
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->TAG:Ljava/lang/String;

    const-string v1, "No need to call init(); Application has moved forward."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->TAG:Ljava/lang/String;

    const-string v1, "UpdateManager is down."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    :cond_9
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateManager$UpdateCheckResponseHandler;->TAG:Ljava/lang/String;

    const-string v1, "Unknown message."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0
.end method
