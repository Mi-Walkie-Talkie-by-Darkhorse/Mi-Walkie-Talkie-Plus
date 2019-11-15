.class Lorg/jboss/netty/handler/codec/serialization/CompactObjectInputStream;
.super Ljava/io/ObjectInputStream;
.source "CompactObjectInputStream.java"


# instance fields
.field private final classResolver:Lorg/jboss/netty/handler/codec/serialization/ClassResolver;


# direct methods
.method constructor <init>(Ljava/io/InputStream;Lorg/jboss/netty/handler/codec/serialization/ClassResolver;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p1}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "classResolver"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p2, p0, Lorg/jboss/netty/handler/codec/serialization/CompactObjectInputStream;->classResolver:Lorg/jboss/netty/handler/codec/serialization/ClassResolver;

    return-void
.end method


# virtual methods
.method protected readClassDescriptor()Ljava/io/ObjectStreamClass;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/serialization/CompactObjectInputStream;->read()I

    move-result v0

    if-gez v0, :cond_0

    new-instance v0, Ljava/io/EOFException;

    invoke-direct {v0}, Ljava/io/EOFException;-><init>()V

    throw v0

    :cond_0
    packed-switch v0, :pswitch_data_0

    new-instance v1, Ljava/io/StreamCorruptedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected class descriptor type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    :pswitch_0
    invoke-super {p0}, Ljava/io/ObjectInputStream;->readClassDescriptor()Ljava/io/ObjectStreamClass;

    move-result-object v0

    :cond_1
    :goto_0
    return-object v0

    :pswitch_1
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/serialization/CompactObjectInputStream;->readUTF()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/serialization/CompactObjectInputStream;->classResolver:Lorg/jboss/netty/handler/codec/serialization/ClassResolver;

    invoke-interface {v1, v0}, Lorg/jboss/netty/handler/codec/serialization/ClassResolver;->resolve(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-static {v1}, Ljava/io/ObjectStreamClass;->lookup(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    if-nez v0, :cond_1

    invoke-static {v1}, Ljava/io/ObjectStreamClass;->lookupAny(Ljava/lang/Class;)Ljava/io/ObjectStreamClass;

    move-result-object v0

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected readStreamHeader()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/serialization/CompactObjectInputStream;->readByte()B

    move-result v0

    and-int/lit16 v0, v0, 0xff

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    new-instance v1, Ljava/io/StreamCorruptedException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unsupported version: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_0
    return-void
.end method

.method protected resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/ObjectStreamClass;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    :try_start_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/serialization/CompactObjectInputStream;->classResolver:Lorg/jboss/netty/handler/codec/serialization/ClassResolver;

    invoke-virtual {p1}, Ljava/io/ObjectStreamClass;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lorg/jboss/netty/handler/codec/serialization/ClassResolver;->resolve(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    :goto_0
    return-object v0

    :catch_0
    move-exception v0

    invoke-super {p0, p1}, Ljava/io/ObjectInputStream;->resolveClass(Ljava/io/ObjectStreamClass;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0
.end method
