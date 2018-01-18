.class final Lcom/samsung/android/app/twatchmanager/util/UIUtils$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/twatchmanager/manager/ResourceRulesManager$ISyncCallback;


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$groupName:Ljava/lang/String;

.field final synthetic val$iv:Landroid/widget/ImageView;


# direct methods
.method constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/widget/ImageView;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/util/UIUtils$1;->val$context:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/twatchmanager/util/UIUtils$1;->val$groupName:Ljava/lang/String;

    iput-object p3, p0, Lcom/samsung/android/app/twatchmanager/util/UIUtils$1;->val$iv:Landroid/widget/ImageView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSyncComplete(IZ)V
    .locals 2

    if-eqz p2, :cond_0

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/app/twatchmanager/util/UIUtils$1$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/twatchmanager/util/UIUtils$1$1;-><init>(Lcom/samsung/android/app/twatchmanager/util/UIUtils$1;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
