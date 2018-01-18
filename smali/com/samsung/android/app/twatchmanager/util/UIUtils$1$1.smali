.class Lcom/samsung/android/app/twatchmanager/util/UIUtils$1$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/util/UIUtils$1;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/util/UIUtils$1;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/util/UIUtils$1$1;->this$0:Lcom/samsung/android/app/twatchmanager/util/UIUtils$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/UIUtils$1$1;->this$0:Lcom/samsung/android/app/twatchmanager/util/UIUtils$1;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/util/UIUtils$1;->val$context:Landroid/content/Context;

    sget-object v1, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;->HEADER:Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/util/UIUtils$1$1;->this$0:Lcom/samsung/android/app/twatchmanager/util/UIUtils$1;

    iget-object v2, v2, Lcom/samsung/android/app/twatchmanager/util/UIUtils$1;->val$groupName:Ljava/lang/String;

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/util/UIUtils$1$1;->this$0:Lcom/samsung/android/app/twatchmanager/util/UIUtils$1;

    iget-object v3, v3, Lcom/samsung/android/app/twatchmanager/util/UIUtils$1;->val$iv:Landroid/widget/ImageView;

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/twatchmanager/util/UIUtils;->setDrawableByGroupName(Landroid/content/Context;Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;Ljava/lang/String;Landroid/widget/ImageView;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/UIUtils$1$1;->this$0:Lcom/samsung/android/app/twatchmanager/util/UIUtils$1;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/util/UIUtils$1;->val$iv:Landroid/widget/ImageView;

    const v1, 0x7f020029

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_0
    return-void
.end method
