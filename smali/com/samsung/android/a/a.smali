.class public Lcom/samsung/android/a/a;
.super Ljava/lang/Object;


# static fields
.field public static a:Ljava/lang/String;

.field public static b:Ljava/lang/String;

.field public static c:Ljava/lang/String;

.field public static d:Ljava/lang/String;

.field public static e:Ljava/lang/String;

.field public static f:Ljava/lang/String;

.field public static g:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "android.bluetooth.device.extra.DISCONNECTION_REASON"

    sput-object v0, Lcom/samsung/android/a/a;->a:Ljava/lang/String;

    const-string v0, "android.bluetooth.device.extra.LINKTYPE"

    sput-object v0, Lcom/samsung/android/a/a;->b:Ljava/lang/String;

    const-string v0, "android.bluetooth.device.action.RSSI_OUT_RANGE_ALERT"

    sput-object v0, Lcom/samsung/android/a/a;->c:Ljava/lang/String;

    const-string v0, "android.bluetooth.device.action.RSSI_IN_RANGE_ALERT"

    sput-object v0, Lcom/samsung/android/a/a;->d:Ljava/lang/String;

    const-string v0, "android.bluetooth.device.action.ACTION_OUT_OF_RANGE_ALERT"

    sput-object v0, Lcom/samsung/android/a/a;->e:Ljava/lang/String;

    const-string v0, "android.bluetooth.device.action.ACTION_IN_RANGE_ALERT"

    sput-object v0, Lcom/samsung/android/a/a;->f:Ljava/lang/String;

    const-string v0, "android.bluetooth.device.action.AUTO_LOCK_SERVICE"

    sput-object v0, Lcom/samsung/android/a/a;->g:Ljava/lang/String;

    return-void
.end method

.method public static a(Landroid/bluetooth/BluetoothDevice;)Ljava/lang/String;
    .locals 2

    const-string v0, "getAliasName"

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p0, v0, v1}, Lcom/samsung/android/a/c;->a(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
