.class public Lcom/samsung/android/app/twatchmanager/util/RulesParser2;
.super Lcom/samsung/android/app/twatchmanager/util/RulesParser;


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static final XML_TAG_DEVICE_GROUP:Ljava/lang/String; = "group"

.field protected static final XML_TAG_DEVICE_GROUP_CUSTOM_PAIRING_ATTRIBUTE:Ljava/lang/String; = "customPairing"

.field protected static final XML_TAG_DEVICE_GROUP_DOWNLOAD_INSTALL_LAYOUT_ATTRIBUTE:Ljava/lang/String; = "downloadInstallLayout"

.field protected static final XML_TAG_DEVICE_GROUP_NAME_ATTRIBUTE:Ljava/lang/String; = "name"

.field protected static final XML_TAG_DEVICE_GROUP_VI_FRAGMENT_ATTRIBUTE:Ljava/lang/String; = "viFragment"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/app/twatchmanager/util/RulesParser2;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/twatchmanager/util/RulesParser2;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/util/RulesParser;-><init>(I)V

    return-void
.end method


# virtual methods
.method protected parseDevices(Lorg/xmlpull/v1/XmlPullParser;Lcom/samsung/android/app/twatchmanager/model/ModuleInfo;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/RulesParser2;->TAG:Ljava/lang/String;

    const-string v1, "parseDevices()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "group"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/twatchmanager/util/RulesParser2;->parseGroup(Lorg/xmlpull/v1/XmlPullParser;Lcom/samsung/android/app/twatchmanager/model/ModuleInfo;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "devices"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected parseGroup(Lorg/xmlpull/v1/XmlPullParser;Lcom/samsung/android/app/twatchmanager/model/ModuleInfo;)V
    .locals 4

    const/4 v3, 0x0

    const/4 v0, 0x0

    new-instance v1, Lcom/samsung/android/app/twatchmanager/model/GearGroup;

    invoke-direct {v1}, Lcom/samsung/android/app/twatchmanager/model/GearGroup;-><init>()V

    const-string v2, "name"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/samsung/android/app/twatchmanager/model/GearGroup;->name:Ljava/lang/String;

    const-string v2, "customPairing"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v1, Lcom/samsung/android/app/twatchmanager/model/GearGroup;->customPairing:Z

    :cond_0
    const-string v2, "viFragment"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-object v2, v1, Lcom/samsung/android/app/twatchmanager/model/GearGroup;->viFragment:Ljava/lang/String;

    :cond_1
    const-string v2, "downloadInstallLayout"

    invoke-interface {p1, v3, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    iput-object v2, v1, Lcom/samsung/android/app/twatchmanager/model/GearGroup;->downloadInstallLayout:Ljava/lang/String;

    :cond_2
    invoke-virtual {p2, v1}, Lcom/samsung/android/app/twatchmanager/model/ModuleInfo;->addGroup(Lcom/samsung/android/app/twatchmanager/model/GearGroup;)V

    :cond_3
    :goto_0
    if-nez v0, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "item"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/twatchmanager/util/RulesParser2;->parseDeviceItem(Lorg/xmlpull/v1/XmlPullParser;)Lcom/samsung/android/app/twatchmanager/model/DeviceItem;

    move-result-object v2

    iput-object v1, v2, Lcom/samsung/android/app/twatchmanager/model/DeviceItem;->gearGroup:Lcom/samsung/android/app/twatchmanager/model/GearGroup;

    if-eqz v2, :cond_3

    invoke-virtual {p2, v2}, Lcom/samsung/android/app/twatchmanager/model/ModuleInfo;->addDevice(Lcom/samsung/android/app/twatchmanager/model/DeviceItem;)V

    goto :goto_0

    :cond_4
    const/4 v3, 0x3

    if-ne v2, v3, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "group"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method
