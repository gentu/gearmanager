.class Landroid/support/v7/widget/o;
.super Landroid/support/v7/widget/r;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/p;

.field final synthetic b:Landroid/support/v4/view/dv;

.field final synthetic c:Landroid/view/View;

.field final synthetic d:Landroid/support/v7/widget/g;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/g;Landroid/support/v7/widget/p;Landroid/support/v4/view/dv;Landroid/view/View;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/o;->d:Landroid/support/v7/widget/g;

    iput-object p2, p0, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/p;

    iput-object p3, p0, Landroid/support/v7/widget/o;->b:Landroid/support/v4/view/dv;

    iput-object p4, p0, Landroid/support/v7/widget/o;->c:Landroid/view/View;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/r;-><init>(Landroid/support/v7/widget/h;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/o;->d:Landroid/support/v7/widget/g;

    iget-object v1, p0, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/p;

    iget-object v1, v1, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/bj;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/g;->b(Landroid/support/v7/widget/bj;Z)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 3

    const/4 v2, 0x0

    iget-object v0, p0, Landroid/support/v7/widget/o;->b:Landroid/support/v4/view/dv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/dv;->a(Landroid/support/v4/view/ek;)Landroid/support/v4/view/dv;

    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Landroid/view/View;

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Landroid/support/v4/view/bo;->c(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/bo;->a(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/widget/o;->c:Landroid/view/View;

    invoke-static {v0, v2}, Landroid/support/v4/view/bo;->b(Landroid/view/View;F)V

    iget-object v0, p0, Landroid/support/v7/widget/o;->d:Landroid/support/v7/widget/g;

    iget-object v1, p0, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/p;

    iget-object v1, v1, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/bj;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/widget/g;->a(Landroid/support/v7/widget/bj;Z)V

    iget-object v0, p0, Landroid/support/v7/widget/o;->d:Landroid/support/v7/widget/g;

    invoke-static {v0}, Landroid/support/v7/widget/g;->h(Landroid/support/v7/widget/g;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/o;->a:Landroid/support/v7/widget/p;

    iget-object v1, v1, Landroid/support/v7/widget/p;->b:Landroid/support/v7/widget/bj;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v7/widget/o;->d:Landroid/support/v7/widget/g;

    invoke-static {v0}, Landroid/support/v7/widget/g;->e(Landroid/support/v7/widget/g;)V

    return-void
.end method
