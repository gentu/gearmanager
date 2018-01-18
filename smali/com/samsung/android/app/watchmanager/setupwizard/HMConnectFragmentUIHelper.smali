.class public Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;
.super Ljava/lang/Object;


# static fields
.field public static final CURRENT_DOWNLOADED_SIZE:Ljava/lang/String; = "2"

.field public static final CURRENT_INSTALLATION_COUNT:Ljava/lang/String; = "4"

.field public static final DOWNLOAD_PERCENTAGE:Ljava/lang/String; = "5"

.field private static final TAG:Ljava/lang/String;

.field public static final TOTAL_DOWNLOAD_SIZE:Ljava/lang/String; = "1"

.field public static final TOTAL_INSTALLATION_COUNT:Ljava/lang/String; = "3"


# instance fields
.field cancelButton:Landroid/widget/TextView;

.field downloadInstallViewSwitcher:Landroid/widget/ViewSwitcher;

.field flikeringAnimSet:Landroid/animation/AnimatorSet;

.field installationStarted:Z

.field isDarkNavigation:Z

.field mContext:Landroid/content/Context;

.field messageTextView:Landroid/widget/TextView;

.field progressPercentageTextView:Landroid/widget/TextView;

.field setupProgressBar:Landroid/widget/ProgressBar;

.field statusTextView:Landroid/widget/TextView;

.field transitionLayout:Landroid/widget/RelativeLayout;

.field view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;Z)V
    .locals 3

    const/4 v2, 0x4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->installationStarted:Z

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->view:Landroid/view/View;

    iput-boolean p3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->isDarkNavigation:Z

    const v0, 0x7f0b006c

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->transitionLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0021

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->messageTextView:Landroid/widget/TextView;

    const v0, 0x7f0b0022

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->statusTextView:Landroid/widget/TextView;

    const v0, 0x7f0b0023

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ViewSwitcher;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->downloadInstallViewSwitcher:Landroid/widget/ViewSwitcher;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->downloadInstallViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v2}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->downloadInstallViewSwitcher:Landroid/widget/ViewSwitcher;

    const v1, 0x7f0b0024

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->setupProgressBar:Landroid/widget/ProgressBar;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->setupProgressBar:Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->setupProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setMax(I)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->downloadInstallViewSwitcher:Landroid/widget/ViewSwitcher;

    const v1, 0x7f0b0025

    invoke-virtual {v0, v1}, Landroid/widget/ViewSwitcher;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->progressPercentageTextView:Landroid/widget/TextView;

    const v0, 0x7f0b001f

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->cancelButton:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->cancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->flikeringAnimSet:Landroid/animation/AnimatorSet;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private changeStatusBarColor()V
    .locals 3

    const/16 v2, 0x17

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v0, v2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v0, v2, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_1
    return-void
.end method

.method private setButtonEnable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->cancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->cancelButton:Landroid/widget/TextView;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->cancelButton:Landroid/widget/TextView;

    const v1, 0x3ecccccd    # 0.4f

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setAlpha(F)V

    goto :goto_0
.end method


# virtual methods
.method public getView()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->view:Landroid/view/View;

    return-object v0
.end method

.method setOperation(ILandroid/os/Bundle;)V
    .locals 5

    const/4 v4, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setOperation() operation:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " data :"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sparse-switch p1, :sswitch_data_0

    :cond_0
    :goto_0
    :sswitch_0
    return-void

    :sswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->messageTextView:Landroid/widget/TextView;

    const v1, 0x7f060044

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->downloadInstallViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v4}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->cancelButton:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->showTransitionLayout(Z)V

    goto :goto_0

    :sswitch_2
    const-string v0, "5"

    invoke-virtual {p2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->setupProgressBar:Landroid/widget/ProgressBar;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->setupProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setProgress(I)V

    :cond_1
    invoke-static {}, Ljava/text/NumberFormat;->getInstance()Ljava/text/NumberFormat;

    move-result-object v1

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->progressPercentageTextView:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, "%"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " Download percentage:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :sswitch_3
    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->installationStarted:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->installationStarted:Z

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->downloadInstallViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0, v4}, Landroid/widget/ViewSwitcher;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->messageTextView:Landroid/widget/TextView;

    const v1, 0x7f060045

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper$1;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;)V

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->downloadInstallViewSwitcher:Landroid/widget/ViewSwitcher;

    invoke-virtual {v0}, Landroid/widget/ViewSwitcher;->showNext()V

    invoke-direct {p0, v4}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->setButtonEnable(Z)V

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->showTransitionLayout(Z)V

    goto/16 :goto_0

    :sswitch_4
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->flikeringAnimSet:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->TAG:Ljava/lang/String;

    const-string v1, "setOperation() end flickering text animation"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->flikeringAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->removeAllListeners()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->flikeringAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->end()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->flikeringAnimSet:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    goto/16 :goto_0

    :sswitch_data_0
    .sparse-switch
        0x135 -> :sswitch_3
        0x136 -> :sswitch_0
        0x13b -> :sswitch_4
        0x2c3 -> :sswitch_1
        0x2c5 -> :sswitch_0
        0x2c6 -> :sswitch_2
    .end sparse-switch
.end method

.method public showTransitionLayout(Z)V
    .locals 3

    const v2, 0x7f0a000c

    if-nez p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->changeStatusBarColor()V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->transitionLayout:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/twatchmanager/util/UIUtils;->changeNavigationBarColor(Landroid/app/Activity;ILandroid/view/View;)V

    :cond_1
    :goto_1
    return-void

    :cond_2
    const/16 v0, 0x8

    goto :goto_0

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->isDarkNavigation:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->mContext:Landroid/content/Context;

    check-cast v0, Landroid/app/Activity;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/HMConnectFragmentUIHelper;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v2, v1}, Lcom/samsung/android/app/twatchmanager/util/UIUtils;->changeNavigationBarColor(Landroid/app/Activity;ILandroid/view/View;)V

    goto :goto_1
.end method
