.class interface abstract Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$SettingsEventQuery;
.super Ljava/lang/Object;


# static fields
.field public static final COLUMNS:[Ljava/lang/String;

.field public static final CREATE_TABLE:Ljava/lang/String;

.field public static final DROP_TABLE:Ljava/lang/String; = "DROP TABLE IF EXISTS Settings"

.field public static final KEY_FIELD:I = 0x0

.field public static final KEY_VALUE:I = 0x1

.field public static final TABLE:Ljava/lang/String; = "Settings"


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "keyField"

    aput-object v1, v0, v2

    const-string v1, "keyValue"

    aput-object v1, v0, v3

    sput-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$SettingsEventQuery;->COLUMNS:[Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "CREATE TABLE IF NOT EXISTS Settings("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$SettingsEventQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT, "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$SettingsEventQuery;->COLUMNS:[Ljava/lang/String;

    aget-object v1, v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " TEXT "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$SettingsEventQuery;->CREATE_TABLE:Ljava/lang/String;

    return-void
.end method
