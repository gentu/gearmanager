.class Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$IBTStatusOnListener;


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity$1;->this$0:Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStatus(Z)V
    .locals 1

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity$1;->this$0:Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;

    invoke-static {v0}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->access$000(Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;)V

    :goto_0
    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity$1;->this$0:Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/watchmanager/nfc/NFCReceiverActivity;->finish()V

    goto :goto_0
.end method
