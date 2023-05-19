.class public Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;
.super Ljava/lang/Object;
.source "FDSObject.java"

# interfaces
.implements Ljava/io/Closeable;


# instance fields
.field private final bucketName:Ljava/lang/String;

.field private metadata:Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;

.field private objectContent:Ljava/io/InputStream;

.field private final objectName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;->bucketName:Ljava/lang/String;

    .line 3
    iput-object p2, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;->objectName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public close()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;->objectContent:Ljava/io/InputStream;

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {v0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public getBucketName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;->bucketName:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectContent()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;->objectContent:Ljava/io/InputStream;

    return-object v0
.end method

.method public getObjectMetadata()Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;->metadata:Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;

    return-object v0
.end method

.method public getObjectName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;->objectName:Ljava/lang/String;

    return-object v0
.end method

.method public setObjectContent(Ljava/io/InputStream;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;->objectContent:Ljava/io/InputStream;

    return-void
.end method

.method public setObjectMetadata(Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/model/FDSObject;->metadata:Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;

    return-void
.end method
