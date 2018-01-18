.class public Lcom/samsung/android/app/twatchmanager/util/RulesParser;
.super Lcom/samsung/android/app/twatchmanager/util/BaseRulesParser;


# static fields
.field private static final TAG:Ljava/lang/String;

.field protected static final XML_TAG_ADDITIONAL_PACKAGE:Ljava/lang/String; = "additional-packages"

.field protected static final XML_TAG_ADDITIONAL_PACKAGE_ITEM:Ljava/lang/String; = "package"

.field protected static final XML_TAG_ADDITIONAL_PACKAGE_ITEM_CHECK_FOR_UPDATE_ATTRIBUTE:Ljava/lang/String; = "checkForUpdate"

.field protected static final XML_TAG_ADDITIONAL_PACKAGE_ITEM_INSTALLER_PACKAGE_ATTRIBUTE:Ljava/lang/String; = "installerPackage"

.field protected static final XML_TAG_ADDITIONAL_PACKAGE_ITEM_ONLY_FOR_NONSAMSUNG_ATTRIBUTE:Ljava/lang/String; = "onlyForNonSamsung"

.field protected static final XML_TAG_ADDITIONAL_PACKAGE_ITEM_OPTIONAL_ATTRIBUTE:Ljava/lang/String; = "optional"

.field protected static final XML_TAG_ADDITIONAL_PACKAGE_ITEM_REQUIRED_FOR_NONSAMSUNG_ATTRIBUTE:Ljava/lang/String; = "requiredForNonSamsung"

.field protected static final XML_TAG_COMMON_INFO:Ljava/lang/String; = "common-info"

.field protected static final XML_TAG_COMMON_INFO_DISCOVERY_KEYWORD:Ljava/lang/String; = "discovery-keyword"

.field protected static final XML_TAG_COMMON_INFO_DISCOVERY_KEYWORD_ITEM:Ljava/lang/String; = "item"

.field protected static final XML_TAG_COMMON_INFO_PACKAGES:Ljava/lang/String; = "packages"

.field protected static final XML_TAG_COMMON_INFO_PACKAGE_ITEM:Ljava/lang/String; = "item"

.field protected static final XML_TAG_COMMON_INFO_PACKAGE_ITEM_DISABLE_PACKAGE_ATTRIBUTE:Ljava/lang/String; = "disablePackage"

.field protected static final XML_TAG_COMMON_INFO_SKIP_DEVCE:Ljava/lang/String; = "skip-device"

.field protected static final XML_TAG_COMMON_INFO_SKIP_DEVCE_ITEM:Ljava/lang/String; = "item"

.field protected static final XML_TAG_DEVICES:Ljava/lang/String; = "devices"

.field protected static final XML_TAG_DEVICE_ITEM:Ljava/lang/String; = "item"

.field protected static final XML_TAG_DEVICE_ITEM_ICON_ATTRIBUTE:Ljava/lang/String; = "icon"

.field protected static final XML_TAG_DEVICE_ITEM_REQUIRES_PAIRING_ATTRIBUTE:Ljava/lang/String; = "requiresPairing"

.field protected static final XML_TAG_DEVICE_ITEM_SUPPORT_CONNECT_AS_AUDIO_ATTRIBUTE:Ljava/lang/String; = "connectAudio"

.field protected static final XML_TAG_DEVICE_ITEM_SUPPORT_HOSTMINMEMORY_ATTRIBUTE:Ljava/lang/String; = "hostMinMemory"

.field protected static final XML_TAG_DEVICE_ITEM_SUPPORT_MULTICONNECTION_ATTRIBUTE:Ljava/lang/String; = "supportMultiConnection"

.field protected static final XML_TAG_DEVICE_ITEM_SUPPORT_NONSAMSUNG_ATTRIBUTE:Ljava/lang/String; = "supportNonSamsung"

.field protected static final XML_TAG_DEVICE_ITEM_SUPPORT_TABLET_ATTRIBUTE:Ljava/lang/String; = "supportTablet"

.field protected static final XML_TAG_GEAR_INFO:Ljava/lang/String; = "gear-info"

.field protected static final XML_TAG_GEAR_INFO_VERSION_ATTRIBUTE:Ljava/lang/String; = "version"

.field protected static final XML_TAG_MODULE_INFO:Ljava/lang/String; = "module-info"

