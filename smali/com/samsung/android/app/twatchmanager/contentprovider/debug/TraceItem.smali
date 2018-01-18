.class public Lcom/samsung/android/app/twatchmanager/contentprovider/debug/TraceItem;
.super Ljava/lang/Object;


# instance fields
.field private m_oName:Ljava/lang/String;

.field private m_oTag:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/TraceItem;->m_oName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method protected getPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "  "

    return-object v0
.end method

.method public getTag()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/TraceItem;->m_oTag:Ljava/lang/String;

    return-object v0
.end method

.method public varargs onEnd([Ljava/lang/Object;)V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public setTag(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/TraceItem;->m_oTag:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/TraceItem;->m_oName:Ljava/lang/String;

    return-object v0
.end method
