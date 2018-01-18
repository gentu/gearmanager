.class Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$LazyHolder;
.super Ljava/lang/Object;


# static fields
.field private static final INSTANCE:Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;-><init>(Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$1;)V

    sput-object v0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$LazyHolder;->INSTANCE:Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager$LazyHolder;->INSTANCE:Lcom/samsung/android/app/twatchmanager/manager/UHMDownloadManager;

    return-object v0
.end method