.field protected static final XML_TAG_MODULE_INFO_CONTAINER_ATTRIBUTE:Ljava/lang/String; = "containerName"

.field protected static final XML_TAG_MODULE_INFO_PLUGIN_ATTRIBUTE:Ljava/lang/String; = "pluginName"

.field protected static final XML_TAG_MODULE_INFO_VI_ATTRIBUTE:Ljava/lang/String; = "viClass"


# instance fields
.field protected mCommonInfo:Lcom/samsung/android/app/twatchmanager/model/CommonInfo;

.field protected mModuleInfoList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/samsung/android/app/twatchmanager/model/ModuleInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/samsung/android/app/twatchmanager/util/RulesParser;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/twatchmanager/util/BaseRulesParser;-><init>(I)V

    return-void
.end method


# virtual methods
.method public getAllModuleInfo()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/samsung/android/app/twatchmanager/model/ModuleInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->mModuleInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->mModuleInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->parseAndStoreModuleInfo()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->mModuleInfoList:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getCommonInfo()Lcom/samsung/android/app/twatchmanager/model/CommonInfo;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->mModuleInfoList:Ljava/util/ArrayList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->mModuleInfoList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->parseAndStoreModuleInfo()V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->mCommonInfo:Lcom/samsung/android/app/twatchmanager/model/CommonInfo;

    return-object v0
.end method

