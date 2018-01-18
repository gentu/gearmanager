.class Landroid/support/v4/view/dz;
.super Landroid/support/v4/view/dx;


# instance fields
.field b:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v4/view/dx;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/dz;->b:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public a(Landroid/support/v4/view/dv;Landroid/view/View;)V
    .locals 0

    invoke-static {p2}, Landroid/support/v4/view/eg;->a(Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/support/v4/view/dv;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/eg;->a(Landroid/view/View;F)V

    return-void
.end method

.method public a(Landroid/support/v4/view/dv;Landroid/view/View;J)V
    .locals 1

    invoke-static {p2, p3, p4}, Landroid/support/v4/view/eg;->a(Landroid/view/View;J)V

    return-void
.end method

.method public a(Landroid/support/v4/view/dv;Landroid/view/View;Landroid/support/v4/view/ek;)V
    .locals 1

    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    new-instance v0, Landroid/support/v4/view/ea;

    invoke-direct {v0, p1}, Landroid/support/v4/view/ea;-><init>(Landroid/support/v4/view/dv;)V

    invoke-static {p2, v0}, Landroid/support/v4/view/eg;->a(Landroid/view/View;Landroid/support/v4/view/ek;)V

    return-void
.end method

.method public b(Landroid/support/v4/view/dv;Landroid/view/View;)V
    .locals 0

    invoke-static {p2}, Landroid/support/v4/view/eg;->b(Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/support/v4/view/dv;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/eg;->b(Landroid/view/View;F)V

    return-void
.end method

.method public c(Landroid/support/v4/view/dv;Landroid/view/View;F)V
    .locals 0

    invoke-static {p2, p3}, Landroid/support/v4/view/eg;->c(Landroid/view/View;F)V

    return-void
.end method
