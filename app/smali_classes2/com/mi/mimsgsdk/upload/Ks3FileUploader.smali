.class public Lcom/mi/mimsgsdk/upload/Ks3FileUploader;
.super Ljava/lang/Object;
.source "Ks3FileUploader.java"


# static fields
.field public static final AccessControl_Private:Ljava/lang/String; = "private"

.field public static final AccessControl_PublicRead:Ljava/lang/String; = "public-read"

.field public static final AccessControl_PublicReadWrite:Ljava/lang/String; = "public-read-write"

.field public static final FAILURE_PROGRESS:I = -0x1

.field public static final Ks3FileHost:Ljava/lang/String; = "http://mix.chat.mi.com"

.field public static final LARGE_FILE_SIZE:J = 0x500000L

.field private static final LARGE_PAGE_SIZE:J = 0x500000L

.field public static final MULTI_UPLOAD_THREADHOLD:J = 0x100000L

.field public static PART_SIZE:J = 0x0L

.field private static final SMALL_PAGE_SIZE:J = 0x7d000L

.field private static final TAG:Ljava/lang/String;

.field public static final sFileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final sFileUploaderProgress:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final sInitiateMultipartUploadResultMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/ksyun/ks3/model/a/b;",
            ">;"
        }
    .end annotation
.end field

.field public static final sKs3ClientMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Lcom/ksyun/ks3/services/e;",
            ">;"
        }
    .end annotation
.end field

.field public static final sKs3ClientTokenMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private authDate:Ljava/lang/String;

.field private mAtt:Lcom/mi/mimsgsdk/upload/Attachment;

.field private mBucketName:Ljava/lang/String;

.field private mKs3Client:Lcom/ksyun/ks3/services/e;

.field private mList:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

.field private mMsgId:J

.field private mObjId:Ljava/lang/String;

.field private mToken:Ljava/lang/String;

.field private mUploadCallBack:Lcom/mi/mimsgsdk/upload/UploadCallBack;

.field private type:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    const-class v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->TAG:Ljava/lang/String;

    const-wide/32 v0, 0x7d000

    sput-wide v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->PART_SIZE:J

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->sFileUploaderProgress:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->sInitiateMultipartUploadResultMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->sKs3ClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->sKs3ClientTokenMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->sFileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    return-void
.end method