.method protected parseAdditionalPackageItem(Lorg/xmlpull/v1/XmlPullParser;)Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;
    .locals 8

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->TAG:Ljava/lang/String;

    const-string v2, "parseAdditionalPackageItem"

    invoke-static {v1, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "optional"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    const-string v1, "requiredForNonSamsung"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v3

    const-string v1, "checkForUpdate"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v5

    const-string v1, "onlyForNonSamsung"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v6

    const-string v1, "installerPackage"

    invoke-interface {p1, v0, v1}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-nez v4, :cond_0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/TWatchManagerApplication;->getAppContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v7, 0x4

    if-ne v1, v7, :cond_1

    new-instance v0, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-direct/range {v0 .. v6}, Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;-><init>(Ljava/lang/String;ZZLjava/lang/String;ZZ)V

    :cond_1
    return-object v0
.end method

.method protected parseAdditionalPackages(Lorg/xmlpull/v1/XmlPullParser;Lcom/samsung/android/app/twatchmanager/model/ModuleInfo;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->TAG:Ljava/lang/String;

    const-string v1, " parseAdditionalPackages() : "

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

    const-string v2, "package"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->parseAdditionalPackageItem(Lorg/xmlpull/v1/XmlPullParser;)Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/twatchmanager/model/ModuleInfo;->addAdditionalPackage(Lcom/samsung/android/app/twatchmanager/model/UHMPackageInfo;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "additional-packages"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected parseAndStoreModuleInfo()V
    .locals 7

    const/4 v6, 0x2

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->TAG:Ljava/lang/String;

    const-string v1, " parseAndStoreModuleInfo "

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    new-instance v0, Ljava/io/File;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/manager/GearRulesManager;->getLocalRulesFilePath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v0

    invoke-virtual {v0}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v2

    const/4 v0, 0x0

    invoke-interface {v2, v1, v0}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I

    move-result v0

    :goto_0
    const/4 v3, 0x1

    if-eq v0, v3, :cond_3

    if-ne v0, v6, :cond_0

    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " tagName :"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "gear-info"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const-string v3, "version"

    invoke-interface {v2, v0, v3}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v3, "\\."

    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    if-ne v4, v6, :cond_0

    iget v4, p0, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->mMajorVersion:I

    const/4 v5, 0x0

    aget-object v3, v3, v5

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    if-ne v4, v3, :cond_1

    sget-object v3, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "parseAndStoreModuleInfo() parse Version:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v0}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->parseGearInfo(Lorg/xmlpull/v1/XmlPullParser;)V

    :cond_0
    :goto_1
    invoke-interface {v2}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v0

    goto :goto_0

    :cond_1
    invoke-virtual {p0, v2}, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->skip(Lorg/xmlpull/v1/XmlPullParser;)V
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_6
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catch_0
    move-exception v0

    :goto_2
    :try_start_2
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_2

    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_3
    return-void

    :cond_3
    if-eqz v1, :cond_2

    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_3

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catch_2
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_3

    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_4
    if-eqz v1, :cond_4

    :try_start_5
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    :cond_4
    :goto_5
    throw v0

    :catch_3
    move-exception v1

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_5

    :catchall_1
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_5
    move-exception v0

    move-object v1, v2

    goto :goto_2

    :catch_6
    move-exception v0

    goto :goto_2
.end method

.method protected parseCommonInfo(Lorg/xmlpull/v1/XmlPullParser;)Lcom/samsung/android/app/twatchmanager/model/CommonInfo;
    .locals 4

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->TAG:Ljava/lang/String;

    const-string v1, "parserCommonInfo() "

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/twatchmanager/model/CommonInfo;

    invoke-direct {v1}, Lcom/samsung/android/app/twatchmanager/model/CommonInfo;-><init>()V

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_4

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "packages"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->parseCommonInfoPackages(Lorg/xmlpull/v1/XmlPullParser;Lcom/samsung/android/app/twatchmanager/model/CommonInfo;)V

    goto :goto_0

    :cond_1
    const-string v3, "discovery-keyword"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->parseCommonInfoDiscoveryKeyword(Lorg/xmlpull/v1/XmlPullParser;Lcom/samsung/android/app/twatchmanager/model/CommonInfo;)V

    goto :goto_0

    :cond_2
    const-string v3, "skip-device"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->parseCommonInfoSkipDevice(Lorg/xmlpull/v1/XmlPullParser;Lcom/samsung/android/app/twatchmanager/model/CommonInfo;)V

    goto :goto_0

    :cond_3
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "common-info"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_4
    return-object v1
.end method

.method protected parseCommonInfoDiscoveryKeyword(Lorg/xmlpull/v1/XmlPullParser;Lcom/samsung/android/app/twatchmanager/model/CommonInfo;)V
    .locals 3

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

    const-string v2, "item"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/twatchmanager/model/CommonInfo;->addDiscoveryKeyword(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "discovery-keyword"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected parseCommonInfoPackages(Lorg/xmlpull/v1/XmlPullParser;Lcom/samsung/android/app/twatchmanager/model/CommonInfo;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->TAG:Ljava/lang/String;

    const-string v1, "parseCommonInfoPackages()"

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

    const-string v2, "item"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->parseCommonPackageItem(Lorg/xmlpull/v1/XmlPullParser;)Lcom/samsung/android/app/twatchmanager/model/CommonPackageItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/twatchmanager/model/CommonInfo;->addCommonPackageInfo(Lcom/samsung/android/app/twatchmanager/model/CommonPackageItem;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "packages"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected parseCommonInfoSkipDevice(Lorg/xmlpull/v1/XmlPullParser;Lcom/samsung/android/app/twatchmanager/model/CommonInfo;)V
    .locals 3

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

    const-string v2, "item"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/twatchmanager/model/CommonInfo;->addSkipDevice(Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "skip-device"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method protected parseCommonPackageItem(Lorg/xmlpull/v1/XmlPullParser;)Lcom/samsung/android/app/twatchmanager/model/CommonPackageItem;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->TAG:Ljava/lang/String;

    const-string v2, "parseCommonPackageItem() "

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/twatchmanager/model/CommonPackageItem;

    invoke-direct {v0}, Lcom/samsung/android/app/twatchmanager/model/CommonPackageItem;-><init>()V

    const-string v2, "disablePackage"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/app/twatchmanager/model/CommonPackageItem;->disablePackage:Z

    :cond_0
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-object v2, v0, Lcom/samsung/android/app/twatchmanager/model/CommonPackageItem;->packageName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_1
    move-object v0, v1

    goto :goto_0

    :cond_2
    move-object v0, v1

    goto :goto_0
.end method

.method protected parseDeviceItem(Lorg/xmlpull/v1/XmlPullParser;)Lcom/samsung/android/app/twatchmanager/model/DeviceItem;
    .locals 4

    const/4 v1, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->TAG:Ljava/lang/String;

    const-string v2, "parseDeviceItem()"

    invoke-static {v0, v2}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/samsung/android/app/twatchmanager/model/DeviceItem;

    invoke-direct {v0}, Lcom/samsung/android/app/twatchmanager/model/DeviceItem;-><init>()V

    const-string v2, "supportNonSamsung"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/app/twatchmanager/model/DeviceItem;->supportNonSamsung:Z

    const-string v2, "supportMultiConnection"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/app/twatchmanager/model/DeviceItem;->supportMultiConnection:Z

    const-string v2, "connectAudio"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/app/twatchmanager/model/DeviceItem;->connectAsAudio:Z

    const-string v2, "hostMinMemory"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/app/twatchmanager/model/DeviceItem;->hostMinMemory:I

    :cond_0
    const-string v2, "icon"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    iput-object v2, v0, Lcom/samsung/android/app/twatchmanager/model/DeviceItem;->iconDrawableName:Ljava/lang/String;

    :cond_1
    const-string v2, "supportTablet"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/app/twatchmanager/model/DeviceItem;->supportTablet:Z

    :cond_2
    const-string v2, "requiresPairing"

    invoke-interface {p1, v1, v2}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_3

    invoke-static {v2}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v2

    iput-boolean v2, v0, Lcom/samsung/android/app/twatchmanager/model/DeviceItem;->requiresPairing:Z

    :cond_3
    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x4

    if-ne v2, v3, :cond_5

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_4

    iput-object v2, v0, Lcom/samsung/android/app/twatchmanager/model/DeviceItem;->deviceName:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_4
    move-object v0, v1

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_0
.end method

.method protected parseDevices(Lorg/xmlpull/v1/XmlPullParser;Lcom/samsung/android/app/twatchmanager/model/ModuleInfo;)V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->TAG:Ljava/lang/String;

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

    const-string v2, "item"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->parseDeviceItem(Lorg/xmlpull/v1/XmlPullParser;)Lcom/samsung/android/app/twatchmanager/model/DeviceItem;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p2, v1}, Lcom/samsung/android/app/twatchmanager/model/ModuleInfo;->addDevice(Lcom/samsung/android/app/twatchmanager/model/DeviceItem;)V

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

.method protected parseGearInfo(Lorg/xmlpull/v1/XmlPullParser;)V
    .locals 5

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->TAG:Ljava/lang/String;

    const-string v1, "parseGearInfo()"

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->mModuleInfoList:Ljava/util/ArrayList;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "module-info"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->parserModuleInfo(Lorg/xmlpull/v1/XmlPullParser;)Lcom/samsung/android/app/twatchmanager/model/ModuleInfo;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "parseGearInfo() ModuleInfo :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->mModuleInfoList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    const-string v2, "common-info"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->parseCommonInfo(Lorg/xmlpull/v1/XmlPullParser;)Lcom/samsung/android/app/twatchmanager/model/CommonInfo;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->mCommonInfo:Lcom/samsung/android/app/twatchmanager/model/CommonInfo;

    goto :goto_0

    :cond_2
    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "gear-info"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method protected parserModuleInfo(Lorg/xmlpull/v1/XmlPullParser;)Lcom/samsung/android/app/twatchmanager/model/ModuleInfo;
    .locals 4

    const/4 v2, 0x0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->TAG:Ljava/lang/String;

    const-string v1, "parserModuleInfo() "

    invoke-static {v0, v1}, Lcom/samsung/android/app/twatchmanager/log/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v1, Lcom/samsung/android/app/twatchmanager/model/ModuleInfo;

    invoke-direct {v1}, Lcom/samsung/android/app/twatchmanager/model/ModuleInfo;-><init>()V

    const-string v0, "containerName"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/app/twatchmanager/model/ModuleInfo;->containerPackage:Ljava/lang/String;

    const-string v0, "viClass"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/app/twatchmanager/model/ModuleInfo;->viClass:Ljava/lang/String;

    const-string v0, "pluginName"

    invoke-interface {p1, v2, v0}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/samsung/android/app/twatchmanager/model/ModuleInfo;->pluginPackage:Ljava/lang/String;

    const/4 v0, 0x0

    :cond_0
    :goto_0
    if-nez v0, :cond_3

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v2

    const/4 v3, 0x2

    if-ne v2, v3, :cond_2

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "devices"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->parseDevices(Lorg/xmlpull/v1/XmlPullParser;Lcom/samsung/android/app/twatchmanager/model/ModuleInfo;)V

    goto :goto_0

    :cond_1
    const-string v3, "additional-packages"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0, p1, v1}, Lcom/samsung/android/app/twatchmanager/util/RulesParser;->parseAdditionalPackages(Lorg/xmlpull/v1/XmlPullParser;Lcom/samsung/android/app/twatchmanager/model/ModuleInfo;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    invoke-interface {p1}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v2

    const-string v3, "module-info"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_3
    return-object v1
.end method
