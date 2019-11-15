.class public Lcom/mi/mimsgsdk/upload/UploadFileLoader;
.super Ljava/lang/Object;
.source "UploadFileLoader.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static final instance:Lcom/mi/mimsgsdk/upload/UploadFileLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/mimsgsdk/upload/UploadFileLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->TAG:Ljava/lang/String;

    new-instance v0, Lcom/mi/mimsgsdk/upload/UploadFileLoader;

    invoke-direct {v0}, Lcom/mi/mimsgsdk/upload/UploadFileLoader;-><init>()V

    sput-object v0, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->instance:Lcom/mi/mimsgsdk/upload/UploadFileLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/mi/mimsgsdk/upload/UploadFileLoader;
    .locals 1

    sget-object v0, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->instance:Lcom/mi/mimsgsdk/upload/UploadFileLoader;

    return-object v0
.end method


# virtual methods
.method public startUploadFile(Landroid/content/Context;Lcom/mi/mimsgsdk/upload/Attachment;Lcom/mi/mimsgsdk/upload/UploadCallBack;I)Z
    .locals 14

    sget-object v2, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->TAG:Ljava/lang/String;

    const-string v3, "startUploadFile()"

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    invoke-virtual/range {p2 .. p2}, Lcom/mi/mimsgsdk/upload/Attachment;->isLocalPathEmpty()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    const/4 v2, 0x0

    :goto_0
    return v2

    :cond_1
    invoke-static {p1}, Lcom/mi/mimsgsdk/utils/Network;->hasNetwork(Landroid/content/Context;)Z

    move-result v2

    if-nez v2, :cond_2

    sget-object v2, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->TAG:Ljava/lang/String;

    const-string v3, "network_offline_warning"

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v2, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "no available network, upload type = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto :goto_0

    :cond_2
    invoke-virtual/range {p2 .. p2}, Lcom/mi/mimsgsdk/upload/Attachment;->needUpload()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-virtual/range {p2 .. p2}, Lcom/mi/mimsgsdk/upload/Attachment;->isLocalPathEmpty()Z

    move-result v2

    if-nez v2, :cond_6

    :try_start_0
    new-instance v2, Ljava/io/File;

    invoke-virtual/range {p2 .. p2}, Lcom/mi/mimsgsdk/upload/Attachment;->getLocalPath()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmp-long v3, v4, v6

    if-eqz v3, :cond_3

    invoke-virtual {v2}, Ljava/io/File;->length()J

    move-result-wide v4

    long-to-int v3, v4

    int-to-long v4, v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v5}, Lcom/mi/mimsgsdk/upload/Attachment;->setFileSize(J)V

    invoke-static {v2}, Lcom/ksyun/ks3/a/c;->b(Ljava/io/File;)Ljava/lang/String;

    move-result-object v5

    sget-object v2, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "start upload file, file Md5 = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    sget-object v2, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "date: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Lcom/ksyun/ks3/a/b;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " suffix: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual/range {p2 .. p2}, Lcom/mi/mimsgsdk/upload/Attachment;->getSuffixFromLocalPath()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual/range {p2 .. p2}, Lcom/mi/mimsgsdk/upload/Attachment;->getAttId()J

    move-result-wide v2

    const-string v4, "PUT"

    invoke-virtual/range {p2 .. p2}, Lcom/mi/mimsgsdk/upload/Attachment;->getMimeType()Ljava/lang/String;

    move-result-object v6

    invoke-static {}, Lcom/ksyun/ks3/a/b;->a()Ljava/lang/String;

    move-result-object v7

    const-string v8, ""

    invoke-virtual/range {p2 .. p2}, Lcom/mi/mimsgsdk/upload/Attachment;->getSuffixFromLocalPath()Ljava/lang/String;

    move-result-object v9

    move/from16 v10, p4

    invoke-static/range {v2 .. v10}, Lcom/mi/mimsgsdk/upload/FileUploadSenderWorker;->getKs3AuthToken(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;

    move-result-object v2

    if-eqz v2, :cond_5

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getAuthorization()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getFileInfo()Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;

    move-result-object v4

    if-eqz v4, :cond_4

    sget-object v3, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->TAG:Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "start to upload file, file info = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v4}, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :try_start_1
    invoke-virtual {v4}, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;->getObjectKey()Ljava/lang/String;

    move-result-object v3

    const-string v5, "utf-8"

    invoke-static {v3, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_2

    move-result-object v3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "http://mix.chat.mi.com"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/mi/mimsgsdk/upload/Attachment;->setUrl(Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;->getObjectKey()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/mi/mimsgsdk/upload/Attachment;->setObjectKey(Ljava/lang/String;)V

    sget-object v3, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "before upload after get token url is "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v3, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;

    invoke-virtual {v4}, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;->getBucket()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4}, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;->getObjectKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lcom/mi/mimsgsdk/proto/BCKS3$FileInfo;->getAcl()Ljava/lang/String;

    move-result-object v7

    invoke-virtual/range {p2 .. p2}, Lcom/mi/mimsgsdk/upload/Attachment;->getAttId()J

    move-result-wide v8

    invoke-virtual {v2}, Lcom/mi/mimsgsdk/proto/BCKS3$AuthResponse;->getDate()Ljava/lang/String;

    move-result-object v12

    move-object/from16 v4, p2

    move-object/from16 v11, p3

    move/from16 v13, p4

    invoke-direct/range {v3 .. v13}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;-><init>(Lcom/mi/mimsgsdk/upload/Attachment;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/mi/mimsgsdk/upload/UploadCallBack;Ljava/lang/String;I)V

    invoke-virtual {v3, p1}, Lcom/mi/mimsgsdk/upload/Ks3FileUploader;->startUpload(Landroid/content/Context;)Z

    move-result v2

    goto/16 :goto_0

    :cond_3
    :try_start_2
    sget-object v2, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->TAG:Ljava/lang/String;

    const-string v3, "file has been deleted or not exist"

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/FileNotFoundException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_0
    move-exception v2

    sget-object v3, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/FileNotFoundException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_1
    move-exception v2

    sget-object v3, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->TAG:Ljava/lang/String;

    invoke-virtual {v2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :catch_2
    move-exception v2

    sget-object v3, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->TAG:Ljava/lang/String;

    const-string v4, "e"

    invoke-static {v3, v4, v2}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_4
    sget-object v2, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->TAG:Ljava/lang/String;

    const-string v3, "failed to upload the att because file info is null!"

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_5
    sget-object v2, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->TAG:Ljava/lang/String;

    const-string v3, "upload file but got no response"

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_0

    :cond_6
    sget-object v2, Lcom/mi/mimsgsdk/upload/UploadFileLoader;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "upload failed, the attachment has been uploaded to the ks3 cloud, upload type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/mi/milinkforgame/sdk/client/ClientLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v2, 0x0

    goto/16 :goto_0
.end method
