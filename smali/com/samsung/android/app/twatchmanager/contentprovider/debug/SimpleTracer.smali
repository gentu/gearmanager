.class public Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;
.super Ljava/lang/Object;


# static fields
.field private static ACTIVATE:Z

.field private static m_oInstance:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;


# instance fields
.field private final LOG_TAG:Ljava/lang/String;

.field private m_oData:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->ACTIVATE:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->m_oInstance:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM::"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->LOG_TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->m_oData:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;

    return-void
.end method

.method public static declared-synchronized activate()V
    .locals 2

    const-class v0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;

    monitor-enter v0

    const/4 v1, 0x1

    :try_start_0
    sput-boolean v1, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->ACTIVATE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static varargs declared-synchronized end([Ljava/lang/Object;)V
    .locals 2

    const-class v1, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->instance()Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-direct {v0, p0}, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->onEnd([Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized instance()Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;
    .locals 2

    const-class v1, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->ACTIVATE:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    monitor-exit v1

    return-object v0

    :cond_0
    :try_start_1
    sget-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->m_oInstance:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;

    if-nez v0, :cond_1

    new-instance v0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;

    invoke-direct {v0}, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;-><init>()V

    sput-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->m_oInstance:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;

    :cond_1
    sget-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->m_oInstance:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private varargs onEnd([Ljava/lang/Object;)V
    .locals 6

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->m_oData:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->m_oData:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;->m_oItem:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/TraceItem;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/TraceItem;->onEnd([Ljava/lang/Object;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->m_oData:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;

    iget-wide v2, v2, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;->m_nStartTime:J

    sub-long/2addr v0, v2

    const-string v2, "%s.%s end (elpased %d)"

    const/4 v3, 0x3

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->m_oData:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;

    iget-object v5, v5, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;->m_oClass:Ljava/lang/String;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->m_oData:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;

    iget-object v5, v5, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;->m_oItem:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/TraceItem;

    invoke-virtual {v5}, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/TraceItem;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->m_oData:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;

    goto :goto_0
.end method

.method private onStart(Ljava/lang/String;Lcom/samsung/android/app/twatchmanager/contentprovider/debug/TraceItem;)V
    .locals 4

    new-instance v0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;-><init>(Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$1;)V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->m_oData:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->m_oData:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;

    iput-object p1, v0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;->m_oClass:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->m_oData:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;

    iput-object p2, v0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;->m_oItem:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/TraceItem;

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->m_oData:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;->m_nStartTime:J

    const-string v0, "%s.%s start"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->m_oData:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;

    iget-object v3, v3, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;->m_oClass:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->m_oData:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;

    iget-object v3, v3, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;->m_oItem:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/TraceItem;

    invoke-virtual {v3}, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/TraceItem;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->LOG_TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->m_oData:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;->m_oItem:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/TraceItem;

    iget-object v1, p0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->LOG_TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/TraceItem;->setTag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->m_oData:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;

    iget-object v0, v0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;->m_oItem:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/TraceItem;

    invoke-virtual {v0}, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/TraceItem;->onStart()V

    return-void
.end method

.method public static declared-synchronized start(Ljava/lang/Class;Lcom/samsung/android/app/twatchmanager/contentprovider/debug/TraceItem;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/samsung/android/app/twatchmanager/contentprovider/debug/TraceItem;",
            ")V"
        }
    .end annotation

    const-class v1, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->instance()Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    if-nez v0, :cond_0

    :goto_0
    monitor-exit v1

    return-void

    :cond_0
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, p1}, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer;->onStart(Ljava/lang/String;Lcom/samsung/android/app/twatchmanager/contentprovider/debug/TraceItem;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
