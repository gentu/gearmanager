.class Landroid/support/v4/app/y;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:Landroid/support/v4/app/w;


# direct methods
.method constructor <init>(Landroid/support/v4/app/w;II)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/app/w;

    iput p2, p0, Landroid/support/v4/app/y;->a:I

    iput p3, p0, Landroid/support/v4/app/y;->b:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    iget-object v0, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/app/w;

    iget-object v1, p0, Landroid/support/v4/app/y;->c:Landroid/support/v4/app/w;

    iget-object v1, v1, Landroid/support/v4/app/w;->o:Landroid/support/v4/app/t;

    invoke-virtual {v1}, Landroid/support/v4/app/t;->h()Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x0

    iget v3, p0, Landroid/support/v4/app/y;->a:I

    iget v4, p0, Landroid/support/v4/app/y;->b:I

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/w;->a(Landroid/os/Handler;Ljava/lang/String;II)Z

    return-void
.end method
