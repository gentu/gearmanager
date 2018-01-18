.class public final enum Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;
.super Ljava/lang/Enum;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;

.field public static final enum BACKGROUND:Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;

.field public static final enum HEADER:Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;

.field public static final enum ICON:Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;


# instance fields
.field private index:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;

    const-string v1, "BACKGROUND"

    invoke-direct {v0, v1, v2, v2}, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;->BACKGROUND:Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;

    new-instance v0, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;

    const-string v1, "ICON"

    invoke-direct {v0, v1, v3, v3}, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;->ICON:Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;

    new-instance v0, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;

    const-string v1, "HEADER"

    invoke-direct {v0, v1, v4, v4}, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;->HEADER:Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;

    sget-object v1, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;->BACKGROUND:Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;->ICON:Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;->HEADER:Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;->$VALUES:[Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;->index:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;
    .locals 1

    const-class v0, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;

    return-object v0
.end method

.method public static values()[Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;->$VALUES:[Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;

    invoke-virtual {v0}, [Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;

    return-object v0
.end method


# virtual methods
.method public toValue()I
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/twatchmanager/model/GroupInfo$InfoType;->index:I

    return v0
.end method
