.class public abstract Landroid/support/v7/widget/bj;
.super Ljava/lang/Object;


# static fields
.field static final FLAG_ADAPTER_FULLUPDATE:I = 0x400

.field static final FLAG_ADAPTER_POSITION_UNKNOWN:I = 0x200

.field static final FLAG_APPEARED_IN_PRE_LAYOUT:I = 0x1000

.field static final FLAG_BOUNCED_FROM_HIDDEN_LIST:I = 0x2000

.field static final FLAG_BOUND:I = 0x1

.field static final FLAG_IGNORE:I = 0x80

.field static final FLAG_INVALID:I = 0x4

.field static final FLAG_MOVED:I = 0x800

.field static final FLAG_NOT_RECYCLABLE:I = 0x10

.field static final FLAG_REMOVED:I = 0x8

.field static final FLAG_RETURNED_FROM_SCRAP:I = 0x20

.field static final FLAG_TMP_DETACHED:I = 0x100

.field static final FLAG_UPDATE:I = 0x2

.field private static final FULLUPDATE_PAYLOADS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final itemView:Landroid/view/View;

.field private mFlags:I

.field private mInChangeScrap:Z

.field private mIsRecyclableCount:I

.field mItemId:J

.field mItemViewType:I

.field mOldPosition:I

.field mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field mPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field mPosition:I

.field mPreLayoutPosition:I

.field private mScrapContainer:Landroid/support/v7/widget/ba;

.field mShadowedHolder:Landroid/support/v7/widget/bj;

.field mShadowingHolder:Landroid/support/v7/widget/bj;

.field mUnmodifiedPayloads:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private mWasImportantForAccessibilityBeforeHidden:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Ljava/util/Collections;->EMPTY_LIST:Ljava/util/List;

    sput-object v0, Landroid/support/v7/widget/bj;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, -0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v3, p0, Landroid/support/v7/widget/bj;->mPosition:I

    iput v3, p0, Landroid/support/v7/widget/bj;->mOldPosition:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/bj;->mItemId:J

    iput v3, p0, Landroid/support/v7/widget/bj;->mItemViewType:I

    iput v3, p0, Landroid/support/v7/widget/bj;->mPreLayoutPosition:I

    iput-object v2, p0, Landroid/support/v7/widget/bj;->mShadowedHolder:Landroid/support/v7/widget/bj;

    iput-object v2, p0, Landroid/support/v7/widget/bj;->mShadowingHolder:Landroid/support/v7/widget/bj;

    iput-object v2, p0, Landroid/support/v7/widget/bj;->mPayloads:Ljava/util/List;

    iput-object v2, p0, Landroid/support/v7/widget/bj;->mUnmodifiedPayloads:Ljava/util/List;

    iput v4, p0, Landroid/support/v7/widget/bj;->mIsRecyclableCount:I

    iput-object v2, p0, Landroid/support/v7/widget/bj;->mScrapContainer:Landroid/support/v7/widget/ba;

    iput-boolean v4, p0, Landroid/support/v7/widget/bj;->mInChangeScrap:Z

    iput v4, p0, Landroid/support/v7/widget/bj;->mWasImportantForAccessibilityBeforeHidden:I

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "itemView may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/bj;->itemView:Landroid/view/View;

    return-void
.end method

