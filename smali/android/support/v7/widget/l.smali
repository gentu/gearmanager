.class Landroid/support/v7/widget/l;
.super Landroid/support/v7/widget/r;


# instance fields
.field final synthetic a:Landroid/support/v7/widget/bj;

.field final synthetic b:Landroid/support/v4/view/dv;

.field final synthetic c:Landroid/support/v7/widget/g;


# direct methods
.method constructor <init>(Landroid/support/v7/widget/g;Landroid/support/v7/widget/bj;Landroid/support/v4/view/dv;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/g;

    iput-object p2, p0, Landroid/support/v7/widget/l;->a:Landroid/support/v7/widget/bj;

    iput-object p3, p0, Landroid/support/v7/widget/l;->b:Landroid/support/v4/view/dv;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/r;-><init>(Landroid/support/v7/widget/h;)V

    return-void
.end method


# virtual methods
.method public a(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/g;

    iget-object v1, p0, Landroid/support/v7/widget/l;->a:Landroid/support/v7/widget/bj;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/g;->m(Landroid/support/v7/widget/bj;)V

    return-void
.end method

.method public b(Landroid/view/View;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/l;->b:Landroid/support/v4/view/dv;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v4/view/dv;->a(Landroid/support/v4/view/ek;)Landroid/support/v4/view/dv;

    iget-object v0, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/g;

    iget-object v1, p0, Landroid/support/v7/widget/l;->a:Landroid/support/v7/widget/bj;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/g;->j(Landroid/support/v7/widget/bj;)V

    iget-object v0, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/g;

    invoke-static {v0}, Landroid/support/v7/widget/g;->f(Landroid/support/v7/widget/g;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/l;->a:Landroid/support/v7/widget/bj;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    iget-object v0, p0, Landroid/support/v7/widget/l;->c:Landroid/support/v7/widget/g;

    invoke-static {v0}, Landroid/support/v7/widget/g;->e(Landroid/support/v7/widget/g;)V

    return-void
.end method

.method public c(Landroid/view/View;)V
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-static {p1, v0}, Landroid/support/v4/view/bo;->c(Landroid/view/View;F)V

    return-void
.end method
