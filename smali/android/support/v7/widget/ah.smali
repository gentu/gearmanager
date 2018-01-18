.class Landroid/support/v7/widget/ah;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v7/widget/bv;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/RecyclerView;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/RecyclerView;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/ah;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v7/widget/bj;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/ah;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->f:Landroid/support/v7/widget/au;

    iget-object v1, p1, Landroid/support/v7/widget/bj;->itemView:Landroid/view/View;

    iget-object v2, p0, Landroid/support/v7/widget/ah;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v2, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/ba;

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/au;->a(Landroid/view/View;Landroid/support/v7/widget/ba;)V

    return-void
.end method

.method public a(Landroid/support/v7/widget/bj;Landroid/support/v7/widget/ar;Landroid/support/v7/widget/ar;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ah;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->b:Landroid/support/v7/widget/ba;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/ba;->d(Landroid/support/v7/widget/bj;)V

    iget-object v0, p0, Landroid/support/v7/widget/ah;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->a(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/bj;Landroid/support/v7/widget/ar;Landroid/support/v7/widget/ar;)V

    return-void
.end method

.method public b(Landroid/support/v7/widget/bj;Landroid/support/v7/widget/ar;Landroid/support/v7/widget/ar;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/ah;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView;->b(Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/bj;Landroid/support/v7/widget/ar;Landroid/support/v7/widget/ar;)V

    return-void
.end method

.method public c(Landroid/support/v7/widget/bj;Landroid/support/v7/widget/ar;Landroid/support/v7/widget/ar;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/bj;->setIsRecyclable(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/ah;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->d(Landroid/support/v7/widget/RecyclerView;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/ah;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/ao;

    invoke-virtual {v0, p1, p1, p2, p3}, Landroid/support/v7/widget/ao;->a(Landroid/support/v7/widget/bj;Landroid/support/v7/widget/bj;Landroid/support/v7/widget/ar;Landroid/support/v7/widget/ar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ah;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/ah;->a:Landroid/support/v7/widget/RecyclerView;

    iget-object v0, v0, Landroid/support/v7/widget/RecyclerView;->g:Landroid/support/v7/widget/ao;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v7/widget/ao;->c(Landroid/support/v7/widget/bj;Landroid/support/v7/widget/ar;Landroid/support/v7/widget/ar;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/ah;->a:Landroid/support/v7/widget/RecyclerView;

    invoke-static {v0}, Landroid/support/v7/widget/RecyclerView;->e(Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0
.end method