.method static synthetic access$1500(Landroid/support/v7/widget/bj;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/bj;->onEnteredHiddenState()V

    return-void
.end method

.method static synthetic access$1600(Landroid/support/v7/widget/bj;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/bj;->onLeftHiddenState()V

    return-void
.end method

.method static synthetic access$4900(Landroid/support/v7/widget/bj;)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/bj;->doesTransientStatePreventRecycling()Z

    move-result v0

    return v0
.end method

.method static synthetic access$5002(Landroid/support/v7/widget/bj;Landroid/support/v7/widget/ba;)Landroid/support/v7/widget/ba;
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/bj;->mScrapContainer:Landroid/support/v7/widget/ba;

    return-object p1
.end method

.method static synthetic access$5100(Landroid/support/v7/widget/bj;)Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->mInChangeScrap:Z

    return v0
.end method

.method static synthetic access$5102(Landroid/support/v7/widget/bj;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/bj;->mInChangeScrap:Z

    return p1
.end method

.method static synthetic access$6300(Landroid/support/v7/widget/bj;)Z
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/bj;->shouldBeKeptAsChild()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6500(Landroid/support/v7/widget/bj;)I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    return v0
.end method

.method private createPayloadsIfNeeded()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bj;->mPayloads:Ljava/util/List;

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/bj;->mPayloads:Ljava/util/List;

    iget-object v0, p0, Landroid/support/v7/widget/bj;->mPayloads:Ljava/util/List;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/bj;->mUnmodifiedPayloads:Ljava/util/List;

    :cond_0
    return-void
.end method

.method private doesTransientStatePreventRecycling()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bj;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/bo;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onEnteredHiddenState()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/bj;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/bo;->e(Landroid/view/View;)I

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/bj;->mWasImportantForAccessibilityBeforeHidden:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->itemView:Landroid/view/View;

    const/4 v1, 0x4

    invoke-static {v0, v1}, Landroid/support/v4/view/bo;->c(Landroid/view/View;I)V

    return-void
.end method

.method private onLeftHiddenState()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/bj;->itemView:Landroid/view/View;

    iget v1, p0, Landroid/support/v7/widget/bj;->mWasImportantForAccessibilityBeforeHidden:I

    invoke-static {v0, v1}, Landroid/support/v4/view/bo;->c(Landroid/view/View;I)V

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/bj;->mWasImportantForAccessibilityBeforeHidden:I

    return-void
.end method

.method private shouldBeKeptAsChild()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method addChangePayload(Ljava/lang/Object;)V
    .locals 1

    if-nez p1, :cond_1

    const/16 v0, 0x400

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bj;->addFlags(I)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_0

    invoke-direct {p0}, Landroid/support/v7/widget/bj;->createPayloadsIfNeeded()V

    iget-object v0, p0, Landroid/support/v7/widget/bj;->mPayloads:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method addFlags(I)V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    or-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    return-void
.end method

.method clearOldPosition()V
    .locals 1

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/bj;->mOldPosition:I

    iput v0, p0, Landroid/support/v7/widget/bj;->mPreLayoutPosition:I

    return-void
.end method

.method clearPayload()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bj;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bj;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    and-int/lit16 v0, v0, -0x401

    iput v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    return-void
.end method

.method clearReturnedFromScrapFlag()V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    and-int/lit8 v0, v0, -0x21

    iput v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    return-void
.end method

.method clearTmpDetachFlag()V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    and-int/lit16 v0, v0, -0x101

    iput v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    return-void
.end method

.method flagRemovedAndOffsetPosition(IIZ)V
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/bj;->addFlags(I)V

    invoke-virtual {p0, p2, p3}, Landroid/support/v7/widget/bj;->offsetPosition(IZ)V

    iput p1, p0, Landroid/support/v7/widget/bj;->mPosition:I

    return-void
.end method

.method public final getAdapterPosition()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bj;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    if-nez v0, :cond_0

    const/4 v0, -0x1

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/bj;->mOwnerRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p0}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/bj;)I

    move-result v0

    goto :goto_0
.end method

.method public final getItemId()J
    .locals 2

    iget-wide v0, p0, Landroid/support/v7/widget/bj;->mItemId:J

    return-wide v0
.end method

.method public final getItemViewType()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bj;->mItemViewType:I

    return v0
.end method

.method public final getLayoutPosition()I
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/bj;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/bj;->mPosition:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/bj;->mPreLayoutPosition:I

    goto :goto_0
.end method

.method public final getOldPosition()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bj;->mOldPosition:I

    return v0
.end method

.method public final getPosition()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    iget v0, p0, Landroid/support/v7/widget/bj;->mPreLayoutPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/bj;->mPosition:I

    :goto_0
    return v0

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/bj;->mPreLayoutPosition:I

    goto :goto_0
.end method

.method getUnmodifiedPayloads()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    iget v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    and-int/lit16 v0, v0, 0x400

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/bj;->mPayloads:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bj;->mPayloads:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Landroid/support/v7/widget/bj;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/bj;->mUnmodifiedPayloads:Ljava/util/List;

    goto :goto_0

    :cond_2
    sget-object v0, Landroid/support/v7/widget/bj;->FULLUPDATE_PAYLOADS:Ljava/util/List;

    goto :goto_0
.end method

.method hasAnyOfTheFlags(I)Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    and-int/2addr v0, p1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isAdapterPositionUnknown()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    and-int/lit16 v0, v0, 0x200

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isBound()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isInvalid()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isRecyclable()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    and-int/lit8 v0, v0, 0x10

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/bj;->itemView:Landroid/view/View;

    invoke-static {v0}, Landroid/support/v4/view/bo;->c(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isRemoved()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isScrap()Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bj;->mScrapContainer:Landroid/support/v7/widget/ba;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isTmpDetached()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    and-int/lit16 v0, v0, 0x100

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isUpdated()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method needsUpdate()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method offsetPosition(IZ)V
    .locals 2

    const/4 v1, -0x1

    iget v0, p0, Landroid/support/v7/widget/bj;->mOldPosition:I

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/bj;->mPosition:I

    iput v0, p0, Landroid/support/v7/widget/bj;->mOldPosition:I

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/bj;->mPreLayoutPosition:I

    if-ne v0, v1, :cond_1

    iget v0, p0, Landroid/support/v7/widget/bj;->mPosition:I

    iput v0, p0, Landroid/support/v7/widget/bj;->mPreLayoutPosition:I

    :cond_1
    if-eqz p2, :cond_2

    iget v0, p0, Landroid/support/v7/widget/bj;->mPreLayoutPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/bj;->mPreLayoutPosition:I

    :cond_2
    iget v0, p0, Landroid/support/v7/widget/bj;->mPosition:I

    add-int/2addr v0, p1

    iput v0, p0, Landroid/support/v7/widget/bj;->mPosition:I

    iget-object v0, p0, Landroid/support/v7/widget/bj;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/bj;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    const/4 v1, 0x1

    iput-boolean v1, v0, Landroid/support/v7/widget/RecyclerView$LayoutParams;->c:Z

    :cond_3
    return-void
.end method

.method resetInternal()V
    .locals 5

    const/4 v4, 0x0

    const/4 v3, 0x0

    const/4 v2, -0x1

    iput v3, p0, Landroid/support/v7/widget/bj;->mFlags:I

    iput v2, p0, Landroid/support/v7/widget/bj;->mPosition:I

    iput v2, p0, Landroid/support/v7/widget/bj;->mOldPosition:I

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Landroid/support/v7/widget/bj;->mItemId:J

    iput v2, p0, Landroid/support/v7/widget/bj;->mPreLayoutPosition:I

    iput v3, p0, Landroid/support/v7/widget/bj;->mIsRecyclableCount:I

    iput-object v4, p0, Landroid/support/v7/widget/bj;->mShadowedHolder:Landroid/support/v7/widget/bj;

    iput-object v4, p0, Landroid/support/v7/widget/bj;->mShadowingHolder:Landroid/support/v7/widget/bj;

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->clearPayload()V

    iput v3, p0, Landroid/support/v7/widget/bj;->mWasImportantForAccessibilityBeforeHidden:I

    return-void
.end method

.method saveOldPosition()V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/bj;->mOldPosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/bj;->mPosition:I

    iput v0, p0, Landroid/support/v7/widget/bj;->mOldPosition:I

    :cond_0
    return-void
.end method

.method setFlags(II)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    xor-int/lit8 v1, p2, -0x1

    and-int/2addr v0, v1

    and-int v1, p1, p2

    or-int/2addr v0, v1

    iput v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    return-void
.end method

.method public final setIsRecyclable(Z)V
    .locals 3

    if-eqz p1, :cond_1

    iget v0, p0, Landroid/support/v7/widget/bj;->mIsRecyclableCount:I

    add-int/lit8 v0, v0, -0x1

    :goto_0
    iput v0, p0, Landroid/support/v7/widget/bj;->mIsRecyclableCount:I

    iget v0, p0, Landroid/support/v7/widget/bj;->mIsRecyclableCount:I

    if-gez v0, :cond_2

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v7/widget/bj;->mIsRecyclableCount:I

    const-string v0, "View"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "isRecyclable decremented below 0: unmatched pair of setIsRecyable() calls for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget v0, p0, Landroid/support/v7/widget/bj;->mIsRecyclableCount:I

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    if-nez p1, :cond_3

    iget v0, p0, Landroid/support/v7/widget/bj;->mIsRecyclableCount:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_3

    iget v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    goto :goto_1

    :cond_3
    if-eqz p1, :cond_0

    iget v0, p0, Landroid/support/v7/widget/bj;->mIsRecyclableCount:I

    if-nez v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    and-int/lit8 v0, v0, -0x11

    iput v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    goto :goto_1
.end method

.method setScrapContainer(Landroid/support/v7/widget/ba;Z)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/bj;->mScrapContainer:Landroid/support/v7/widget/ba;

    iput-boolean p2, p0, Landroid/support/v7/widget/bj;->mInChangeScrap:Z

    return-void
.end method

.method shouldIgnore()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method stopIgnoring()V
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    and-int/lit16 v0, v0, -0x81

    iput v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    new-instance v1, Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ViewHolder{"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " position="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/bj;->mPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " id="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Landroid/support/v7/widget/bj;->mItemId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", oldPos="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/bj;->mOldPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", pLpos:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/bj;->mPreLayoutPosition:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->isScrap()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, " scrap "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v0, p0, Landroid/support/v7/widget/bj;->mInChangeScrap:Z

    if-eqz v0, :cond_a

    const-string v0, "[changeScrap]"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->isInvalid()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, " invalid"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->isBound()Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, " unbound"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->needsUpdate()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, " update"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->isRemoved()Z

    move-result v0

    if-eqz v0, :cond_4

    const-string v0, " removed"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->shouldIgnore()Z

    move-result v0

    if-eqz v0, :cond_5

    const-string v0, " ignored"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, " tmpDetached"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->isRecyclable()Z

    move-result v0

    if-nez v0, :cond_7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " not recyclable("

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Landroid/support/v7/widget/bj;->mIsRecyclableCount:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ")"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/bj;->isAdapterPositionUnknown()Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, " undefined adapter position"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    iget-object v0, p0, Landroid/support/v7/widget/bj;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_9

    const-string v0, " no parent"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_9
    const-string v0, "}"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_a
    const-string v0, "[attachedScrap]"

    goto/16 :goto_0
.end method

.method unScrap()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/bj;->mScrapContainer:Landroid/support/v7/widget/ba;

    invoke-virtual {v0, p0}, Landroid/support/v7/widget/ba;->d(Landroid/support/v7/widget/bj;)V

    return-void
.end method

.method wasReturnedFromScrap()Z
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/bj;->mFlags:I

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
