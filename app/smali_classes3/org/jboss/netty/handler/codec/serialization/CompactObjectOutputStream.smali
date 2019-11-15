.class Lorg/jboss/netty/handler/codec/serialization/CompactObjectOutputStream;
.super Ljava/io/ObjectOutputStream;
.source "CompactObjectOutputStream.java"


# static fields
.field static final TYPE_FAT_DESCRIPTOR:I = 0x0

.field static final TYPE_THIN_DESCRIPTOR:I = 0x1


# direct methods
.method constructor <init>(Ljava/io/OutputStream;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method protected writeClassDescriptor(Ljava/io/ObjectStreamClass;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->forClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->isPrimitive()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->isArray()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/Class;->isInterface()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getSerialVersionUID()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/serialization/CompactObjectOutputStream;->write(I)V

    invoke-super {p0, p1}, Ljava/io/ObjectOutputStream;->writeClassDescriptor(Ljava/io/ObjectStreamClass;)V

    :goto_0
    return-void

    :cond_1
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/serialization/CompactObjectOutputStream;->write(I)V

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/serialization/CompactObjectOutputStream;->writeUTF(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected writeStreamHeader()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Lorg/jboss/netty/handler/codec/serialization/CompactObjectOutputStream;->writeByte(I)V

    return-void
.end method
