.class Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

.field final synthetic val$syncCallback:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$ISyncCallback;

.field final synthetic val$syncType:I


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$ISyncCallback;I)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$2;->this$0:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    iput-object p2, p0, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$2;->val$syncCallback:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$ISyncCallback;

    iput p3, p0, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$2;->val$syncType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$2;->this$0:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$2;->val$syncCallback:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$ISyncCallback;

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->access$102(Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$ISyncCallback;)Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$ISyncCallback;

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$2;->val$syncType:I

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$2;->this$0:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->isDeviceInfoAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$2;->this$0:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->processRulesFile(ILjava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    move v0, v1

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$2;->this$0:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    invoke-static {v2, v1, v0}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->access$200(Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;IZ)V

    :goto_1
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    iget v0, p0, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$2;->val$syncType:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$2;->this$0:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->access$300(Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;)V

    goto :goto_1

    :cond_3
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->access$400()Ljava/lang/String;

    move-result-object v0

    const-string v1, "syncDeviceInfo() unKnown sync type"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method
