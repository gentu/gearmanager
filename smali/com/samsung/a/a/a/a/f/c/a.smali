.class public Lcom/samsung/a/a/a/a/f/c/a;
.super Ljava/lang/Object;


# static fields
.field private static d:Lcom/samsung/a/a/a/a/f/c/a;


# instance fields
.field private a:Lcom/samsung/a/a/a/a/f/c/a/a;

.field private b:Lcom/samsung/a/a/a/a/f/c/b/a;

.field private c:Z


# direct methods
.method private constructor <init>(Landroid/content/Context;Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p2, :cond_0

    new-instance v0, Lcom/samsung/a/a/a/a/f/c/a/a;

    invoke-direct {v0, p1}, Lcom/samsung/a/a/a/a/f/c/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/a/a/a/a/f/c/a;->a:Lcom/samsung/a/a/a/a/f/c/a/a;

    :cond_0
    new-instance v0, Lcom/samsung/a/a/a/a/f/c/b/a;

    invoke-direct {v0}, Lcom/samsung/a/a/a/a/f/c/b/a;-><init>()V

    iput-object v0, p0, Lcom/samsung/a/a/a/a/f/c/a;->b:Lcom/samsung/a/a/a/a/f/c/b/a;

    iput-boolean p2, p0, Lcom/samsung/a/a/a/a/f/c/a;->c:Z

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/a/a/a/b;)Lcom/samsung/a/a/a/a/f/c/a;
    .locals 4

    sget-object v0, Lcom/samsung/a/a/a/a/f/c/a;->d:Lcom/samsung/a/a/a/a/f/c/a;

    if-nez v0, :cond_0

    const-class v1, Lcom/samsung/a/a/a/a/f/c/a;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Lcom/samsung/a/a/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {p0}, Lcom/samsung/a/a/a/a/h/d;->a(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v2, "lgt"

    const-string v3, ""

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "rel"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    new-instance v0, Lcom/samsung/a/a/a/a/f/c/a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/samsung/a/a/a/a/f/c/a;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/samsung/a/a/a/a/f/c/a;->d:Lcom/samsung/a/a/a/a/f/c/a;

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sget-object v0, Lcom/samsung/a/a/a/a/f/c/a;->d:Lcom/samsung/a/a/a/a/f/c/a;

    return-object v0

    :cond_1
    :try_start_1
    const-string v2, "rtb"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v0, Lcom/samsung/a/a/a/a/f/c/a;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/samsung/a/a/a/a/f/c/a;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/samsung/a/a/a/a/f/c/a;->d:Lcom/samsung/a/a/a/a/f/c/a;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_2
    :try_start_2
    new-instance v0, Lcom/samsung/a/a/a/a/f/c/a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/samsung/a/a/a/a/f/c/a;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/samsung/a/a/a/a/f/c/a;->d:Lcom/samsung/a/a/a/a/f/c/a;

    goto :goto_0

    :cond_3
    new-instance v0, Lcom/samsung/a/a/a/a/f/c/a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/samsung/a/a/a/a/f/c/a;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/samsung/a/a/a/a/f/c/a;->d:Lcom/samsung/a/a/a/a/f/c/a;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0
.end method

.method public static a(Landroid/content/Context;Ljava/lang/Boolean;)Lcom/samsung/a/a/a/a/f/c/a;
    .locals 3

    sget-object v0, Lcom/samsung/a/a/a/a/f/c/a;->d:Lcom/samsung/a/a/a/a/f/c/a;

    if-nez v0, :cond_0

    const-class v1, Lcom/samsung/a/a/a/a/f/c/a;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    new-instance v0, Lcom/samsung/a/a/a/a/f/c/a;

    const/4 v2, 0x1

    invoke-direct {v0, p0, v2}, Lcom/samsung/a/a/a/a/f/c/a;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/samsung/a/a/a/a/f/c/a;->d:Lcom/samsung/a/a/a/a/f/c/a;

    :goto_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    sget-object v0, Lcom/samsung/a/a/a/a/f/c/a;->d:Lcom/samsung/a/a/a/a/f/c/a;

    return-object v0

    :cond_1
    :try_start_1
    new-instance v0, Lcom/samsung/a/a/a/a/f/c/a;

    const/4 v2, 0x0

    invoke-direct {v0, p0, v2}, Lcom/samsung/a/a/a/a/f/c/a;-><init>(Landroid/content/Context;Z)V

    sput-object v0, Lcom/samsung/a/a/a/a/f/c/a;->d:Lcom/samsung/a/a/a/a/f/c/a;

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private d()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/c/a;->b:Lcom/samsung/a/a/a/a/f/c/b/a;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/f/c/b/a;->a()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/c/a;->b:Lcom/samsung/a/a/a/a/f/c/b/a;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/f/c/b/a;->a()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/a/a/a/a/f/e;

    iget-object v2, p0, Lcom/samsung/a/a/a/a/f/c/a;->a:Lcom/samsung/a/a/a/a/f/c/a/a;

    invoke-virtual {v2, v0}, Lcom/samsung/a/a/a/a/f/c/a/a;->a(Lcom/samsung/a/a/a/a/f/e;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/c/a;->b:Lcom/samsung/a/a/a/a/f/c/b/a;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/f/c/b/a;->a()Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->clear()V

    :cond_1
    return-void
.end method


# virtual methods
.method public a(I)Ljava/util/Queue;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/Queue",
            "<",
            "Lcom/samsung/a/a/a/a/f/e;",
            ">;"
        }
    .end annotation

    iget-boolean v0, p0, Lcom/samsung/a/a/a/a/f/c/a;->c:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/a/a/a/a/f/c/a;->b()V

    if-gtz p1, :cond_1

    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/c/a;->a:Lcom/samsung/a/a/a/a/f/c/a/a;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/f/c/a/a;->a()Ljava/util/Queue;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "get log from "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v1, p0, Lcom/samsung/a/a/a/a/f/c/a;->c:Z

    if-eqz v1, :cond_3

    const-string v1, "Database "

    :goto_1
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Queue;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/a/a/a/a/h/a;->a(Ljava/lang/String;)V

    :cond_0
    return-object v0

    :cond_1
    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/c/a;->a:Lcom/samsung/a/a/a/a/f/c/a/a;

    invoke-virtual {v0, p1}, Lcom/samsung/a/a/a/a/f/c/a/a;->a(I)Ljava/util/Queue;

    move-result-object v0

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/c/a;->b:Lcom/samsung/a/a/a/a/f/c/b/a;

    invoke-virtual {v0}, Lcom/samsung/a/a/a/a/f/c/b/a;->a()Ljava/util/Queue;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v1, "Queue "

    goto :goto_1
.end method

.method public a(JLjava/lang/String;Ljava/lang/String;)V
    .locals 1

    new-instance v0, Lcom/samsung/a/a/a/a/f/e;

    invoke-direct {v0, p3, p1, p2, p4}, Lcom/samsung/a/a/a/a/f/e;-><init>(Ljava/lang/String;JLjava/lang/String;)V

    invoke-virtual {p0, v0}, Lcom/samsung/a/a/a/a/f/c/a;->a(Lcom/samsung/a/a/a/a/f/e;)V

    return-void
.end method

.method public a(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/a/a/a/a/f/c/a;->c:Z

    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/c/a;->a:Lcom/samsung/a/a/a/a/f/c/a/a;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/a/a/a/a/f/c/a/a;

    invoke-direct {v0, p1}, Lcom/samsung/a/a/a/a/f/c/a/a;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/a/a/a/a/f/c/a;->a:Lcom/samsung/a/a/a/a/f/c/a/a;

    :cond_0
    invoke-direct {p0}, Lcom/samsung/a/a/a/a/f/c/a;->d()V

    return-void
.end method

.method public a(Lcom/samsung/a/a/a/a/f/e;)V
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/a/a/a/a/f/c/a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/c/a;->a:Lcom/samsung/a/a/a/a/f/c/a/a;

    invoke-virtual {v0, p1}, Lcom/samsung/a/a/a/a/f/c/a/a;->a(Lcom/samsung/a/a/a/a/f/e;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/c/a;->b:Lcom/samsung/a/a/a/a/f/c/b/a;

    invoke-virtual {v0, p1}, Lcom/samsung/a/a/a/a/f/c/b/a;->a(Lcom/samsung/a/a/a/a/f/e;)V

    goto :goto_0
.end method

.method public a(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    :goto_0
    return-void

    :cond_1
    iget-boolean v0, p0, Lcom/samsung/a/a/a/a/f/c/a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/c/a;->a:Lcom/samsung/a/a/a/a/f/c/a/a;

    invoke-virtual {v0, p1}, Lcom/samsung/a/a/a/a/f/c/a/a;->a(Ljava/util/List;)V

    goto :goto_0
.end method

.method public a()Z
    .locals 1

    iget-boolean v0, p0, Lcom/samsung/a/a/a/a/f/c/a;->c:Z

    return v0
.end method

.method public b()V
    .locals 4

    iget-boolean v0, p0, Lcom/samsung/a/a/a/a/f/c/a;->c:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/a/a/a/a/f/c/a;->a:Lcom/samsung/a/a/a/a/f/c/a/a;

    const/4 v1, 0x5

    invoke-static {v1}, Lcom/samsung/a/a/a/a/h/e;->a(I)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/samsung/a/a/a/a/f/c/a/a;->a(J)V

    :cond_0
    return-void
.end method

.method public c()Ljava/util/Queue;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Queue",
            "<",
            "Lcom/samsung/a/a/a/a/f/e;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/samsung/a/a/a/a/f/c/a;->a(I)Ljava/util/Queue;

    move-result-object v0

    return-object v0
.end method
