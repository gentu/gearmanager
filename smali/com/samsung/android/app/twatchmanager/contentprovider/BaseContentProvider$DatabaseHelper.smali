.class Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;
.super Landroid/database/sqlite/SQLiteOpenHelper;


# static fields
.field private static TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 3

    const-string v0, "uhm.db"

    const/4 v1, 0x0

    const/4 v2, 0x7

    invoke-direct {p0, p1, v0, v1, v2}, Landroid/database/sqlite/SQLiteOpenHelper;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)V

    return-void
.end method

.method private dropTables(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 1

    const-string v0, "DROP TABLE IF EXISTS Apps"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS Device"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, "DROP TABLE IF EXISTS Settings"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    return-void
.end method

.method private upgradeToVersion4(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "upgradeToVersion4 starts"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "ALTER TABLE Device ADD COLUMN connected INTEGER DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string v0, "ALTER TABLE Device ADD COLUMN device_fixed_name TEXT NOT NULL DEFAULT \'No name\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string v0, "ALTER TABLE Device ADD COLUMN necklet_auto_connection TEXT NOT NULL DEFAULT \'null\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    sget-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "upgradeToVersion4 ends"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "connected column already exists"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "device_fixed_name  column already exists"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "necklet_auto_connection column already exists"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2
.end method

.method private upgradeToVersion5(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "upgradeToVersion5 starts"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "ALTER TABLE Device ADD COLUMN model_name TEXT NOT NULL DEFAULT \'No model name\';"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    const-string v0, "ALTER TABLE Device ADD COLUMN auto_switch INTEGER DEFAULT 0;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/database/SQLException; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    const-string v0, "ALTER TABLE Device ADD COLUMN reserved_a TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_2
    .catch Landroid/database/SQLException; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    const-string v0, "ALTER TABLE Device ADD COLUMN reserved_b TEXT;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_3
    .catch Landroid/database/SQLException; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    sget-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "upgradeToVersion5 ends"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "model_name  column already exists"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :catch_1
    move-exception v0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "auto_switch column already exists"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :catch_2
    move-exception v0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "reserved_a  column already exists"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_2

    :catch_3
    move-exception v0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "reserved_b  column already exists"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method private upgradeToVersion6(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "upgradeToVersion6 starts"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$SettingsEventQuery;->CREATE_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "upgradeToVersion6 ends"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private upgradeToVersion7(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "upgradeToVersion7 starts"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    const-string v0, "ALTER TABLE Device ADD COLUMN supports_pairing INTEGER DEFAULT 1;"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "upgradeToVersion7 ends"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :catch_0
    move-exception v0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "supports_pairing column already exists"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private upgradeToVersion8(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "upgradeToVersion8 starts"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "upgradeToVersion8 ends"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/database/sqlite/SQLiteDatabase;)V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "onCreate starts"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, " CREATE TABLE Apps (_id INTEGER PRIMARY KEY AUTOINCREMENT, package_name  TEXT NOT NULL, app_name TEXT NOT NULL, bt_id TEXT NOT NULL, version  TEXT NOT NULL, image blob);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    const-string v0, " CREATE TABLE Device (_id INTEGER PRIMARY KEY AUTOINCREMENT, device_name  TEXT NOT NULL, device_fixed_name  TEXT NOT NULL, bt_id TEXT NOT NULL, package_name  TEXT NOT NULL, last_launch INTEGER TEXT NOT NULL, connected  INTEGER TEXT NOT NULL, necklet_auto_connection  TEXT NOT NULL, model_name TEXT NOT NULL DEFAULT \'No model name\', auto_switch INTEGER DEFAULT 0, reserved_a TEXT, reserved_b TEXT, supports_pairing INTEGER DEFAULT 1);"

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$SettingsEventQuery;->CREATE_TABLE:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/database/sqlite/SQLiteDatabase;->execSQL(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v1, "onCreate ends"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onDowngrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onDowngrade, oldVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", newVersion = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2, p3}, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V

    return-void
.end method

.method public onUpgrade(Landroid/database/sqlite/SQLiteDatabase;II)V
    .locals 7

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    sget-object v2, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onUpgrade, oldVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", newVersion = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-le p3, p2, :cond_5

    const/4 v2, 0x3

    if-ne p2, v2, :cond_0

    :try_start_0
    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->upgradeToVersion4(Landroid/database/sqlite/SQLiteDatabase;)V

    add-int/lit8 p2, p2, 0x1

    :cond_0
    const/4 v2, 0x4

    if-ne p2, v2, :cond_1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->upgradeToVersion5(Landroid/database/sqlite/SQLiteDatabase;)V

    add-int/lit8 p2, p2, 0x1

    :cond_1
    const/4 v2, 0x5

    if-ne p2, v2, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->upgradeToVersion6(Landroid/database/sqlite/SQLiteDatabase;)V

    add-int/lit8 p2, p2, 0x1

    :cond_2
    const/4 v2, 0x6

    if-ne p2, v2, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->upgradeToVersion7(Landroid/database/sqlite/SQLiteDatabase;)V

    :cond_3
    const/4 v2, 0x7

    if-ne p2, v2, :cond_4

    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->upgradeToVersion8(Landroid/database/sqlite/SQLiteDatabase;)V
    :try_end_0
    .catch Landroid/database/sqlite/SQLiteException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_4
    :goto_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sget-object v4, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "UHM upgrade took "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sub-long v0, v2, v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    invoke-virtual {v5, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v4, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    return-void

    :catch_0
    move-exception v0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onUpgrade: SQLiteException, recreating db. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "(oldVersion was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->dropTables(Landroid/database/sqlite/SQLiteDatabase;)V

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->onCreate(Landroid/database/sqlite/SQLiteDatabase;)V

    goto :goto_1

    :cond_5
    sget-object v2, Lcom/samsung/android/app/twatchmanager/contentprovider/BaseContentProvider$DatabaseHelper;->TAG:Ljava/lang/String;

    const-string v3, "Don\'t know how to downgrade. Will not touch database and hope they are compatible."

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
