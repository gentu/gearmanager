.class Lcom/samsung/android/app/twatchmanager/log/MLogger;
.super Ljava/lang/Object;


# static fields
.field private static MAX_ARRAY_BUFF:I

.field private static MAX_FILE_SIZE:I

.field private static btAddressPattern:Ljava/util/regex/Pattern;

.field private static mExportDir:Ljava/lang/String;

.field private static mFileName:Ljava/lang/String;

.field private static mInternalDir:Ljava/lang/String;

.field private static mMsgLog:[Ljava/lang/String;

.field private static mbCounter:I

.field private static mbRingBuffStart:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const/4 v1, 0x0

    const v0, 0xc800

    sput v0, Lcom/samsung/android/app/twatchmanager/log/MLogger;->MAX_ARRAY_BUFF:I

    const/high16 v0, 0x300000

    sput v0, Lcom/samsung/android/app/twatchmanager/log/MLogger;->MAX_FILE_SIZE:I

    sput v1, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mbCounter:I

    sput-boolean v1, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mbRingBuffStart:Z

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mMsgLog:[Ljava/lang/String;

    const-string v0, "/log/GearLog/"

    sput-object v0, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mExportDir:Ljava/lang/String;

    const-string v0, "/data/data/com.samsung.android.app.watchmanager/files/"

    sput-object v0, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mInternalDir:Ljava/lang/String;

    const-string v0, "dumpState-UHM.log"

    sput-object v0, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mFileName:Ljava/lang/String;

    const-string v0, "([0-9A-Fa-f]{2}[:-]){4}"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/samsung/android/app/twatchmanager/log/MLogger;->btAddressPattern:Ljava/util/regex/Pattern;

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/log/MLogger;->init()V

    return-void
.end method

.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized copyToSdcard()V
    .locals 10

    const/4 v1, 0x0

    const-class v9, Lcom/samsung/android/app/twatchmanager/log/MLogger;

    monitor-enter v9

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mExportDir:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v2, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mFileName:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_1

    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mInternalDir:Ljava/lang/String;

    sget-object v4, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v8, Ljava/io/FileInputStream;

    invoke-direct {v8, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :try_start_3
    invoke-virtual {v8}, Ljava/io/FileInputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v1

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;

    move-result-object v6

    const-wide/16 v2, 0x0

    invoke-virtual {v1}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v4

    invoke-virtual/range {v1 .. v6}, Ljava/nio/channels/FileChannel;->transferTo(JJLjava/nio/channels/WritableByteChannel;)J

    if-eqz v8, :cond_0

    invoke-virtual {v8}, Ljava/io/FileInputStream;->close()V

    :cond_0
    if-eqz v7, :cond_1

    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_1
    :goto_0
    monitor-exit v9

    return-void

    :catch_0
    move-exception v0

    move-object v2, v1

    :goto_1
    :try_start_4
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v2, :cond_2

    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V

    :cond_2
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v9

    throw v0

    :catch_2
    move-exception v0

    move-object v2, v8

    goto :goto_1

    :catch_3
    move-exception v0

    move-object v1, v7

    move-object v2, v8

    goto :goto_1
.end method

.method private static createLogFile()Ljava/io/File;
    .locals 6

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mInternalDir:Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mFileName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz v0, :cond_3

    :try_start_0
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    sget v1, Lcom/samsung/android/app/twatchmanager/log/MLogger;->MAX_FILE_SIZE:I

    int-to-long v4, v1

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    sget-boolean v1, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mbRingBuffStart:Z

    if-eqz v1, :cond_1

    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_2
    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static declared-synchronized dumpLog()Z
    .locals 9

    const/4 v0, 0x0

    const/4 v2, 0x0

    const-class v4, Lcom/samsung/android/app/twatchmanager/log/MLogger;

    monitor-enter v4

    const/4 v1, 0x0

    :try_start_0
    sget v5, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mbCounter:I

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/log/MLogger;->createLogFile()Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v6

    if-eqz v6, :cond_6

    :try_start_1
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v7, "rw"

    invoke-direct {v3, v6, v7}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v3, :cond_0

    :try_start_2
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    :cond_0
    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->size()J

    move-result-wide v6

    invoke-virtual {v2, v6, v7}, Ljava/nio/channels/FileChannel;->position(J)Ljava/nio/channels/FileChannel;

    sget-boolean v6, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mbRingBuffStart:Z

    if-eqz v6, :cond_1

    sget v6, Lcom/samsung/android/app/twatchmanager/log/MLogger;->MAX_ARRAY_BUFF:I

    invoke-static {v1, v2, v5, v6}, Lcom/samsung/android/app/twatchmanager/log/MLogger;->writeBuffToFile(Ljava/nio/ByteBuffer;Ljava/nio/channels/FileChannel;II)V

    :cond_1
    const/4 v6, 0x0

    invoke-static {v1, v2, v6, v5}, Lcom/samsung/android/app/twatchmanager/log/MLogger;->writeBuffToFile(Ljava/nio/ByteBuffer;Ljava/nio/channels/FileChannel;II)V

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/log/MLogger;->initializeCounter()V

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/nio/channels/FileChannel;->close()V

    :cond_2
    if-eqz v3, :cond_3

    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_3
    :goto_1
    const/4 v0, 0x1

    :cond_4
    :goto_2
    monitor-exit v4

    return v0

    :catch_0
    move-exception v1

    move-object v3, v2

    :goto_3
    :try_start_4
    invoke-static {}, Lcom/samsung/android/app/twatchmanager/log/MLogger;->initializeCounter()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-eqz v3, :cond_5

    :try_start_5
    invoke-virtual {v3}, Ljava/nio/channels/FileChannel;->close()V

    :cond_5
    if-eqz v2, :cond_4

    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    :catch_1
    move-exception v0

    :try_start_6
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    monitor-exit v4

    throw v0

    :catch_2
    move-exception v1

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_3

    :catch_3
    move-exception v1

    move-object v8, v3

    move-object v3, v2

    move-object v2, v8

    goto :goto_3

    :cond_6
    move-object v3, v2

    goto :goto_0
.end method

.method private static declared-synchronized fillBuff(Ljava/lang/String;)V
    .locals 4

    const-class v1, Lcom/samsung/android/app/twatchmanager/log/MLogger;

    monitor-enter v1

    :try_start_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    new-instance v0, Ljava/sql/Date;

    invoke-direct {v0, v2, v3}, Ljava/sql/Date;-><init>(J)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM-dd HH:mm:ss.SSS"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    if-eqz v2, :cond_0

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\t"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    :cond_0
    sget v0, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mbCounter:I

    sget v2, Lcom/samsung/android/app/twatchmanager/log/MLogger;->MAX_ARRAY_BUFF:I

    if-lt v0, v2, :cond_1

    const/4 v0, 0x1

    sput-boolean v0, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mbRingBuffStart:Z

    const/4 v0, 0x0

    sput v0, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mbCounter:I

    :cond_1
    sget-object v0, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mMsgLog:[Ljava/lang/String;

    sget v2, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mbCounter:I

    aput-object p0, v0, v2

    sget v0, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mbCounter:I

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mbCounter:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static getCounter()I
    .locals 2

    const/4 v0, 0x0

    sget-object v1, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mMsgLog:[Ljava/lang/String;

    aget-object v1, v1, v0

    if-nez v1, :cond_0

    :goto_0
    return v0

    :cond_0
    sget v0, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mbCounter:I

    goto :goto_0
.end method

.method public static final info(Ljava/lang/String;)V
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/twatchmanager/log/MLogger;->fillBuff(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static init()V
    .locals 0

    invoke-static {}, Lcom/samsung/android/app/twatchmanager/log/MLogger;->initializeBuff()V

    return-void
.end method

.method private static initializeBuff()V
    .locals 1

    sget v0, Lcom/samsung/android/app/twatchmanager/log/MLogger;->MAX_ARRAY_BUFF:I

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mMsgLog:[Ljava/lang/String;

    return-void
.end method

.method private static initializeCounter()V
    .locals 3

    const/4 v2, 0x0

    sput v2, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mbCounter:I

    sput-boolean v2, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mbRingBuffStart:Z

    sget-object v0, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mMsgLog:[Ljava/lang/String;

    const/4 v1, 0x0

    aput-object v1, v0, v2

    return-void
.end method

.method private static writeBuffToFile(Ljava/nio/ByteBuffer;Ljava/nio/channels/FileChannel;II)V
    .locals 4

    move-object v1, p0

    :goto_0
    if-ge p2, p3, :cond_2

    sget-object v0, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mMsgLog:[Ljava/lang/String;

    aget-object v0, v0, p2

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mMsgLog:[Ljava/lang/String;

    sget-object v2, Lcom/samsung/android/app/twatchmanager/log/MLogger;->btAddressPattern:Ljava/util/regex/Pattern;

    sget-object v3, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mMsgLog:[Ljava/lang/String;

    aget-object v3, v3, p2

    invoke-virtual {v2, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    const-string v3, "##:##:##:##:"

    invoke-virtual {v2, v3}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, p2

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mMsgLog:[Ljava/lang/String;

    aget-object v0, v0, p2

    const-string v2, "UTF-8"

    invoke-virtual {v0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    move-object v1, v0

    :cond_0
    :goto_1
    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {p1, v1}, Ljava/nio/channels/FileChannel;->write(Ljava/nio/ByteBuffer;)I

    sget-object v0, Lcom/samsung/android/app/twatchmanager/log/MLogger;->mMsgLog:[Ljava/lang/String;

    const/4 v2, 0x0

    aput-object v2, v0, p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    :cond_1
    :goto_2
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :catch_0
    move-exception v0

    invoke-virtual {v0}, Ljava/io/UnsupportedEncodingException;->printStackTrace()V

    goto :goto_1

    :catch_1
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2

    :cond_2
    return-void
.end method
