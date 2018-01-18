.class final Landroid/support/v4/view/ck;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnApplyWindowInsetsListener;


# instance fields
.field final synthetic a:Landroid/support/v4/view/ax;


# direct methods
.method constructor <init>(Landroid/support/v4/view/ax;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/view/ck;->a:Landroid/support/v4/view/ax;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onApplyWindowInsets(Landroid/view/View;Landroid/view/WindowInsets;)Landroid/view/WindowInsets;
    .locals 2

    new-instance v0, Landroid/support/v4/view/em;

    invoke-direct {v0, p2}, Landroid/support/v4/view/em;-><init>(Landroid/view/WindowInsets;)V

    iget-object v1, p0, Landroid/support/v4/view/ck;->a:Landroid/support/v4/view/ax;

    invoke-interface {v1, p1, v0}, Landroid/support/v4/view/ax;->a(Landroid/view/View;Landroid/support/v4/view/el;)Landroid/support/v4/view/el;

    move-result-object v0

    check-cast v0, Landroid/support/v4/view/em;

    invoke-virtual {v0}, Landroid/support/v4/view/em;->f()Landroid/view/WindowInsets;

    move-result-object v0

    return-object v0
.end method
