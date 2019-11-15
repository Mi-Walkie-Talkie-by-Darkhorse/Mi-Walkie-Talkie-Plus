.class public Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;
.super Ljava/lang/Object;
.source "FileTracerConfig.java"


# static fields
.field public static final DEF_BUFFER_SIZE:I = 0x2000

.field public static final DEF_FLUSH_INTERVAL:J = 0x2710L

.field public static final DEF_FOLDER_FORMAT:Ljava/lang/String; = "yyyy-MM-dd"

.field public static final DEF_THREAD_NAME:Ljava/lang/String; = "Tracer.File"

.field public static final DEF_TRACE_FILEEXT:Ljava/lang/String; = ".log"

.field private static final DEF_TRACE_FOLDER_FILTER:Ljava/io/FileFilter;

.field public static final FOREVER:J = 0x7fffffffffffffffL

.field public static final NO_LIMITED:I = 0x7fffffff

.field public static final PRIORITY_BACKGROUND:I = 0xa

.field public static final PRIORITY_STANDARD:I


# instance fields
.field private mBlockComparetor:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator",
            "<-",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation
.end field

.field private mFileExt:Ljava/lang/String;

.field private mFlushInterval:J

.field private mKeepPeriod:J

.field private mLogFileFilter:Ljava/io/FileFilter;

.field private mMaxBlockCount:I

.field private mMaxBlockSize:I

.field private mMaxBufferSize:I

.field private mRootFolder:Ljava/io/File;

.field private mThreadName:Ljava/lang/String;

