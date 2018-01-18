.class Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;

.field final synthetic val$syncCallback:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$ISyncCallback;

.field final synthetic val$syncType:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$ISyncCallback;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$1;->this$0:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;

    iput-object p2, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$1;->val$syncCallback:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$ISyncCallback;

    iput p3, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$1;->val$syncType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$1;->this$0:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->isResourceInfoAvailable()Z

    move-result v0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->access$000()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "syncHandler.post() start to sync ... synced : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$1;->this$0:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$1;->val$syncCallback:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$ISyncCallback;

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->access$102(Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$ISyncCallback;)Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$ISyncCallback;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$1;->this$0:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;

    iget v1, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$1;->val$syncType:I

    invoke-static {v0, v1, v4}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->access$200(Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;IZ)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$1;->val$syncType:I

    if-ne v0, v4, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$1;->this$0:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->access$300(Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$1;->val$syncType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$1;->this$0:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->access$400(Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;)V

    goto :goto_0

    :cond_2
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "syncGearInfo() unKnown sync type"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
