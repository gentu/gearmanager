.class public Lcom/samsung/a/a/a/a/f/c;
.super Ljava/lang/Object;


# static fields
.field private static a:Lcom/samsung/a/a/a/a/f/b/b;

.field private static b:Lcom/samsung/a/a/a/a/f/a/d;


# direct methods
.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;Lcom/samsung/a/a/a/a/f/d;Lcom/samsung/a/a/a/b;)Lcom/samsung/a/a/a/a/f/b;
    .locals 2

    if-nez p1, :cond_0

    invoke-virtual {p2}, Lcom/samsung/a/a/a/b;->d()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object p1, Lcom/samsung/a/a/a/a/f/d;->b:Lcom/samsung/a/a/a/a/f/d;

    :cond_0
    :goto_0
    sget-object v0, Lcom/samsung/a/a/a/a/f/d;->b:Lcom/samsung/a/a/a/a/f/d;

    if-ne p1, v0, :cond_3

    sget-object v0, Lcom/samsung/a/a/a/a/f/c;->a:Lcom/samsung/a/a/a/a/f/b/b;

    if-nez v0, :cond_1

    const-class v1, Lcom/samsung/a/a/a/a/f/c;

    monitor-enter v1

    :try_start_0
    new-instance v0, Lcom/samsung/a/a/a/a/f/b/b;

    invoke-direct {v0, p0, p2}, Lcom/samsung/a/a/a/a/f/b/b;-><init>(Landroid/content/Context;Lcom/samsung/a/a/a/b;)V

    sput-object v0, Lcom/samsung/a/a/a/a/f/c;->a:Lcom/samsung/a/a/a/a/f/b/b;

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    sget-object v0, Lcom/samsung/a/a/a/a/f/c;->a:Lcom/samsung/a/a/a/a/f/b/b;

    :goto_1
    return-object v0

    :cond_2
    sget-object p1, Lcom/samsung/a/a/a/a/f/d;->a:Lcom/samsung/a/a/a/a/f/d;

    goto :goto_0

    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_3
    sget-object v0, Lcom/samsung/a/a/a/a/f/d;->a:Lcom/samsung/a/a/a/a/f/d;

    if-ne p1, v0, :cond_5

    sget-object v0, Lcom/samsung/a/a/a/a/f/c;->b:Lcom/samsung/a/a/a/a/f/a/d;

    if-nez v0, :cond_4

    const-class v1, Lcom/samsung/a/a/a/a/f/c;

    monitor-enter v1

    :try_start_2
    new-instance v0, Lcom/samsung/a/a/a/a/f/a/d;

    invoke-direct {v0, p0, p2}, Lcom/samsung/a/a/a/a/f/a/d;-><init>(Landroid/content/Context;Lcom/samsung/a/a/a/b;)V

    sput-object v0, Lcom/samsung/a/a/a/a/f/c;->b:Lcom/samsung/a/a/a/a/f/a/d;

    monitor-exit v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    sget-object v0, Lcom/samsung/a/a/a/a/f/c;->b:Lcom/samsung/a/a/a/a/f/a/d;

    goto :goto_1

    :catchall_1
    move-exception v0

    :try_start_3
    monitor-exit v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    throw v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_1
.end method
