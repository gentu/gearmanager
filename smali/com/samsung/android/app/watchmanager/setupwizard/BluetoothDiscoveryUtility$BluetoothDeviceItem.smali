.class public Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;
.super Ljava/lang/Object;


# static fields
.field public static final TYPE_DEVICE:I = 0x0

.field public static final TYPE_MESSAGE:I = 0x1


# instance fields
.field address:Ljava/lang/String;

.field fixedName:Ljava/lang/String;

.field name:Ljava/lang/String;

.field type:I


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;->type:I

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;->address:Ljava/lang/String;

    iput p3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;->type:I

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0, p1, p3, p4}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;-><init>(Ljava/lang/String;Ljava/lang/String;I)V

    iput-object p2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;->fixedName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;->address:Ljava/lang/String;

    return-object v0
.end method

.method public getFixedName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;->fixedName:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;->name:Ljava/lang/String;

    return-object v0
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;->name:Ljava/lang/String;

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    iget v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;->type:I

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;->name:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;->name:Ljava/lang/String;

    goto :goto_0
.end method
