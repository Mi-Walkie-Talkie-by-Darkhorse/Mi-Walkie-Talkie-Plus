.class public Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;
.super Ljava/lang/Object;
.source "LogUploadHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$Result;
    }
.end annotation


# static fields
.field private static final LOG_LOACTION_LISTS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/mi/mimsgsdk/log/upload/LogLocation;",
            ">;"
        }
    .end annotation
.end field

.field private static final LOG_ROOT_DIR:Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static final TEMP_ZIP_FILE:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-class v0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/mi/mimsgsdk/utils/GlobalData;->app()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/mimsglog.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->TEMP_ZIP_FILE:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/Xiaomi/MiMsgSdk/logs/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/mi/mimsgsdk/utils/GlobalData;->app()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->LOG_ROOT_DIR:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->LOG_LOACTION_LISTS:Ljava/util/List;

    sget-object v0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->LOG_LOACTION_LISTS:Ljava/util/List;

    new-instance v1, Lcom/mi/mimsgsdk/log/upload/LogLocation;

    const-string v2, "/data/anr"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/mi/mimsgsdk/log/upload/LogLocation;-><init>(Ljava/lang/String;Ljava/io/FileFilter;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lrx/b/b;)V
    .locals 0

    invoke-static {p0}, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->uploadLogFile(Lrx/b/b;)V

    return-void
.end method

.method static synthetic access$200(J)I
    .locals 2

    invoke-static {p0, p1}, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->zipLogFile(J)I

    move-result v0

    return v0
.end method

.method public static uploadLog(JLrx/b/b;)V
    .locals 2
    .param p2    # Lrx/b/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Lrx/b/b",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$2;

    invoke-direct {v0, p0, p1}, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$2;-><init>(J)V

    invoke-static {v0}, Lrx/a;->a(Lrx/a$a;)Lrx/a;

    move-result-object v0

    invoke-static {}, Lrx/e/e;->b()Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/d;)Lrx/a;

    move-result-object v0

    invoke-static {}, Lrx/a/b/a;->a()Lrx/d;

    move-result-object v1

    invoke-virtual {v0, v1}, Lrx/a;->a(Lrx/d;)Lrx/a;

    move-result-object v0

    new-instance v1, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$1;

    invoke-direct {v1, p2}, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$1;-><init>(Lrx/b/b;)V

    invoke-virtual {v0, v1}, Lrx/a;->b(Lrx/e;)Lrx/f;

    return-void
.end method

