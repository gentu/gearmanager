.class Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$2;->this$0:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "syncGearInfo() timeout occured, trigger sync fail callback"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$2;->this$0:Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;->access$200(Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager;IZ)V

    return-void
.end method
