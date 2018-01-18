.class Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$4;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4

    const/4 v3, 0x1

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "on click cancel button"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$4;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$4;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    invoke-static {v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$600(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Z

    move-result v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$502(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Z)Z

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$4;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    invoke-static {v0, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$1102(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;Z)Z

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$4;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->mActivity:Landroid/app/Activity;

    const-string v1, "auto_update"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/app/Activity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "IsNormalUpdateCancel"

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$4;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->access$900(Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;)Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->dismiss()V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment$4;->this$0:Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/update/UpdateNoticeFragment;->finish()V

    return-void
.end method
