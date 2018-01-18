.class Lcom/sothree/slidinguppanel/h;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/sothree/slidinguppanel/f;


# direct methods
.method constructor <init>(Lcom/sothree/slidinguppanel/f;)V
    .locals 0

    iput-object p1, p0, Lcom/sothree/slidinguppanel/h;->a:Lcom/sothree/slidinguppanel/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Lcom/sothree/slidinguppanel/h;->a:Lcom/sothree/slidinguppanel/f;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/sothree/slidinguppanel/f;->a(I)V

    return-void
.end method
