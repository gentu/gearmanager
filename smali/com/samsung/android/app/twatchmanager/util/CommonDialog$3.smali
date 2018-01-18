.class Lcom/samsung/android/app/twatchmanager/util/CommonDialog$3;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/twatchmanager/util/CommonDialog;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog$3;->this$0:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3

    const/4 v2, 0x0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->access$100()Ljava/lang/String;

    move-result-object v0

    const-string v1, "DialogInterface.OnDismissListener - onDismiss()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog$3;->this$0:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDismissListner:Landroid/content/DialogInterface$OnDismissListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog$3;->this$0:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDismissListner:Landroid/content/DialogInterface$OnDismissListener;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog$3;->this$0:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    iget-object v1, v1, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-interface {v0, v1}, Landroid/content/DialogInterface$OnDismissListener;->onDismiss(Landroid/content/DialogInterface;)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog$3;->this$0:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    iput-object v2, v0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog$3;->this$0:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    iput-object v2, v0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog$3;->this$0:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->access$200(Lcom/samsung/android/app/twatchmanager/util/CommonDialog;)Lcom/samsung/android/app/twatchmanager/util/ShowButtonBackgroundSettingObserver;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog$3;->this$0:Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->access$200(Lcom/samsung/android/app/twatchmanager/util/CommonDialog;)Lcom/samsung/android/app/twatchmanager/util/ShowButtonBackgroundSettingObserver;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/twatchmanager/util/ShowButtonBackgroundSettingObserver;->setOnContentChangeListener(Lcom/samsung/android/app/twatchmanager/util/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;)V

    :cond_1
    return-void
.end method
