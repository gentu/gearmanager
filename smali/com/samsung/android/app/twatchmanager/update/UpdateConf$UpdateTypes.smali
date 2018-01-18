.class public final enum Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;

.field public static final enum UHM_ONLY:Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;

.field public static final enum UHM_PLUS_MODULE:Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;

    const-string v1, "UHM_ONLY"

    invoke-direct {v0, v1, v2}, Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;->UHM_ONLY:Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;

    new-instance v0, Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;

    const-string v1, "UHM_PLUS_MODULE"

    invoke-direct {v0, v1, v3}, Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;->UHM_PLUS_MODULE:Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;

    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;->UHM_ONLY:Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;->UHM_PLUS_MODULE:Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;->$VALUES:[Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;
    .locals 1

    const-class v0, Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;->$VALUES:[Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;

    invoke-virtual {v0}, [Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/twatchmanager/update/UpdateConf$UpdateTypes;

    return-object v0
.end method
