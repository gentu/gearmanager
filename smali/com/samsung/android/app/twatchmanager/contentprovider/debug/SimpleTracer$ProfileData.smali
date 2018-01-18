.class Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;
.super Ljava/lang/Object;


# instance fields
.field public m_nStartTime:J

.field public m_oClass:Ljava/lang/String;

.field public m_oItem:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/TraceItem;


# direct methods
.method private constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;->m_oClass:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;->m_oItem:Lcom/samsung/android/app/twatchmanager/contentprovider/debug/TraceItem;

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;->m_nStartTime:J

    return-void
.end method

.method synthetic constructor <init>(Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$1;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/twatchmanager/contentprovider/debug/SimpleTracer$ProfileData;-><init>()V

    return-void
.end method
