.class public Lcom/mi/mimsgsdk/upload/Attachment;
.super Ljava/lang/Object;
.source "Attachment.java"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final AUTH_TYPE_AVATAR:I = 0x1

.field public static final AUTH_TYPE_DEFAULT:I = 0x0

.field public static final AUTH_TYPE_FEED_BACK:I = 0x2

.field public static final PLAIN_TEXT_MIME_TYPE:Ljava/lang/String; = "text/plain"

.field private static final TAG:Ljava/lang/String;

.field public static final TYPE_AUDIO:I = 0x3

.field public static final TYPE_IMAGE:I = 0x2

.field public static final TYPE_TEXT:I = 0x1


# instance fields
.field public attId:J

.field public authType:I

.field public duration:I

.field private extData:[B

.field private extType:J

.field public fileSize:J

.field public filename:Ljava/lang/String;

.field private height:I

.field public localPath:Ljava/lang/String;

.field public localUri:Ljava/lang/String;

.field public mimeType:Ljava/lang/String;

.field private objectKey:Ljava/lang/String;

.field private resourceId:Ljava/lang/String;

.field private size:I

.field private text:Ljava/lang/String;

.field private type:I

.field private url:Ljava/lang/String;

.field private width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-class v0, Lcom/mi/mimsgsdk/upload/Attachment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/mi/mimsgsdk/upload/Attachment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/mimsgsdk/upload/Attachment;->authType:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/mi/mimsgsdk/upload/Attachment;->authType:I

    const-string v0, "text/plain"

    iput-object v0, p0, Lcom/mi/mimsgsdk/upload/Attachment;->mimeType:Ljava/lang/String;

    invoke-static {p1}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->generateAttachmentId(Landroid/content/Context;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/mi/mimsgsdk/upload/Attachment;->attId:J

    return-void
.end method

.method public static isAudioMimeType(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "audio/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isImageMimeType(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "image/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isTextMimeType(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "text/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static isVideoMimeType(Ljava/lang/String;)Z
    .locals 2

    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video/"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public getAttId()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/upload/Attachment;->attId:J

    return-wide v0
.end method

.method public getDuration()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/upload/Attachment;->duration:I

    return v0
.end method

.method public getExtData()[B
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Attachment;->extData:[B

    return-object v0
.end method

.method public getExtType()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/upload/Attachment;->extType:J

    return-wide v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Attachment;->filename:Ljava/lang/String;

    return-object v0
.end method

.method public getFileSize()J
    .locals 2

    iget-wide v0, p0, Lcom/mi/mimsgsdk/upload/Attachment;->fileSize:J

    return-wide v0
.end method

.method public getHeight()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/upload/Attachment;->height:I

    return v0
.end method

.method public getLocalPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Attachment;->localPath:Ljava/lang/String;

    return-object v0
.end method

.method public getLocalUri()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Attachment;->localUri:Ljava/lang/String;

    return-object v0
.end method

.method public getMimeType()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Attachment;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public getObjectKey()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Attachment;->objectKey:Ljava/lang/String;

    return-object v0
.end method

.method public getResourceId()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Attachment;->resourceId:Ljava/lang/String;

    return-object v0
.end method

.method public getSize()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/upload/Attachment;->size:I

    return v0
.end method

.method public getSuffixFromLocalPath()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Attachment;->localPath:Ljava/lang/String;

    invoke-static {v0}, Lcom/mi/mimsgsdk/upload/AttachmentUtils;->getSuffixFromFilePath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Attachment;->text:Ljava/lang/String;

    return-object v0
.end method

.method public getType()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/upload/Attachment;->type:I

    return v0
.end method

.method public getUrl()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Attachment;->url:Ljava/lang/String;

    return-object v0
.end method

.method public getWidth()I
    .locals 1

    iget v0, p0, Lcom/mi/mimsgsdk/upload/Attachment;->width:I

    return v0
.end method

.method public isLocalPathEmpty()Z
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Attachment;->localPath:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public needUpload()Z
    .locals 1

    iget-object v0, p0, Lcom/mi/mimsgsdk/upload/Attachment;->resourceId:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    return v0
.end method

.method public setAttId(J)V
    .locals 1

    iput-wide p1, p0, Lcom/mi/mimsgsdk/upload/Attachment;->attId:J

    return-void
.end method

.method public setDuration(I)V
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/upload/Attachment;->duration:I

    return-void
.end method

.method public setExtData([B)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/upload/Attachment;->extData:[B

    return-void
.end method

.method public setExtType(J)V
    .locals 1

    iput-wide p1, p0, Lcom/mi/mimsgsdk/upload/Attachment;->extType:J

    return-void
.end method

.method public setFileName(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/upload/Attachment;->filename:Ljava/lang/String;

    return-void
.end method

.method public setFileSize(J)V
    .locals 1

    iput-wide p1, p0, Lcom/mi/mimsgsdk/upload/Attachment;->fileSize:J

    return-void
.end method

.method public setHeight(I)V
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/upload/Attachment;->height:I

    return-void
.end method

.method public setLocalPath(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/upload/Attachment;->localPath:Ljava/lang/String;

    return-void
.end method

.method public setLocalUri(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/upload/Attachment;->localUri:Ljava/lang/String;

    return-void
.end method

.method public setMimeType(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/upload/Attachment;->mimeType:Ljava/lang/String;

    return-void
.end method

.method public setObjectKey(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/upload/Attachment;->objectKey:Ljava/lang/String;

    return-void
.end method

.method public setResourceId(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/upload/Attachment;->resourceId:Ljava/lang/String;

    return-void
.end method

.method public setSize(I)V
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/upload/Attachment;->size:I

    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/upload/Attachment;->text:Ljava/lang/String;

    return-void
.end method

.method public setType(I)V
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/upload/Attachment;->type:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/mi/mimsgsdk/upload/Attachment;->url:Ljava/lang/String;

    return-void
.end method

.method public setWidth(I)V
    .locals 0

    iput p1, p0, Lcom/mi/mimsgsdk/upload/Attachment;->width:I

    return-void
.end method
