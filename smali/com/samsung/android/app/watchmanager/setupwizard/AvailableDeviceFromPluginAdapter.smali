.class public Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter;
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
    .locals 1

    const-class v0, Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter;->context:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter;->rulesManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

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

    iput-object p2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter;->bluetoothDeviceItems:Ljava/util/List;

    iput-object p1, p0, Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter;->context:Landroid/content/Context;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getInstance()Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter;->rulesManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    sget-object v0, Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter;->TAG:Ljava/lang/String;

    const-string v1, "getView()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-nez p2, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter;->context:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f03000a

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    new-instance v1, Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter$Holder;

    const/4 v0, 0x0

    invoke-direct {v1, v0}, Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter$Holder;-><init>(Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter$1;)V

    const v0, 0x7f0b0048

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, v1, Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter$Holder;->textView:Landroid/widget/TextView;

    const v0, 0x7f0b0049

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, v1, Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter$Holder;->icon:Landroid/widget/ImageView;

    const v0, 0x7f0b004a

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v2, 0x8

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter$Holder;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;

    iget-object v2, v0, Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter$Holder;->textView:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter;->rulesManager:Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;

    invoke-virtual {v1}, Lcom/samsung/android/app/watchmanager/setupwizard/BluetoothDiscoveryUtility$BluetoothDeviceItem;->getFixedName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getIcon(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter;->context:Landroid/content/Context;

    invoke-static {v2, v1}, Lcom/samsung/android/app/twatchmanager/util/ResourceLoader;->getDrawableId(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    iget-object v0, v0, Lcom/samsung/android/app/watchmanager/setupwizard/AvailableDeviceFromPluginAdapter$Holder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    :cond_1
    return-object p2
.end method
