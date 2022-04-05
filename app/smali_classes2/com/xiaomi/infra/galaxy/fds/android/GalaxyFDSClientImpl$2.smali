.class Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->putObject(Ljava/lang/String;Ljava/lang/String;Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Ljava/util/List;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)Lcom/xiaomi/infra/galaxy/fds/android/model/PutObjectResult;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;

.field final synthetic val$bucketName:Ljava/lang/String;

.field final synthetic val$buffer:[B

.field final synthetic val$finalObjectName:Ljava/lang/String;

.field final synthetic val$finalPartNumber:I

.field final synthetic val$finalUploadId:Ljava/lang/String;

.field final synthetic val$metadata:Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;

.field final synthetic val$uploadBytes:I


# direct methods
.method constructor <init>(Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[BLcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;I)V
    .locals 0

    iput-object p1, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl$2;->this$0:Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;

    iput-object p2, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl$2;->val$finalUploadId:Ljava/lang/String;

    iput-object p3, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl$2;->val$bucketName:Ljava/lang/String;

    iput-object p4, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl$2;->val$finalObjectName:Ljava/lang/String;

    iput p5, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl$2;->val$finalPartNumber:I

    iput-object p6, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl$2;->val$buffer:[B

    iput-object p7, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl$2;->val$metadata:Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;

    iput p8, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl$2;->val$uploadBytes:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object v0, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl$2;->this$0:Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;

    iget-object v1, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl$2;->val$finalUploadId:Ljava/lang/String;

    iget-object v2, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl$2;->val$bucketName:Ljava/lang/String;

    iget-object v3, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl$2;->val$finalObjectName:Ljava/lang/String;

    iget v4, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl$2;->val$finalPartNumber:I

    new-instance v5, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;

    new-instance v6, Ljava/io/ByteArrayInputStream;

    iget-object v7, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl$2;->val$buffer:[B

    invoke-direct {v6, v7}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object v7, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl$2;->val$metadata:Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;

    const/4 v8, 0x0

    invoke-direct {v5, v6, v7, v8}, Lcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;-><init>(Ljava/io/InputStream;Lcom/xiaomi/infra/galaxy/fds/android/model/ObjectMetadata;Lcom/xiaomi/infra/galaxy/fds/android/model/ProgressListener;)V

    iget v6, p0, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl$2;->val$uploadBytes:I

    int-to-long v6, v6

    invoke-static/range {v0 .. v7}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;->access$000(Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILcom/xiaomi/infra/galaxy/fds/android/util/ObjectInputStream;J)Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/xiaomi/infra/galaxy/fds/android/GalaxyFDSClientImpl$2;->call()Lcom/xiaomi/infra/galaxy/fds/android/model/UploadPartResult;

    move-result-object v0

    return-object v0
.end method
