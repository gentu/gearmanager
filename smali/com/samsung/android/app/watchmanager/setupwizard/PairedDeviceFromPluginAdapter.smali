.class public Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;
.super Landroid/widget/ArrayAdapter;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field bluetoothDeviceItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;",
            ">;"
        }
    .end annotation
.end field

.field context:Landroid/content/Context;

.field rulesManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "tUHM:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-class v1, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;->context:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;->rulesManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;",
            ">;)V"
        }
    .end annotation

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;->bluetoothDeviceItems:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;->context:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;->rulesManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;->bluetoothDeviceItems:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;->bluetoothDeviceItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    sget-object v1, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "inside getCount():: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter$Holder;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter$Holder;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter$1;)V

    const v0, 0x7f0b0048

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter$Holder;->textView:Landroid/widget/TextView;

    const v0, 0x7f0b004a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter$Holder;->subTextView:Landroid/widget/TextView;

    const v0, 0x7f0b0049

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter$Holder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0b004b

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter$Holder;->dividerView:Landroid/view/View;

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter$Holder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;

    iget-object v2, v0, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter$Holder;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;->getAddress()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/util/HostManagerUtils;->isConnected(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, v0, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter$Holder;->subTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060011

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_0
    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;->rulesManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;->getFixedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getIcon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/samsung/android/app/twatchmanager/util/ResourceLoader;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter$Holder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-object p2

    :cond_2
    iget-object v2, v0, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter$Holder;->subTextView:Landroid/widget/TextView;

    iget-object v3, p0, Lcom/samsung/android/app/watchmanager/setupwizard/PairedDeviceFromPluginAdapter;->context:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060030

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method
