.class public Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;
.super Landroid/app/Activity;


# static fields
.field private static final EXTRA_ADDR_NFC:Ljava/lang/String; = "bt_addr"

.field private static final EXTRA_FROM_NFC:Ljava/lang/String; = "isFromNFC"


# instance fields
.field private final TAG:Ljava/lang/String;

.field private final mBTScanReceiver:Landroid/content/BroadcastReceiver;

.field private final mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

.field private mHandler:Landroid/os/Handler;

.field private mRunnable:Ljava/lang/Runnable;

.field private mTargetBluetoothAdd:Ljava/lang/String;

.field private newIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->mTargetBluetoothAdd:Ljava/lang/String;

    const-class v0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->TAG:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->newIntent:Landroid/content/Intent;

    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity$2;-><init>(Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->mRunnable:Ljava/lang/Runnable;

    new-instance v0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity$3;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity$3;-><init>(Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->mBTScanReceiver:Landroid/content/BroadcastReceiver;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->continueSetup()V

    return-void
.end method

.method static synthetic access$100(Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->mTargetBluetoothAdd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->doRemainConnectProcess()V

    return-void
.end method

.method static synthetic access$400(Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;)Ljava/lang/Runnable;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->mRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private checkRecord([Landroid/nfc/NdefRecord;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->TAG:Ljava/lang/String;

    const-string v2, "record is null - false"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_0
    new-instance v1, Ljava/lang/String;

    aget-object v2, p1, v0

    invoke-virtual {v2}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([B)V

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "payload : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, ":"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "spliteStrings : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    array-length v2, v2

    const/4 v3, 0x6

    if-ne v2, v3, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x11

    if-eq v1, v2, :cond_2

    :cond_1
    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->TAG:Ljava/lang/String;

    const-string v2, "records[0] is not valid bt address - false"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private continueSetup()V
    .locals 4

    const/4 v1, 0x0

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->mTargetBluetoothAdd:Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->resolveIntent(Landroid/content/Intent;)[Landroid/nfc/NdefRecord;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-direct {p0, v2}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->checkRecord([Landroid/nfc/NdefRecord;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_3

    aget-object v0, v2, v1

    invoke-direct {p0, v0}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->getBluetoothAddr(Landroid/nfc/NdefRecord;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->mTargetBluetoothAdd:Ljava/lang/String;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "BT address["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->mTargetBluetoothAdd:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] from NFC tag"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->mTargetBluetoothAdd:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->TAG:Ljava/lang/String;

    const-string v1, "nfc::send BT address from NFCReceiver to SetupWizardWelcomeactivity"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->newIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->newIntent:Landroid/content/Intent;

    const-string v1, "isFromNFC"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->newIntent:Landroid/content/Intent;

    const-string v1, "bt_addr"

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->mTargetBluetoothAdd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->mTargetBluetoothAdd:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v0

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "NFC deviceName = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez v0, :cond_2

    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->doDiscovery()V

    :cond_0
    :goto_1
    return-void

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->TAG:Ljava/lang/String;

    const-string v3, "NdefRecord[] is null"

    invoke-static {v0, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    goto/16 :goto_0

    :cond_2
    invoke-direct {p0}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->doRemainConnectProcess()V

    goto :goto_1

    :cond_3
    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkRecord(records) = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->finish()V

    goto :goto_1
.end method

.method private doDiscovery()V
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->TAG:Ljava/lang/String;

    const-string v1, "doDiscovery"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-virtual {v0}, Landroid/bluetooth/BluetoothAdapter;->startDiscovery()Z

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->mRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0xfa0

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method private doRemainConnectProcess()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->TAG:Ljava/lang/String;

    const-string v1, "doRemainConnectProcess"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->newIntent:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/app/watchmanager/setupwizard/SetupWizardWelcomeActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->newIntent:Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->newIntent:Landroid/content/Intent;

    const-string v1, "isFromNFC"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->newIntent:Landroid/content/Intent;

    const-string v1, "bt_addr"

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->mTargetBluetoothAdd:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->newIntent:Landroid/content/Intent;

    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->newIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->finish()V

    return-void
.end method

.method private getBluetoothAddr(Landroid/nfc/NdefRecord;)Ljava/lang/String;
    .locals 2

    invoke-virtual {p1}, Landroid/nfc/NdefRecord;->getPayload()[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1
.end method

.method private getNdefMessages(Landroid/content/Intent;)[Landroid/nfc/NdefMessage;
    .locals 5

    const/4 v4, 0x1

    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    const-string v3, "android.nfc.action.NDEF_DISCOVERED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v1, "android.nfc.extra.NDEF_MESSAGES"

    invoke-virtual {p1, v1}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;

    move-result-object v3

    if-eqz v3, :cond_1

    array-length v1, v3

    new-array v2, v1, [Landroid/nfc/NdefMessage;

    move v1, v0

    :goto_0
    array-length v0, v3

    if-ge v1, v0, :cond_0

    aget-object v0, v3, v1

    check-cast v0, Landroid/nfc/NdefMessage;

    aput-object v0, v2, v1

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    :cond_0
    move-object v0, v2

    :goto_1
    return-object v0

    :cond_1
    new-array v1, v0, [B

    new-instance v2, Landroid/nfc/NdefRecord;

    const/4 v3, 0x5

    invoke-direct {v2, v3, v1, v1, v1}, Landroid/nfc/NdefRecord;-><init>(S[B[B[B)V

    new-instance v3, Landroid/nfc/NdefMessage;

    new-array v1, v4, [Landroid/nfc/NdefRecord;

    aput-object v2, v1, v0

    invoke-direct {v3, v1}, Landroid/nfc/NdefMessage;-><init>([Landroid/nfc/NdefRecord;)V

    new-array v1, v4, [Landroid/nfc/NdefMessage;

    aput-object v3, v1, v0

    move-object v0, v1

    goto :goto_1

    :cond_2
    move-object v0, v1

    goto :goto_1
.end method

.method private resolveIntent(Landroid/content/Intent;)[Landroid/nfc/NdefRecord;
    .locals 2

    invoke-direct {p0, p1}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->getNdefMessages(Landroid/content/Intent;)[Landroid/nfc/NdefMessage;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    aget-object v0, v0, v1

    invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->TAG:Ljava/lang/String;

    const-string v1, "NFC onCreate()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.bluetooth.device.action.FOUND"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->mBTScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    new-instance v0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity$1;-><init>(Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;)V

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility;->turnOnBT(Landroid/content/Context;Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$IBTStatusOnListener;Z)V

    return-void
.end method

.method protected onDestroy()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->TAG:Ljava/lang/String;

    const-string v1, "NFC ondestory()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->w(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->mBTScanReceiver:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->mBTScanReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    :cond_0
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/log/Log;->saveLog()V

    invoke-super {p0}, Landroid/app/Activity;->onDestroy()V

    return-void
.end method
