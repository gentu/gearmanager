.class Landroid/support/v4/view/dx;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/v4/view/ef;


# instance fields
.field a:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Landroid/view/View;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v4/view/dx;->a:Ljava/util/WeakHashMap;

    return-void
.end method

.method static synthetic a(Landroid/support/v4/view/dx;Landroid/support/v4/view/dv;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/dx;->c(Landroid/support/v4/view/dv;Landroid/view/View;)V

    return-void
.end method

.method private a(Landroid/view/View;)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/view/dx;->a:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v4/view/dx;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    invoke-virtual {p1, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method

.method private c(Landroid/support/v4/view/dv;Landroid/view/View;)V
    .locals 4

    const/4 v1, 0x0

    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    instance-of v2, v0, Landroid/support/v4/view/ek;

    if-eqz v2, :cond_4

    check-cast v0, Landroid/support/v4/view/ek;

    :goto_0
    invoke-static {p1}, Landroid/support/v4/view/dv;->a(Landroid/support/v4/view/dv;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-static {p1}, Landroid/support/v4/view/dv;->b(Landroid/support/v4/view/dv;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-static {p1, v1}, Landroid/support/v4/view/dv;->b(Landroid/support/v4/view/dv;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    invoke-static {p1, v1}, Landroid/support/v4/view/dv;->a(Landroid/support/v4/view/dv;Ljava/lang/Runnable;)Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    :cond_0
    if-eqz v0, :cond_1

    invoke-interface {v0, p2}, Landroid/support/v4/view/ek;->a(Landroid/view/View;)V

    invoke-interface {v0, p2}, Landroid/support/v4/view/ek;->b(Landroid/view/View;)V

    :cond_1
    if-eqz v3, :cond_2

    invoke-interface {v3}, Ljava/lang/Runnable;->run()V

    :cond_2
    iget-object v0, p0, Landroid/support/v4/view/dx;->a:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v4/view/dx;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void

    :cond_4
    move-object v0, v1

    goto :goto_0
.end method

.method private d(Landroid/support/v4/view/dv;Landroid/view/View;)V
    .locals 2

    const/4 v1, 0x0

    iget-object v0, p0, Landroid/support/v4/view/dx;->a:Ljava/util/WeakHashMap;

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v4/view/dx;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p2}, Ljava/util/WeakHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    :goto_0
    if-nez v0, :cond_1

    new-instance v0, Landroid/support/v4/view/dy;

    invoke-direct {v0, p0, p1, p2, v1}, Landroid/support/v4/view/dy;-><init>(Landroid/support/v4/view/dx;Landroid/support/v4/view/dv;Landroid/view/View;Landroid/support/v4/view/dw;)V

    iget-object v1, p0, Landroid/support/v4/view/dx;->a:Ljava/util/WeakHashMap;

    if-nez v1, :cond_0

    new-instance v1, Ljava/util/WeakHashMap;

    invoke-direct {v1}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v1, p0, Landroid/support/v4/view/dx;->a:Ljava/util/WeakHashMap;

    :cond_0
    iget-object v1, p0, Landroid/support/v4/view/dx;->a:Ljava/util/WeakHashMap;

    invoke-virtual {v1, p2, v0}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-virtual {p2, v0}, Landroid/view/View;->removeCallbacks(Ljava/lang/Runnable;)Z

    invoke-virtual {p2, v0}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    return-void

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public a(Landroid/support/v4/view/dv;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/dx;->d(Landroid/support/v4/view/dv;Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/support/v4/view/dv;Landroid/view/View;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/dx;->d(Landroid/support/v4/view/dv;Landroid/view/View;)V

    return-void
.end method

.method public a(Landroid/support/v4/view/dv;Landroid/view/View;J)V
    .locals 0

    return-void
.end method

.method public a(Landroid/support/v4/view/dv;Landroid/view/View;Landroid/support/v4/view/ek;)V
    .locals 1

    const/high16 v0, 0x7e000000

    invoke-virtual {p2, v0, p3}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public b(Landroid/support/v4/view/dv;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0, p2}, Landroid/support/v4/view/dx;->a(Landroid/view/View;)V

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/dx;->c(Landroid/support/v4/view/dv;Landroid/view/View;)V

    return-void
.end method

.method public b(Landroid/support/v4/view/dv;Landroid/view/View;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/dx;->d(Landroid/support/v4/view/dv;Landroid/view/View;)V

    return-void
.end method

.method public c(Landroid/support/v4/view/dv;Landroid/view/View;F)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v4/view/dx;->d(Landroid/support/v4/view/dv;Landroid/view/View;)V

    return-void
.end method
