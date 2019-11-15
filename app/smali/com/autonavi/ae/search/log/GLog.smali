.class public Lcom/autonavi/ae/search/log/GLog;
.super Ljava/lang/Object;
.source "GLog.java"


# static fields
.field public static fileDir:Ljava/lang/String;

.field public static filename:Ljava/lang/String;

.field public static isLogShow:Z

.field public static isWriteFile:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/autonavi/ae/search/log/GLog;->isLogShow:Z

    sput-boolean v0, Lcom/autonavi/ae/search/log/GLog;->isWriteFile:Z

    const-string v0, "/mnt/sdcard/autonavi/"

    sput-object v0, Lcom/autonavi/ae/search/log/GLog;->fileDir:Ljava/lang/String;

    const-string v0, "offlineSearch_jar.txt"

    sput-object v0, Lcom/autonavi/ae/search/log/GLog;->filename:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static WriteFile(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    :try_start_0
    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/autonavi/ae/search/log/GLog;->fileDir:Ljava/lang/String;

    sget-object v2, Lcom/autonavi/ae/search/log/GLog;->filename:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    :cond_0
    new-instance v1, Ljava/io/FileOutputStream;

    const/4 v2, 0x1

    invoke-direct {v1, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;Z)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v2, Ljava/util/Date;

    invoke-static {}, Landroid/os/SystemClock;->currentThreadTimeMillis()J

    move-result-wide v4

    invoke-direct {v2, v4, v5}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ":"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "\n"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public static d(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/autonavi/ae/search/log/GLog;->isLogShow:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/autonavi/ae/search/log/GLog;->isWriteFile:Z

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/autonavi/ae/search/log/GLog;->WriteFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static e(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/autonavi/ae/search/log/GLog;->isLogShow:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/autonavi/ae/search/log/GLog;->isWriteFile:Z

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/autonavi/ae/search/log/GLog;->WriteFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static i(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/autonavi/ae/search/log/GLog;->isLogShow:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/autonavi/ae/search/log/GLog;->isWriteFile:Z

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/autonavi/ae/search/log/GLog;->WriteFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method

.method public static isLogShow()Z
    .locals 1

    sget-boolean v0, Lcom/autonavi/ae/search/log/GLog;->isLogShow:Z

    return v0
.end method

.method public static v(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    sget-boolean v0, Lcom/autonavi/ae/search/log/GLog;->isLogShow:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    sget-boolean v0, Lcom/autonavi/ae/search/log/GLog;->isWriteFile:Z

    if-eqz v0, :cond_1

    invoke-static {p0, p1}, Lcom/autonavi/ae/search/log/GLog;->WriteFile(Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void
.end method