.method public constructor <init>(Lcom/mi/mimsgsdk/upload/Attachment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/mi/mimsgsdk/upload/UploadCallBack;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/ksyun/ks3/model/acl/CannedAccessControlList;->b:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    iput-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mList:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mBucketName:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mObjId:Ljava/lang/String;

    iput-object p1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    iput-object p2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mBucketName:Ljava/lang/String;

    iput-object p3, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mObjId:Ljava/lang/String;

    iput-wide p5, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mMsgId:J

    iput-object p7, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mToken:Ljava/lang/String;

    invoke-virtual {p0, p4}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->generateObjectAcl(Ljava/lang/String;)Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mList:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    iput-object p8, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mUploadCallBack:Lcom/mi/mimsgsdk/upload/UploadCallBack;

    iput-object p9, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->authDate:Ljava/lang/String;

    iput p10, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->type:I

    return-void
.end method

.method static synthetic access$000(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mToken:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->authDate:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;Lcom/mi/mimsgsdk/upload/Attachment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->uploadpart(Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;Lcom/mi/mimsgsdk/upload/Attachment;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;Lcom/mi/mimsgsdk/upload/Attachment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->completeUploadPart(Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;Lcom/mi/mimsgsdk/upload/Attachment;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$200(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mObjId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Lcom/ksyun/ks3/model/acl/CannedAccessControlList;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mList:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    return-object v0
.end method

.method static synthetic access$400(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Z
    .locals 1

    invoke-direct {p0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->isAborted()Z

    move-result v0

    return v0
.end method

.method static synthetic access$500(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)Lcom/mi/mimsgsdk/upload/UploadCallBack;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mUploadCallBack:Lcom/mi/mimsgsdk/upload/UploadCallBack;

    return-object v0
.end method

.method static synthetic access$600(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;ZLjava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->onUploadFinished(ZLjava/lang/String;)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;Lcom/ksyun/ks3/model/a/b;Lcom/mi/mimsgsdk/upload/Attachment;Landroid/content/Context;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->beginMultiUpload(Lcom/ksyun/ks3/model/a/b;Lcom/mi/mimsgsdk/upload/Attachment;Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$900(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;Landroid/content/Context;)Lcom/ksyun/ks3/services/e;
    .locals 1

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->getDefaultClient(Landroid/content/Context;)Lcom/ksyun/ks3/services/e;

    move-result-object v0

    return-object v0
.end method

.method private beginMultiUpload(Lcom/ksyun/ks3/model/a/b;Lcom/mi/mimsgsdk/upload/Attachment;Landroid/content/Context;)V
    .locals 8

    sget-object v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->sInitiateMultipartUploadResultMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mMsgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v1, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;

    invoke-virtual {p1}, Lcom/ksyun/ks3/model/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/ksyun/ks3/model/a/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lcom/ksyun/ks3/model/a/b;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-virtual {p2}, Lcom/mi/mimsgsdk/upload/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-wide v6, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->PART_SIZE:J

    invoke-direct/range {v1 .. v7}, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;J)V

    invoke-direct {p0, v1, p2, p3}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->uploadpart(Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;Lcom/mi/mimsgsdk/upload/Attachment;Landroid/content/Context;)V

    return-void
.end method

.method private completeUploadPart(Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;Lcom/mi/mimsgsdk/upload/Attachment;Landroid/content/Context;)V
    .locals 2

    sget-object v0, Lcom/mi/mimsgsdk/utils/GlobalData;->globalUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$6;-><init>(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;Landroid/content/Context;Lcom/ksyun/ks3/services/request/CompleteMultipartUploadRequest;Lcom/mi/mimsgsdk/upload/Attachment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private doMultipartUpload(Ljava/lang/String;Lcom/mi/mimsgsdk/upload/Attachment;Lcom/ksyun/ks3/services/e;ILandroid/content/Context;)V
    .locals 9

    sget-object v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->sInitiateMultipartUploadResultMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mMsgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->sInitiateMultipartUploadResultMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mMsgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksyun/ks3/model/a/b;

    new-instance v1, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/a/b;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/a/b;->b()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0}, Lcom/ksyun/ks3/model/a/b;->c()Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/io/File;

    invoke-virtual {p2}, Lcom/mi/mimsgsdk/upload/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    sget-wide v6, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->PART_SIZE:J

    invoke-direct/range {v1 .. v7}, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/io/File;J)V

    new-instance v3, Lcom/ksyun/ks3/services/request/ListPartsRequest;

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->getUploadId()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v2, v4}, Lcom/ksyun/ks3/services/request/ListPartsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->getBucketName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mBucketName:Ljava/lang/String;

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->getObjectKey()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mObjId:Ljava/lang/String;

    const/4 v5, 0x1

    move-object v2, p0

    move-object v4, p2

    move-object v6, v1

    move v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->listParts(Lcom/ksyun/ks3/services/request/ListPartsRequest;Lcom/mi/mimsgsdk/upload/Attachment;ZLcom/mi/mimsgsdk/upload/UploadPartRequestFactory;ILandroid/content/Context;)V

    :goto_0
    return-void

    :cond_0
    new-instance v1, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mObjId:Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mList:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    invoke-virtual {v1, v0}, Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;->a(Lcom/ksyun/ks3/model/acl/CannedAccessControlList;)V

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->initiateMultipartUpload(Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;Lcom/mi/mimsgsdk/upload/Attachment;Lcom/ksyun/ks3/services/e;ILandroid/content/Context;)V

    goto :goto_0
.end method

.method private doSingleUpload(Ljava/lang/String;Lcom/mi/mimsgsdk/upload/Attachment;Lcom/ksyun/ks3/services/e;)V
    .locals 3

    if-eqz p3, :cond_0

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lcom/mi/mimsgsdk/upload/Attachment;->isLocalPathEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/io/File;

    invoke-virtual {p2}, Lcom/mi/mimsgsdk/upload/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    sget-object v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->TAG:Ljava/lang/String;

    const-string v1, "failed to upload att because there is no res file or no client"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_1
    sget-object v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "upload bucketName = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " objectId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mObjId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/mi/mimsgsdk/utils/GlobalData;->globalUIHandler:Landroid/os/Handler;

    if-nez v0, :cond_2

    sget-object v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->TAG:Ljava/lang/String;

    const-string v1, "GolbalData handler  == null "

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/mi/mimsgsdk/utils/GlobalData;->globalUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$2;-><init>(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;Ljava/lang/String;Lcom/mi/mimsgsdk/upload/Attachment;Lcom/ksyun/ks3/services/e;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private getDefaultClient(Landroid/content/Context;)Lcom/ksyun/ks3/services/e;
    .locals 4

    if-nez p1, :cond_0

    sget-object v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->TAG:Ljava/lang/String;

    const-string v1, "getDefaultCleint context  == null"

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mKs3Client:Lcom/ksyun/ks3/services/e;

    if-nez v0, :cond_1

    sget-object v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->sKs3ClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mMsgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->sKs3ClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mMsgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/ksyun/ks3/services/e;

    iput-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mKs3Client:Lcom/ksyun/ks3/services/e;

    :goto_0
    sget-object v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->sKs3ClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mMsgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mKs3Client:Lcom/ksyun/ks3/services/e;

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mKs3Client:Lcom/ksyun/ks3/services/e;

    return-object v0

    :cond_2
    new-instance v0, Lcom/ksyun/ks3/services/e;

    new-instance v1, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$1;

    invoke-direct {v1, p0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$1;-><init>(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;)V

    invoke-direct {v0, v1, p1}, Lcom/ksyun/ks3/services/e;-><init>(Lcom/ksyun/ks3/services/b;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mKs3Client:Lcom/ksyun/ks3/services/e;

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mKs3Client:Lcom/ksyun/ks3/services/e;

    const-string v1, "chat.mi.com"

    invoke-virtual {v0, v1}, Lcom/ksyun/ks3/services/e;->a(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private initiateMultipartUpload(Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;Lcom/mi/mimsgsdk/upload/Attachment;Lcom/ksyun/ks3/services/e;ILandroid/content/Context;)V
    .locals 7

    sget-object v6, Lcom/mi/mimsgsdk/utils/GlobalData;->globalUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p3

    move-object v4, p2

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$3;-><init>(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;Lcom/ksyun/ks3/services/request/InitiateMultipartUploadRequest;Lcom/ksyun/ks3/services/e;Lcom/mi/mimsgsdk/upload/Attachment;Landroid/content/Context;)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private isAborted()Z
    .locals 4

    sget-object v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->sKs3ClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mMsgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private listParts(Lcom/ksyun/ks3/services/request/ListPartsRequest;Lcom/mi/mimsgsdk/upload/Attachment;ZLcom/mi/mimsgsdk/upload/UploadPartRequestFactory;ILandroid/content/Context;)V
    .locals 8

    sget-object v7, Lcom/mi/mimsgsdk/utils/GlobalData;->globalUIHandler:Landroid/os/Handler;

    new-instance v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;

    move-object v1, p0

    move-object v2, p6

    move-object v3, p1

    move v4, p3

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v0 .. v6}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$5;-><init>(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;Landroid/content/Context;Lcom/ksyun/ks3/services/request/ListPartsRequest;ZLcom/mi/mimsgsdk/upload/UploadPartRequestFactory;Lcom/mi/mimsgsdk/upload/Attachment;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method private onUploadFinished(ZLjava/lang/String;)V
    .locals 4

    sget-object v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->sKs3ClientMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mMsgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mUploadCallBack:Lcom/mi/mimsgsdk/upload/UploadCallBack;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mUploadCallBack:Lcom/mi/mimsgsdk/upload/UploadCallBack;

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->getResourceId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, p2, v1}, Lcom/mi/mimsgsdk/upload/UploadCallBack;->onPostExecute(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_0
    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->sFileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/upload/Attachment;->getAttId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->sFileInfoMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/upload/Attachment;->getAttId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    sget-object v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->sInitiateMultipartUploadResultMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mMsgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p1, :cond_2

    sget-object v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->sInitiateMultipartUploadResultMap:Ljava/util/concurrent/ConcurrentHashMap;

    iget-wide v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mMsgId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method private uploadpart(Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;Lcom/mi/mimsgsdk/upload/Attachment;Landroid/content/Context;)V
    .locals 7

    if-nez p1, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->hasMoreRequests()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/mi/mimsgsdk/utils/GlobalData;->globalUIHandler:Landroid/os/Handler;

    new-instance v1, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;

    invoke-direct {v1, p0, p3, p1, p2}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader$4;-><init>(Lcom/mi/mimsgsdk/upload/Ks3FileUploader;Landroid/content/Context;Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;Lcom/mi/mimsgsdk/upload/Attachment;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    :cond_1
    new-instance v1, Lcom/ksyun/ks3/services/request/ListPartsRequest;

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->getBucketName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->getObjectKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/mi/mimsgsdk/upload/UploadPartRequestFactory;->getUploadId()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v0, v2, v3}, Lcom/ksyun/ks3/services/request/ListPartsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v3, 0x0

    const/4 v4, 0x0

    iget v5, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->type:I

    move-object v0, p0

    move-object v2, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->listParts(Lcom/ksyun/ks3/services/request/ListPartsRequest;Lcom/mi/mimsgsdk/upload/Attachment;ZLcom/mi/mimsgsdk/upload/UploadPartRequestFactory;ILandroid/content/Context;)V

    goto :goto_0
.end method


# virtual methods
.method public generateObjectAcl(Ljava/lang/String;)Lcom/ksyun/ks3/model/acl/CannedAccessControlList;
    .locals 1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/ksyun/ks3/model/acl/CannedAccessControlList;->b:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    :goto_0
    return-object v0

    :cond_0
    const-string v0, "private"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/ksyun/ks3/model/acl/CannedAccessControlList;->a:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    goto :goto_0

    :cond_1
    const-string v0, "public-read-write"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/ksyun/ks3/model/acl/CannedAccessControlList;->c:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    goto :goto_0

    :cond_2
    sget-object v0, Lcom/ksyun/ks3/model/acl/CannedAccessControlList;->b:Lcom/ksyun/ks3/model/acl/CannedAccessControlList;

    goto :goto_0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 3

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "http://mix.chat.mi.com"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "/"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    iget-object v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mObjId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public startUpload(Landroid/content/Context;)Z
    .locals 8

    const-wide/32 v6, 0x500000

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-virtual {v1}, Lcom/mi/mimsgsdk/upload/Attachment;->isLocalPathEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    :cond_0
    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mUploadCallBack:Lcom/mi/mimsgsdk/upload/UploadCallBack;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mUploadCallBack:Lcom/mi/mimsgsdk/upload/UploadCallBack;

    const-string v2, "upload error,local path error"

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->getResourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/mi/mimsgsdk/upload/UploadCallBack;->onPostExecute(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_1
    :goto_0
    return v0

    :cond_2
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/upload/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->isFile()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-nez v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mUploadCallBack:Lcom/mi/mimsgsdk/upload/UploadCallBack;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mUploadCallBack:Lcom/mi/mimsgsdk/upload/UploadCallBack;

    const-string v2, "upload error,file not found or size of file is 0"

    invoke-virtual {p0}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->getResourceId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v0, v2, v3}, Lcom/mi/mimsgsdk/upload/UploadCallBack;->onPostExecute(ZLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_4
    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/upload/Attachment;->getFileSize()J

    move-result-wide v0

    cmp-long v0, v0, v6

    if-ltz v0, :cond_5

    sput-wide v6, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->PART_SIZE:J

    :goto_1
    sget-object v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ks3FileUploader PART_SIZE="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-wide v2, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->PART_SIZE:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-virtual {v0}, Lcom/mi/mimsgsdk/upload/Attachment;->getFileSize()J

    move-result-wide v0

    const-wide/32 v2, 0x100000

    cmp-long v0, v0, v2

    if-ltz v0, :cond_6

    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mBucketName:Ljava/lang/String;

    iget-object v2, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->getDefaultClient(Landroid/content/Context;)Lcom/ksyun/ks3/services/e;

    move-result-object v3

    iget v4, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->type:I

    move-object v0, p0

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->doMultipartUpload(Ljava/lang/String;Lcom/mi/mimsgsdk/upload/Attachment;Lcom/ksyun/ks3/services/e;ILandroid/content/Context;)V

    :goto_2
    const/4 v0, 0x1

    goto :goto_0

    :cond_5
    const-wide/32 v0, 0x7d000

    sput-wide v0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->PART_SIZE:J

    goto :goto_1

    :cond_6
    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mBucketName:Ljava/lang/String;

    iget-object v1, p0, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->mAtt:Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-direct {p0, p1}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->getDefaultClient(Landroid/content/Context;)Lcom/ksyun/ks3/services/e;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->doSingleUpload(Ljava/lang/String;Lcom/mi/mimsgsdk/upload/Attachment;Lcom/ksyun/ks3/services/e;)V

    goto :goto_2
.end method
