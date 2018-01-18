.class public Lcom/samsung/a/a/a/e;
.super Lcom/samsung/a/a/a/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/samsung/a/a/a/f",
        "<",
        "Lcom/samsung/a/a/a/e;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/a/a/a/f;-><init>(Lcom/samsung/a/a/a/d;)V

    return-void
.end method


# virtual methods
.method protected a()Lcom/samsung/a/a/a/e;
    .locals 0

    return-object p0
.end method

.method public a(Ljava/lang/String;)Lcom/samsung/a/a/a/e;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "Failure to build Log : Event name cannot be null"

    invoke-static {v0}, Lcom/samsung/a/a/a/a/h/e;->a(Ljava/lang/String;)V

    :cond_0
    const-string v0, "en"

    invoke-virtual {p0, v0, p1}, Lcom/samsung/a/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/a/a/a/f;

    return-object p0
.end method

.method public b()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/a/a/a/e;->a:Ljava/util/Map;

    const-string v1, "en"

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Failure to build Log : Event name cannot be null"

    invoke-static {v0}, Lcom/samsung/a/a/a/a/h/e;->a(Ljava/lang/String;)V

    :cond_0
    const-string v0, "t"

    const-string v1, "ev"

    invoke-virtual {p0, v0, v1}, Lcom/samsung/a/a/a/e;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/a/a/a/f;

    invoke-super {p0}, Lcom/samsung/a/a/a/f;->b()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c()J
    .locals 2

    invoke-super {p0}, Lcom/samsung/a/a/a/f;->c()J

    move-result-wide v0

    return-wide v0
.end method

.method protected synthetic d()Lcom/samsung/a/a/a/f;
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/a/a/a/e;->a()Lcom/samsung/a/a/a/e;

    move-result-object v0

    return-object v0
.end method