.method private static uploadLogFile(Lrx/b/b;)V
    .locals 4
    .param p0    # Lrx/b/b;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/AnyThread;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lrx/b/b",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/io/File;

    sget-object v1, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->TEMP_ZIP_FILE:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-direct {v1}, Lcom/mi/mimsgsdk/upload/Attachment;-><init>()V

    sget-object v2, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->TEMP_ZIP_FILE:Ljava/lang/String;

    iput-object v2, v1, Lcom/mi/mimsgsdk/upload/Attachment;->localPath:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/mi/mimsgsdk/upload/Attachment;->filename:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/mi/mimsgsdk/upload/Attachment;->fileSize:J

    invoke-static {}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->generateAttachmentId()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/mi/mimsgsdk/upload/Attachment;->attId:J

    const/4 v0, 0x2

    iput v0, v1, Lcom/mi/mimsgsdk/upload/Attachment;->authType:I

    iget-object v0, v1, Lcom/mi/mimsgsdk/upload/Attachment;->localPath:Ljava/lang/String;

    const-string v2, "."

    invoke-virtual {v0, v2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v2

    const-string v0, ""

    if-lez v2, :cond_1

    iget-object v0, v1, Lcom/mi/mimsgsdk/upload/Attachment;->localPath:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "file/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, v1, Lcom/mi/mimsgsdk/upload/Attachment;->mimeType:Ljava/lang/String;

    new-instance v0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5;

    invoke-direct {v0, v1, p0}, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$5;-><init>(Lcom/mi/mimsgsdk/upload/Attachment;Lrx/b/b;)V

    invoke-static {v0}, Lrx/a;->a(Lrx/a$a;)Lrx/a;

    move-result-object v0

    invoke-static {}, Lrx/e/e;->b()Lrx/d;

    move-result-object v2

    invoke-virtual {v0, v2}, Lrx/a;->b(Lrx/d;)Lrx/a;

    move-result-object v0

    new-instance v2, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$4;

    invoke-direct {v2, v1}, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$4;-><init>(Lcom/mi/mimsgsdk/upload/Attachment;)V

    invoke-virtual {v0, v2}, Lrx/a;->b(Lrx/e;)Lrx/f;

    goto :goto_0
.end method

.method private static zipLogFile(J)I
    .locals 12
    .annotation build Landroid/support/annotation/WorkerThread;
    .end annotation

    const/4 v1, 0x0

    const/4 v3, 0x0

    invoke-static {}, Lcom/mi/mimsgsdk/utils/SDCardUtils;->isSDCardBusy()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    :try_start_0
    new-instance v4, Ljava/io/FileOutputStream;

    sget-object v0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->TEMP_ZIP_FILE:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {v4, v0, v2}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;Z)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    new-instance v2, Ljava/util/zip/ZipOutputStream;

    invoke-direct {v2, v4}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :try_start_2
    new-instance v0, Ljava/io/File;

    sget-object v3, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->LOG_ROOT_DIR:Ljava/lang/String;

    invoke-direct {v0, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result v3

    if-nez v3, :cond_2

    :cond_1
    const/4 v0, 0x3

    invoke-static {v2}, Lcom/mi/mimsgsdk/log/upload/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-static {v4}, Lcom/mi/mimsgsdk/log/upload/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto :goto_0

    :cond_2
    const/4 v3, 0x0

    :try_start_3
    new-instance v5, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$3;

    invoke-direct {v5}, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper$3;-><init>()V

    invoke-static {v2, v0, v3, v5}, Lcom/mi/mimsgsdk/log/upload/IOUtils;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Ljava/io/FileFilter;)V

    sget-object v0, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->LOG_LOACTION_LISTS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/mi/mimsgsdk/log/upload/LogLocation;

    if-eqz v0, :cond_3

    new-instance v3, Ljava/io/File;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/log/upload/LogLocation;->getRootDir()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_3

    invoke-virtual {v3}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v6

    if-eqz v6, :cond_3

    array-length v7, v6

    move v3, v1

    :goto_1
    if-ge v3, v7, :cond_3

    aget-object v8, v6, v3

    if-eqz v8, :cond_5

    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v9

    if-eqz v9, :cond_5

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/log/upload/LogLocation;->getFileFilter()Ljava/io/FileFilter;

    move-result-object v9

    if-eqz v9, :cond_4

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/log/upload/LogLocation;->getFileFilter()Ljava/io/FileFilter;

    move-result-object v9

    invoke-interface {v9, v8}, Ljava/io/FileFilter;->accept(Ljava/io/File;)Z

    move-result v9

    if-eqz v9, :cond_5

    :cond_4
    invoke-virtual {v8}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-static {v2, v8, v9, v10}, Lcom/mi/mimsgsdk/log/upload/IOUtils;->zip(Ljava/util/zip/ZipOutputStream;Ljava/io/File;Ljava/lang/String;Ljava/io/FileFilter;)V

    :cond_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_6
    invoke-virtual {v2}, Ljava/util/zip/ZipOutputStream;->flush()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    invoke-static {v2}, Lcom/mi/mimsgsdk/log/upload/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-static {v4}, Lcom/mi/mimsgsdk/log/upload/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    new-instance v0, Ljava/io/File;

    sget-object v2, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->TEMP_ZIP_FILE:Ljava/lang/String;

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-nez v2, :cond_7

    const/4 v0, 0x4

    goto/16 :goto_0

    :catch_0
    move-exception v0

    move-object v1, v3

    :goto_2
    :try_start_4
    sget-object v2, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v2, v4, v0}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    const/4 v0, -0x1

    invoke-static {v1}, Lcom/mi/mimsgsdk/log/upload/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-static {v3}, Lcom/mi/mimsgsdk/log/upload/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v2, v3

    move-object v4, v3

    :goto_3
    invoke-static {v2}, Lcom/mi/mimsgsdk/log/upload/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    invoke-static {v4}, Lcom/mi/mimsgsdk/log/upload/IOUtils;->closeQuietly(Ljava/io/OutputStream;)V

    throw v0

    :cond_7
    sget-object v2, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->TAG:Ljava/lang/String;

    const-string v3, "zip file generated"

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Lcom/mi/milinkforgame/sdk/base/Global;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/mi/mimsgsdk/utils/Network;->isWIFIConnected(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_8

    const/4 v0, 0x5

    goto/16 :goto_0

    :cond_8
    const-wide/16 v2, 0x0

    cmp-long v2, p0, v2

    if-lez v2, :cond_9

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v2

    cmp-long v2, v2, p0

    if-lez v2, :cond_9

    sget-object v1, Lcom/mi/mimsgsdk/log/upload/LogUploadHelper;->TAG:Ljava/lang/String;

    const-string v2, "zip file too large"

    invoke-static {v1, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    const/4 v0, 0x2

    goto/16 :goto_0

    :cond_9
    move v0, v1

    goto/16 :goto_0

    :catchall_1
    move-exception v0

    move-object v2, v3

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_3

    :catchall_3
    move-exception v0

    move-object v2, v1

    move-object v4, v3

    goto :goto_3

    :catch_1
    move-exception v0

    move-object v1, v3

    move-object v3, v4

    goto :goto_2

    :catch_2
    move-exception v0

    move-object v1, v2

    move-object v3, v4

    goto :goto_2
.end method