.field private mThreadPriority:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig$1;

    invoke-direct {v0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig$1;-><init>()V

    sput-object v0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->DEF_TRACE_FOLDER_FILTER:Ljava/io/FileFilter;

    return-void
.end method

.method public constructor <init>(Ljava/io/File;)V
    .locals 12

    const v2, 0x7fffffff

    const/16 v4, 0x2000

    const-string v5, "Tracer.File"

    const-wide/16 v6, 0x2710

    const/16 v8, 0xa

    const-string v9, ".log"

    const-wide v10, 0x7fffffffffffffffL

    move-object v0, p0

    move-object v1, p1

    move v3, v2

    invoke-direct/range {v0 .. v11}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;-><init>(Ljava/io/File;IIILjava/lang/String;JILjava/lang/String;J)V

    return-void
.end method

.method public constructor <init>(Ljava/io/File;IIILjava/lang/String;JILjava/lang/String;J)V
    .locals 2

    const v1, 0x7fffffff

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Tracer.File"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mThreadName:Ljava/lang/String;

    iput v1, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mMaxBlockSize:I

    iput v1, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mMaxBlockCount:I

    const/16 v0, 0x2000

    iput v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mMaxBufferSize:I

    const-wide/16 v0, 0x2710

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mFlushInterval:J

    const/16 v0, 0xa

    iput v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mThreadPriority:I

    const-string v0, ".log"

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mFileExt:Ljava/lang/String;

    const-wide v0, 0x7fffffffffffffffL

    iput-wide v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mKeepPeriod:J

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig$2;

    invoke-direct {v0, p0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig$2;-><init>(Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mLogFileFilter:Ljava/io/FileFilter;

    new-instance v0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig$3;

    invoke-direct {v0, p0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig$3;-><init>(Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;)V

    iput-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mBlockComparetor:Ljava/util/Comparator;

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->setRootFolder(Ljava/io/File;)V

    invoke-virtual {p0, p2}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->setMaxBlockCount(I)V

    invoke-virtual {p0, p3}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->setMaxBlockSize(I)V

    invoke-virtual {p0, p4}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->setMaxBufferSize(I)V

    invoke-virtual {p0, p5}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->setThreadName(Ljava/lang/String;)V

    invoke-virtual {p0, p6, p7}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->setFlushInterval(J)V

    invoke-virtual {p0, p8}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->setThreadPriority(I)V

    invoke-virtual {p0, p9}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->setFileExt(Ljava/lang/String;)V

    invoke-virtual {p0, p10, p11}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->setKeepPeriod(J)V

    return-void
.end method

.method static synthetic access$000(Ljava/io/File;)I
    .locals 1

    invoke-static {p0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getBlockCountFromFile(Ljava/io/File;)I

    move-result v0

    return v0
.end method

.method private ensureBlockCount(Ljava/io/File;)Ljava/io/File;
    .locals 6

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v3

    if-eqz v3, :cond_0

    array-length v0, v3

    if-nez v0, :cond_2

    :cond_0
    new-instance v1, Ljava/io/File;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getFileExt()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :cond_1
    return-object v1

    :cond_2
    invoke-virtual {p0, v3}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->sortBlocksByIndex([Ljava/io/File;)[Ljava/io/File;

    array-length v0, v3

    add-int/lit8 v0, v0, -0x1

    aget-object v1, v3, v0

    array-length v0, v3

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getMaxBlockCount()I

    move-result v2

    sub-int/2addr v0, v2

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v2, v4

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getMaxBlockSize()I

    move-result v4

    if-le v2, v4, :cond_3

    invoke-static {v1}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getBlockCountFromFile(Ljava/io/File;)I

    move-result v1

    add-int/lit8 v2, v1, 0x1

    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getFileExt()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, p1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    add-int/lit8 v0, v0, 0x1

    :cond_3
    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v4, v3, v2

    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0
.end method

.method private static getBlockCountFromFile(Ljava/io/File;)I
    .locals 3

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x2e

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    :goto_0
    return v0

    :catch_0
    move-exception v0

    const/4 v0, -0x1

    goto :goto_0
.end method

.method public static getTimeFromFolder(Ljava/io/File;)J
    .locals 2

    :try_start_0
    const-string v0, "yyyy-MM-dd"

    invoke-static {v0}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->createDataFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v0

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v0

    :goto_0
    return-wide v0

    :catch_0
    move-exception v0

    const-wide/16 v0, -0x1

    goto :goto_0
.end method

.method private getWorkFile(J)Ljava/io/File;
    .locals 1

    invoke-virtual {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getWorkFolder(J)Ljava/io/File;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->ensureBlockCount(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method private getWorkFolderPath(J)Ljava/io/File;
    .locals 5

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getRootFolder()Ljava/io/File;

    move-result-object v1

    const-string v2, "yyyy-MM-dd"

    invoke-static {v2}, Lcom/mi/milinkforgame/sdk/util/CommonUtils;->createDataFormat(Ljava/lang/String;)Ljava/text/SimpleDateFormat;

    move-result-object v2

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public cleanWorkFolders()V
    .locals 8

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getRootFolder()Ljava/io/File;

    move-result-object v0

    if-nez v0, :cond_1

    :cond_0
    return-void

    :cond_1
    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getRootFolder()Ljava/io/File;

    move-result-object v0

    sget-object v1, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->DEF_TRACE_FOLDER_FILTER:Ljava/io/FileFilter;

    invoke-virtual {v0, v1}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v1

    if-eqz v1, :cond_0

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    invoke-static {v3}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getTimeFromFolder(Ljava/io/File;)J

    move-result-wide v4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long v4, v6, v4

    invoke-virtual {p0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getKeepPeriod()J

    move-result-wide v6

    cmp-long v4, v4, v6

    if-lez v4, :cond_2

    invoke-static {v3}, Lcom/mi/milinkforgame/sdk/util/FileUtils;->deleteFile(Ljava/io/File;)Z

    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mLogFileFilter:Ljava/io/FileFilter;

    invoke-virtual {p1, v0}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getCurrFile()Ljava/io/File;
    .locals 2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getWorkFile(J)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public getFileExt()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mFileExt:Ljava/lang/String;

    return-object v0
.end method

.method public getFlushInterval()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mFlushInterval:J

    return-wide v0
.end method

.method public getKeepPeriod()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mKeepPeriod:J

    return-wide v0
.end method

.method public getMaxBlockCount()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mMaxBlockCount:I

    return v0
.end method

.method public getMaxBlockSize()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mMaxBlockSize:I

    return v0
.end method

.method public getMaxBufferSize()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mMaxBufferSize:I

    return v0
.end method

.method public getRootFolder()Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mRootFolder:Ljava/io/File;

    return-object v0
.end method

.method public getSizeOfBlocks(Ljava/io/File;)J
    .locals 2

    invoke-direct {p0, p1}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->ensureBlockCount(Ljava/io/File;)Ljava/io/File;

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getAllBlocksInFolder(Ljava/io/File;)[Ljava/io/File;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getSizeOfBlocks([Ljava/io/File;)J

    move-result-wide v0

    return-wide v0
.end method

.method public getSizeOfBlocks([Ljava/io/File;)J
    .locals 9

    const-wide/16 v2, 0x0

    array-length v4, p1

    const/4 v0, 0x0

    move v8, v0

    move-wide v0, v2

    move v2, v8

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v3}, Ljava/io/File;->length()J

    move-result-wide v6

    add-long/2addr v0, v6

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-wide v0
.end method

.method public getThreadName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mThreadName:Ljava/lang/String;

    return-object v0
.end method

.method public getThreadPriority()I
    .locals 1

    iget v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mThreadPriority:I

    return v0
.end method

.method public getWorkFolder(J)Ljava/io/File;
    .locals 3

    invoke-direct {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getWorkFolderPath(J)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    :cond_0
    return-object v0
.end method

.method public isWorkFolderExists(J)Z
    .locals 1

    invoke-direct {p0, p1, p2}, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->getWorkFolderPath(J)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public setFileExt(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mFileExt:Ljava/lang/String;

    return-void
.end method

.method public setFlushInterval(J)V
    .locals 1

    iput-wide p1, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mFlushInterval:J

    return-void
.end method

.method public setKeepPeriod(J)V
    .locals 1

    iput-wide p1, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mKeepPeriod:J

    return-void
.end method

.method public setMaxBlockCount(I)V
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mMaxBlockCount:I

    return-void
.end method

.method public setMaxBlockSize(I)V
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mMaxBlockSize:I

    return-void
.end method

.method public setMaxBufferSize(I)V
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mMaxBufferSize:I

    return-void
.end method

.method public setRootFolder(Ljava/io/File;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mRootFolder:Ljava/io/File;

    return-void
.end method

.method public setThreadName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mThreadName:Ljava/lang/String;

    return-void
.end method

.method public setThreadPriority(I)V
    .locals 0

    iput p1, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mThreadPriority:I

    return-void
.end method

.method public sortBlocksByIndex([Ljava/io/File;)[Ljava/io/File;
    .locals 1

    iget-object v0, p0, Lcom/mi/milinkforgame/sdk/base/debug/FileTracerConfig;->mBlockComparetor:Ljava/util/Comparator;

    invoke-static {p1, v0}, Ljava/util/Arrays;->sort([Ljava/lang/Object;Ljava/util/Comparator;)V

    return-object p1
.end method
