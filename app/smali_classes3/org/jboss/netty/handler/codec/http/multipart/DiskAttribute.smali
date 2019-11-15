.class public Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;
.super Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;
.source "DiskAttribute.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/multipart/Attribute;


# static fields
.field public static baseDirectory:Ljava/lang/String; = null

.field public static deleteOnExitTemporaryFile:Z = false

.field public static final postfix:Ljava/lang/String; = ".att"

.field public static final prefix:Ljava/lang/String; = "Attr_"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x1

    sput-boolean v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->deleteOnExitTemporaryFile:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v3}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    const-wide/16 v2, 0x0

    invoke-direct {p0, p1, v0, v2, v3}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V

    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->setValue(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-interface {p1}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v0

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->definedSize:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_0

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->definedSize:J

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->size:J

    int-to-long v6, v0

    add-long/2addr v4, v6

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->size:J

    int-to-long v0, v0

    add-long/2addr v0, v2

    iput-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->definedSize:J

    :cond_0
    invoke-super {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractDiskHttpData;->addContent(Lorg/jboss/netty/buffer/ChannelBuffer;Z)V

    return-void
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->compareTo(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/codec/http/multipart/Attribute;)I
    .locals 2

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;)I
    .locals 3

    instance-of v0, p1, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/ClassCastException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Cannot compare "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->getHttpDataType()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;->getHttpDataType()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    check-cast p1, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->compareTo(Lorg/jboss/netty/handler/codec/http/multipart/Attribute;)I

    move-result v0

    return v0
.end method

.method protected deleteOnExit()Z
    .locals 1

    sget-boolean v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->deleteOnExitTemporaryFile:Z

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    instance-of v0, p1, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    check-cast p1, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1}, Lorg/jboss/netty/handler/codec/http/multipart/Attribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method protected getBaseDirectory()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->baseDirectory:Ljava/lang/String;

    return-object v0
.end method

.method protected getDiskFilename()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".att"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHttpDataType()Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;->Attribute:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    return-object v0
.end method

.method protected getPostfix()Ljava/lang/String;
    .locals 1

    const-string v0, ".att"

    return-object v0
.end method

.method protected getPrefix()Ljava/lang/String;
    .locals 1

    const-string v0, "Attr_"

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->get()[B

    move-result-object v0

    new-instance v1, Ljava/lang/String;

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v2}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    return-object v1
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "value"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lorg/jboss/netty/buffer/ChannelBuffers;->wrappedBuffer([B)Lorg/jboss/netty/buffer/ChannelBuffer;

    move-result-object v0

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->definedSize:J

    const-wide/16 v4, 0x0

    cmp-long v1, v2, v4

    if-lez v1, :cond_1

    invoke-interface {v0}, Lorg/jboss/netty/buffer/ChannelBuffer;->readableBytes()I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->definedSize:J

    :cond_1
    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->setContent(Lorg/jboss/netty/buffer/ChannelBuffer;)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/multipart/DiskAttribute;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "=IoException"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
