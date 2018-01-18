.class public Lcom/samsung/android/app/twatchmanager/util/CommonDialog;
.super Ljava/lang/Object;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBottomMargin_IV_TV:Landroid/view/View;

.field private mBottomMargin_TV_CB:Landroid/view/View;

.field private mButtonType:I

.field protected mCB:Landroid/widget/CheckBox;

.field protected mCBMessageTV:Landroid/widget/TextView;

.field protected mCancelBtn:Landroid/widget/TextView;

.field protected mCircleProgressCountIV:Landroid/widget/ImageView;

.field protected mCircleProgressCountLayout:Landroid/widget/LinearLayout;

.field protected mCircleProgressCountMessageTV:Landroid/widget/TextView;

.field protected mCircleProgressCountTV:Landroid/widget/TextView;

.field private mCircleProgressLayout:Landroid/widget/RelativeLayout;

.field private mCircleProgressTV:Landroid/widget/TextView;

.field protected mContext:Landroid/content/Context;

.field protected mDialog:Landroid/app/AlertDialog;

.field protected mDismissListner:Landroid/content/DialogInterface$OnDismissListener;

.field protected mDividerBtn:Landroid/view/View;

.field protected mLayout_CB_TV:Landroid/widget/LinearLayout;

.field private mMessageIV:Landroid/widget/ImageView;

.field private mMessageTV:Landroid/widget/TextView;

.field protected mMessageType:I

.field protected mOkBtn:Landroid/widget/TextView;

.field protected mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

.field private final mOnSettingValueChangeListener:Lcom/samsung/android/app/twatchmanager/util/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

.field private mPopupBtnLayout:Landroid/widget/LinearLayout;

.field private mPopupMessageLayout:Landroid/widget/RelativeLayout;

.field protected mProgressBar:Landroid/widget/ProgressBar;

.field protected mProgressBarLayout:Landroid/widget/RelativeLayout;

.field protected mProgressBarMessageTV:Landroid/widget/TextView;

.field protected mProgressBarPercentTV:Landroid/widget/TextView;

.field private mShowButtonBackgroundSettingObserver:Lcom/samsung/android/app/twatchmanager/util/ShowButtonBackgroundSettingObserver;

.field protected mTitleTV:Landroid/widget/TextView;

