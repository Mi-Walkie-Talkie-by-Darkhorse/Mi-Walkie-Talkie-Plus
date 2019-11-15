.class public Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/tencent/mm/opensdk/modelmsg/WXMediaMessage$IMediaObject;


# static fields
.field private static final FILE_SIZE_LIMIT:I = 0xa00000

.field private static final TAG:Ljava/lang/String; = "MicroMsg.SDK.WXGameVideoFileObject"

.field private static final URL_LENGTH_LIMIT:I = 0x2800


# instance fields
.field public filePath:Ljava/lang/String;

.field public thumbUrl:Ljava/lang/String;

.field public videoUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;->filePath:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;->videoUrl:Ljava/lang/String;

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;->thumbUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;->filePath:Ljava/lang/String;

    iput-object p2, p0, Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;->videoUrl:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;->thumbUrl:Ljava/lang/String;

    return-void
.end method

.method private getFileSize(Ljava/lang/String;)I
    .locals 3

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->length()J

    move-result-wide v0

    long-to-int v0, v0

    goto :goto_0
.end method


# virtual methods
.method public checkArgs()Z
    .locals 4

    const/16 v3, 0x2800

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;->filePath:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;->filePath:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    const-string v1, "MicroMsg.SDK.WXGameVideoFileObject"

    const-string v2, "checkArgs fail, filePath is null"

    invoke-static {v1, v2}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return v0

    :cond_1
    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;->filePath:Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;->getFileSize(Ljava/lang/String;)I

    move-result v1

    const/high16 v2, 0xa00000

    if-le v1, v2, :cond_2

    const-string v1, "MicroMsg.SDK.WXGameVideoFileObject"

    const-string v2, "checkArgs fail, video file size is too large"

    invoke-static {v1, v2}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;->videoUrl:Ljava/lang/String;

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;->videoUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_3

    const-string v1, "MicroMsg.SDK.WXGameVideoFileObject"

    const-string v2, "checkArgs fail, videoUrl is too long"

    invoke-static {v1, v2}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;->thumbUrl:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;->thumbUrl:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v3, :cond_4

    const-string v1, "MicroMsg.SDK.WXGameVideoFileObject"

    const-string v2, "checkArgs fail, thumbUrl is too long"

    invoke-static {v1, v2}, Lcom/tencent/mm/opensdk/utils/Log;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public serialize(Landroid/os/Bundle;)V
    .locals 2

    const-string v0, "_wxvideofileobject_filePath"

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;->filePath:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxvideofileobject_cdnUrl"

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;->videoUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "_wxvideofileobject_thumbUrl"

    iget-object v1, p0, Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;->thumbUrl:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public type()I
    .locals 1

    const/16 v0, 0x27

    return v0
.end method

.method public unserialize(Landroid/os/Bundle;)V
    .locals 1

    const-string v0, "_wxvideofileobject_filePath"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;->filePath:Ljava/lang/String;

    const-string v0, "_wxvideofileobject_cdnUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;->videoUrl:Ljava/lang/String;

    const-string v0, "_wxvideofileobject_thumbUrl"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/tencent/mm/opensdk/modelmsg/WXGameVideoFileObject;->thumbUrl:Ljava/lang/String;

    return-void
.end method
