.class Landroid/support/v7/widget/as;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/aq;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method private constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/ae;)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/as;-><init>(Landroid/support/v7/widget/RecyclerView;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/bj;)V
    .locals 3

    const/4 v1, 0x0

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/bj;->setIsRecyclable(Z)V

    iget-object v0, p1, Landroid/support/v7/widget/bj;->mShadowedHolder:Landroid/support/v7/widget/bj;

    if-eqz v0, :cond_0

    iget-object v0, p1, Landroid/support/v7/widget/bj;->mShadowingHolder:Landroid/support/v7/widget/bj;

    if-nez v0, :cond_0

    iput-object v1, p1, Landroid/support/v7/widget/bj;->mShadowedHolder:Landroid/support/v7/widget/bj;

    :cond_0
    iput-object v1, p1, Landroid/support/v7/widget/bj;->mShadowingHolder:Landroid/support/v7/widget/bj;

    invoke-static {p1}, Landroid/support/v7/widget/bj;->access$6300(Landroid/support/v7/widget/bj;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/bj;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Landroid/support/v7/widget/RecyclerView;->c(Landroid/support/v7/widget/RecyclerView;Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Landroid/support/v7/widget/bj;->isTmpDetached()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/as;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v1, p1, Landroid/support/v7/widget/bj;->itemView:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/RecyclerView;->removeDetachedView(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method