.field private mTitleType:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2

    const/4 v1, 0x0

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mContext:Landroid/content/Context;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDialog:Landroid/app/AlertDialog;

    iput v1, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mTitleType:I

    iput v1, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageType:I

    iput v1, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mButtonType:I

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mTitleTV:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mPopupMessageLayout:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageTV:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageIV:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mLayout_CB_TV:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCB:Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCBMessageTV:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mBottomMargin_IV_TV:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mBottomMargin_TV_CB:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mPopupBtnLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mOkBtn:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDividerBtn:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCancelBtn:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressLayout:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressTV:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mProgressBarMessageTV:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mProgressBarPercentTV:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mProgressBar:Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressCountLayout:Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressCountIV:Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressCountMessageTV:Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressCountTV:Landroid/widget/TextView;

    new-instance v0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog$1;-><init>(Lcom/samsung/android/app/twatchmanager/util/CommonDialog;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mOnSettingValueChangeListener:Lcom/samsung/android/app/twatchmanager/util/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

    new-instance v0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog$3;-><init>(Lcom/samsung/android/app/twatchmanager/util/CommonDialog;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mContext:Landroid/content/Context;

    iput p2, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mTitleType:I

    iput p3, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageType:I

    iput p4, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mButtonType:I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/twatchmanager/util/CommonDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->initShowButtonBackground(Z)V

    return-void
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/twatchmanager/util/CommonDialog;)Lcom/samsung/android/app/twatchmanager/util/ShowButtonBackgroundSettingObserver;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mShowButtonBackgroundSettingObserver:Lcom/samsung/android/app/twatchmanager/util/ShowButtonBackgroundSettingObserver;

    return-object v0
.end method

.method private initShowButtonBackground(Z)V
    .locals 3
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "initShowButtonBackground() showButtonShape:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p1, :cond_2

    const v0, 0x7f020003

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mOkBtn:Landroid/widget/TextView;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mOkBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCancelBtn:Landroid/widget/TextView;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCancelBtn:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V

    :cond_1
    return-void

    :cond_2
    const v0, 0x7f020002

    goto :goto_0
.end method


# virtual methods
.method public cancel()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->cancel()V

    :cond_0
    return-void
.end method

.method public createDialog()V
    .locals 4

    const/16 v3, 0x100

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->TAG:Ljava/lang/String;

    const-string v1, "createDialog()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mContext:Landroid/content/Context;

    const-string v1, "layout_inflater"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f030002

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->getResourceID(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->makeDialogForm()V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isSupportButtonShapes()Z

    move-result v1

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/twatchmanager/util/ShowButtonBackgroundSettingObserver;

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/samsung/android/app/twatchmanager/util/ShowButtonBackgroundSettingObserver;-><init>(Landroid/content/ContentResolver;)V

    iput-object v1, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mShowButtonBackgroundSettingObserver:Lcom/samsung/android/app/twatchmanager/util/ShowButtonBackgroundSettingObserver;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mShowButtonBackgroundSettingObserver:Lcom/samsung/android/app/twatchmanager/util/ShowButtonBackgroundSettingObserver;

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mOnSettingValueChangeListener:Lcom/samsung/android/app/twatchmanager/util/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/twatchmanager/util/ShowButtonBackgroundSettingObserver;->setOnContentChangeListener(Lcom/samsung/android/app/twatchmanager/util/ShowButtonBackgroundSettingObserver$OnSettingValueChangeListener;)V

    :cond_0
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1, v0}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDialog:Landroid/app/AlertDialog;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageType:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_2

    :cond_1
    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMessageType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->TAG:Ljava/lang/String;

    const-string v1, "Ignore key input!!!"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDialog:Landroid/app/AlertDialog;

    new-instance v1, Lcom/samsung/android/app/twatchmanager/util/CommonDialog$2;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/twatchmanager/util/CommonDialog$2;-><init>(Lcom/samsung/android/app/twatchmanager/util/CommonDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDialog:Landroid/app/AlertDialog;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mOnDismissListener:Landroid/content/DialogInterface$OnDismissListener;

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method public dismiss()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_0
    return-void
.end method

.method protected getResourceID(Landroid/view/View;)V
    .locals 4

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->TAG:Ljava/lang/String;

    const-string v1, "getResourceID()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const v0, 0x7f0b0009

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mTitleTV:Landroid/widget/TextView;

    const v0, 0x7f0b000b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mPopupMessageLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b000e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageTV:Landroid/widget/TextView;

    const v0, 0x7f0b000c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageIV:Landroid/widget/ImageView;

    const v0, 0x7f0b000f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mLayout_CB_TV:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0010

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCB:Landroid/widget/CheckBox;

    const v0, 0x7f0b0011

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCBMessageTV:Landroid/widget/TextView;

    const v0, 0x7f0b000d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mBottomMargin_IV_TV:Landroid/view/View;

    const v0, 0x7f0b0012

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mBottomMargin_TV_CB:Landroid/view/View;

    const v0, 0x7f0b001e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mPopupBtnLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b0020

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mOkBtn:Landroid/widget/TextView;

    const v0, 0x7f0b001f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCancelBtn:Landroid/widget/TextView;

    const v0, 0x7f0b0013

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressLayout:Landroid/widget/RelativeLayout;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressLayout:Landroid/widget/RelativeLayout;

    const v1, 0x7f0b0014

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    if-eqz v0, :cond_0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0026

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->getIndeterminateDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/util/UIUtils;->setColorFilter(Ljava/lang/String;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    const v0, 0x7f0b0015

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressTV:Landroid/widget/TextView;

    const v0, 0x7f0b0016

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    const v0, 0x7f0b0017

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mProgressBarMessageTV:Landroid/widget/TextView;

    const v0, 0x7f0b0018

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mProgressBarPercentTV:Landroid/widget/TextView;

    const v0, 0x7f0b0019

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mProgressBar:Landroid/widget/ProgressBar;

    const v0, 0x7f0b001a

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressCountLayout:Landroid/widget/LinearLayout;

    const v0, 0x7f0b001b

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressCountIV:Landroid/widget/ImageView;

    const v0, 0x7f0b001c

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressCountMessageTV:Landroid/widget/TextView;

    const v0, 0x7f0b001d

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressCountTV:Landroid/widget/TextView;

    return-void
.end method

.method public isCheckedCB()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCB:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public isShowing()Z
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected makeDialogForm()V
    .locals 6

    const/4 v5, 0x1

    const/4 v4, 0x0

    const/16 v3, 0x8

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->TAG:Ljava/lang/String;

    const-string v1, "makeDialogForm()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mTitleType:I

    packed-switch v0, :pswitch_data_0

    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default-> mTitleType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mTitleType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    iget v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageType:I

    packed-switch v0, :pswitch_data_1

    :cond_1
    :goto_1
    :pswitch_0
    iget v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mButtonType:I

    packed-switch v0, :pswitch_data_2

    const-string v0, "TAG"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "default-> mMessageType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_2
    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mTitleType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mTitleType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mMessageType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "mButtonType : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mButtonType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mTitleTV:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mBottomMargin_IV_TV:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mBottomMargin_IV_TV:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_2
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mTitleTV:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mBottomMargin_IV_TV:Landroid/view/View;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mBottomMargin_IV_TV:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_0

    :pswitch_3
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mPopupMessageLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mLayout_CB_TV:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_4
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mPopupMessageLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mLayout_CB_TV:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_5
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mPopupMessageLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mLayout_CB_TV:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_6
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mPopupMessageLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageIV:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mLayout_CB_TV:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_7
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mPopupMessageLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_8
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mPopupMessageLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto/16 :goto_1

    :pswitch_9
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mPopupMessageLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressCountLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f040000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressCountIV:Landroid/widget/ImageView;

    if-eqz v1, :cond_1

    if-eqz v0, :cond_1

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v0, v5}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressCountIV:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto/16 :goto_1

    :pswitch_a
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mPopupBtnLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mBottomMargin_TV_CB:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mBottomMargin_TV_CB:Landroid/view/View;

    invoke-virtual {v0, v4}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_b
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCancelBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mBottomMargin_TV_CB:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mBottomMargin_TV_CB:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_c
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mOkBtn:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mBottomMargin_TV_CB:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mBottomMargin_TV_CB:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    :pswitch_d
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mBottomMargin_TV_CB:Landroid/view/View;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mBottomMargin_TV_CB:Landroid/view/View;

    invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_2

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_9
    .end packed-switch

    :pswitch_data_2
    .packed-switch 0x0
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
    .end packed-switch
.end method

.method public setCancelBtnListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCancelBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCancelable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->TAG:Ljava/lang/String;

    const-string v1, "mDialog is null. please create dialog first."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCanceledOnTouchOutside(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setCanceledOnTouchOutside(Z)V

    :goto_0
    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->TAG:Ljava/lang/String;

    const-string v1, "mDialog is null. please create dialog first."

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public setCheckBoxListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mLayout_CB_TV:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setCheckCB()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCB:Landroid/widget/CheckBox;

    invoke-virtual {v0}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCB:Landroid/widget/CheckBox;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCB:Landroid/widget/CheckBox;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/CheckBox;->setChecked(Z)V

    goto :goto_0
.end method

.method public setImageToImageView(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageIV:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    return-void
.end method

.method public setMaxHeightToTextView(I)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMaxHeight(I)V

    return-void
.end method

.method public setMessage(Ljava/lang/String;)V
    .locals 2

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageType:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageType:I

    const/4 v1, 0x5

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mProgressBarMessageTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageType:I

    const/16 v1, 0x8

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressCountMessageTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageTV:Landroid/widget/TextView;

    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0
.end method

.method public setMessageFromHtml(Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageTV:Landroid/widget/TextView;

    invoke-static {p1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageTV:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageTV:Landroid/widget/TextView;

    new-instance v1, Landroid/text/method/ScrollingMovementMethod;

    invoke-direct {v1}, Landroid/text/method/ScrollingMovementMethod;-><init>()V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    return-void
.end method

.method protected setMessageType(I)V
    .locals 3

    const/4 v2, 0x1

    const/16 v1, 0x8

    iput p1, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mMessageType:I

    packed-switch p1, :pswitch_data_0

    :cond_0
    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mPopupMessageLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mProgressBarLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressCountLayout:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mContext:Landroid/content/Context;

    const/high16 v1, 0x7f040000

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressCountIV:Landroid/widget/ImageView;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_0

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillAfter(Z)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCircleProgressCountIV:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x8
        :pswitch_0
    .end packed-switch
.end method

.method public setOkBtnEnable(Z)V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mOkBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mOkBtn:Landroid/widget/TextView;

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setAlpha(F)V

    return-void

    :cond_0
    const/high16 v0, 0x3f000000    # 0.5f

    goto :goto_0
.end method

.method public setOkBtnListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mOkBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    return-void
.end method

.method public setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDismissListner:Landroid/content/DialogInterface$OnDismissListener;

    return-void
.end method

.method public setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0, p1}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V

    return-void
.end method

.method public setTextToCancelBtn(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCancelBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextToCheckBox(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mCBMessageTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTextToOkBtn(Ljava/lang/String;)V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mOkBtn:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mTitleTV:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mTitleTV:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mTitleTV:Landroid/widget/TextView;

    const/4 v1, 0x1

    const/high16 v2, 0x41980000    # 19.0f

    invoke-virtual {v0, v1, v2}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    return-void
.end method

.method public show()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/CommonDialog;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    :cond_0
    return-void
.end method
