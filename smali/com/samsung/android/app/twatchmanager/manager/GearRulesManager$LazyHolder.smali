.class Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$LazyHolder;
.super Ljava/lang/Object;


# static fields
.field private static final INSTANCE:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;-><init>(Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$1;)V

    sput-object v0, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$LazyHolder;->INSTANCE:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager$LazyHolder;->INSTANCE:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    return-object v0
.end method
