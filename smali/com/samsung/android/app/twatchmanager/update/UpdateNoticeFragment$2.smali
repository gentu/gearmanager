.class Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnCancelListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$2;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "user pressed back key in Dialog"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$2;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$2;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$600(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$502(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Z)Z

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$2;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->finish()V

    return-void
.end method
