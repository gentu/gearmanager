.class Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

.field final synthetic val$syncCallback:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$ISyncCallback;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$ISyncCallback;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$1;->this$0:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    iput-object p2, p0, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$1;->val$syncCallback:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$ISyncCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$1;->this$0:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$1;->val$syncCallback:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$ISyncCallback;

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->access$102(Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$ISyncCallback;)Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$ISyncCallback;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$1;->this$0:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->isDeviceInfoAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$1;->this$0:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    invoke-static {v0, v2, v2}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->access$200(Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;IZ)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$1;->this$0:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->access$300(Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;)V

    goto :goto_0
.end method
