.class public Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;
.super Landroid/app/Fragment;

# interfaces
.implements Lcom/samsung/android/app/watchmanager/setupwizard/OnBackKeyListener;
.implements Lcom/sothree/slidinguppanel/d;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private argbEvaluator:Landroid/animation/ArgbEvaluator;

.field private arrowAnimationHelper:Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;

.field private childBgFrag:Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;

.field private isSamsungDevice:Z

.field private logoAnimationHelper:Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;

.field private mLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

.field private navigationEndColor:I

.field private navigationStartColor:I

.field private pickGearFragment:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->startSamsungMembers(Z)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;)Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->mLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->initConnectingAnimation()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;)Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->arrowAnimationHelper:Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;

    return-object v0
.end method

.method private initConnectingAnimation()V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->TAG:Ljava/lang/String;

    const-string v1, "initConnectingAnimation() init connecting vi"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->arrowAnimationHelper:Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment$4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment$4;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private openBrowser(Ljava/lang/String;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "openBrowser ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->TAG:Ljava/lang/String;

    const-string v2, "unable to open the link"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/ActivityNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private startSamsungMembers(Z)V
    .locals 2

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->startSamsungMembersApp()V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/ContactUs;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/ContactUs;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/ContactUs;->getBrowserURI()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->openBrowser(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private startSamsungMembersApp()V
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "7g2iz1jlkc"

    const-string v3, "Samsung Gear"

    new-instance v4, Lcom/samsung/android/app/watchmanager/setupwizard/ContactUs;

    invoke-direct {v4, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/ContactUs;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4}, Lcom/samsung/android/app/watchmanager/setupwizard/ContactUs;->getApplicationURI()Ljava/lang/String;

    move-result-object v0

    const-string v4, "voc://view/contactUs"

    new-instance v5, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    const-string v4, "packageName"

    invoke-virtual {v5, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appId"

    invoke-virtual {v5, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "appName"

    invoke-virtual {v5, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "faqUrl"

    invoke-virtual {v5, v1, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->startActivity(Landroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public onBackPressed()Z
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->mLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->mLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getPanelState()Lcom/sothree/slidinguppanel/e;

    move-result-object v0

    sget-object v1, Lcom/sothree/slidinguppanel/e;->a:Lcom/sothree/slidinguppanel/e;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->mLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    sget-object v1, Lcom/sothree/slidinguppanel/e;->b:Lcom/sothree/slidinguppanel/e;

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelState(Lcom/sothree/slidinguppanel/e;)V

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isSamsungDevice()Z

    move-result v0

    iput-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->isSamsungDevice:Z

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selected configuration : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060067

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 11

    const v10, 0x7f0a000c

    const/4 v3, 0x1

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->TAG:Ljava/lang/String;

    const-string v1, "onCreateView"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f03000d

    invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    const v0, 0x7f0b0054

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->mLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/util/UIUtils;->getWindowHeight(Landroid/app/Activity;)I

    move-result v0

    div-int/lit8 v5, v0, 0x2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->mLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0, v5}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelHeight(I)V

    const v0, 0x7f0b005b

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    const v1, 0x7f0b005c

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout$LayoutParams;

    iput v5, v1, Landroid/widget/LinearLayout$LayoutParams;->height:I

    invoke-virtual {v6, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070009

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    float-to-int v6, v6

    sget-object v7, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->TAG:Ljava/lang/String;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "onCreateView() headerHeight : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " touchableHeight : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sub-int v5, v6, v5

    invoke-virtual {v1, v2, v5, v2, v2}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout$LayoutParams;->setMargins(IIII)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    const v0, 0x7f0b0006

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const v1, 0x7f0b005a

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    new-instance v5, Landroid/text/SpannableString;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f060060

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    new-instance v6, Landroid/text/style/UnderlineSpan;

    invoke-direct {v6}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {v5}, Landroid/text/SpannableString;->length()I

    move-result v7

    invoke-virtual {v5, v6, v2, v7, v2}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const-string v5, "com.samsung.android.voc"

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v6

    invoke-static {v6, v5}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isExistPackage(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-static {v5}, Lcom/samsung/android/app/twatchmanager/util/InstallationUtils;->getVersionCode(Ljava/lang/String;)I

    move-result v5

    const v6, 0xa220268

    if-lt v5, v6, :cond_0

    move v2, v3

    :cond_0
    sget-object v5, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "contact us must launch application ["

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v5, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment$1;

    invoke-direct {v5, p0, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment$1;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;Z)V

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v1, Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    const v5, 0x7f0b0056

    invoke-virtual {v4, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    invoke-direct {v1, v2, v0, v5, v3}, Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;-><init>(Landroid/content/Context;Landroid/view/View;Landroid/view/View;I)V

    iput-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->logoAnimationHelper:Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->mLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0, p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(Lcom/sothree/slidinguppanel/d;)V

    const v0, 0x7f0b0059

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment$2;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->childBgFrag:Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0b0055

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->childBgFrag:Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->mLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->childBgFrag:Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->a(Lcom/sothree/slidinguppanel/d;)V

    new-instance v0, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->pickGearFragment:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->getChildFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    const v1, 0x7f0b005d

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->pickGearFragment:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-virtual {v0, v1, v2}, Landroid/app/FragmentTransaction;->add(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v10, v1}, Lcom/samsung/android/app/twatchmanager/util/UIUtils;->changeNavigationBarColor(Landroid/app/Activity;ILandroid/view/View;)V

    new-instance v0, Landroid/animation/ArgbEvaluator;

    invoke-direct {v0}, Landroid/animation/ArgbEvaluator;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v10}, Lcom/samsung/android/app/twatchmanager/util/UIUtils;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->navigationStartColor:I

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a000d

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/UIUtils;->getColor(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->navigationEndColor:I

    return-object v4
.end method

.method public onDestroy()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Fragment;->onDestroy()V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->mLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0, p0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b(Lcom/sothree/slidinguppanel/d;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->mLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->childBgFrag:Lcom/samsung/android/app/watchmanager/setupwizard/BackgroundFragment;

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->b(Lcom/sothree/slidinguppanel/d;)V

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->gc()V

    return-void
.end method

.method public onPanelSlide(Landroid/view/View;F)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanelSlide, offset "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->logoAnimationHelper:Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;

    invoke-virtual {v0, p2}, Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;->animate(F)V

    iget-boolean v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->isSamsungDevice:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->argbEvaluator:Landroid/animation/ArgbEvaluator;

    iget v1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->navigationStartColor:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->navigationEndColor:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, p2, v1, v2}, Landroid/animation/ArgbEvaluator;->evaluate(FLjava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/UIUtils;->changeNavigationBarColorValue(Landroid/app/Activity;I)V

    :cond_0
    return-void
.end method

.method public onPanelStateChanged(Landroid/view/View;Lcom/sothree/slidinguppanel/e;Lcom/sothree/slidinguppanel/e;)V
    .locals 4

    const/4 v3, 0x1

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPanelStateChanged "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/sothree/slidinguppanel/e;->a:Lcom/sothree/slidinguppanel/e;

    if-ne p3, v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->mLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setTouchEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a000d

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/util/UIUtils;->changeNavigationBarColor(Landroid/app/Activity;ILandroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getSystemUiVisibility()I

    move-result v1

    and-int/lit16 v1, v1, -0x2001

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/sothree/slidinguppanel/e;->b:Lcom/sothree/slidinguppanel/e;

    if-ne p3, v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->mLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0, v3}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setTouchEnabled(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const v1, 0x7f0a000c

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->getView()Landroid/view/View;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/util/UIUtils;->changeNavigationBarColor(Landroid/app/Activity;ILandroid/view/View;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->logoAnimationHelper:Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/util/AnimationHelper;->animate(F)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->pickGearFragment:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->pickGearFragment:Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PickGearFragment;->reset()V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/sothree/slidinguppanel/e;->c:Lcom/sothree/slidinguppanel/e;

    if-ne p3, v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->mLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setTouchEnabled(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->mLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->getSlideOffset()F

    move-result v0

    const v1, 0x3ecccccd    # 0.4f

    cmpl-float v0, v0, v1

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->mLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    sget-object v1, Lcom/sothree/slidinguppanel/e;->a:Lcom/sothree/slidinguppanel/e;

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelState(Lcom/sothree/slidinguppanel/e;)V

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->mLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    sget-object v1, Lcom/sothree/slidinguppanel/e;->b:Lcom/sothree/slidinguppanel/e;

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setPanelState(Lcom/sothree/slidinguppanel/e;)V

    goto :goto_0
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroid/app/Fragment;->onStart()V

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStart"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    const-string v1, "G021"

    const-string v2, "Initial screen"

    const/4 v3, 0x0

    invoke-static {v0, v1, v2, v3}, Lcom/samsung/android/app/twatchmanager/log/LoggerUtil;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onStop()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->TAG:Ljava/lang/String;

    const-string v1, "onStop"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0}, Landroid/app/Fragment;->onStop()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->TAG:Ljava/lang/String;

    const-string v1, "onViewCreated()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Landroid/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment$3;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment$3;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;)V

    sget-object v2, Lcom/samsung/android/app/twatchmanager/util/PermissionUtils;->INITIAL_PERMISSION:[Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment;->verifyPermissions(Landroid/app/Activity;Lcom/samsung/android/app/watchmanager/setupwizard/PermissionFragment$IGrantedTask;[Ljava/lang/String;)V

    return-void
.end method

.method setScrollableView(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->mLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PromotionFragment;->mLayout:Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;

    invoke-virtual {v0, p1}, Lcom/sothree/slidinguppanel/SlidingUpPanelLayout;->setScrollableView(Landroid/view/View;)V

    :cond_0
    return-void
.end method
