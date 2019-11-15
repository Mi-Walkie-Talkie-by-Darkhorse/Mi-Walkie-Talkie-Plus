.class public Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
.super Ljava/lang/Object;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bouncycastle/crypto/params/SkeinParameters;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Builder"
.end annotation


# instance fields
.field private parameters:Ljava/util/Hashtable;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    return-void
.end method

.method public constructor <init>(Ljava/util/Hashtable;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    invoke-virtual {p1}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    invoke-virtual {p1, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method

.method public constructor <init>(Lorg/bouncycastle/crypto/params/SkeinParameters;)V
    .locals 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    invoke-direct {v0}, Ljava/util/Hashtable;-><init>()V

    iput-object v0, p0, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/bouncycastle/crypto/params/SkeinParameters;->access$000(Lorg/bouncycastle/crypto/params/SkeinParameters;)Ljava/util/Hashtable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Hashtable;->keys()Ljava/util/Enumeration;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    iget-object v2, p0, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/bouncycastle/crypto/params/SkeinParameters;->access$000(Lorg/bouncycastle/crypto/params/SkeinParameters;)Ljava/util/Hashtable;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v0, v3}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public build()Lorg/bouncycastle/crypto/params/SkeinParameters;
    .locals 3

    new-instance v0, Lorg/bouncycastle/crypto/params/SkeinParameters;

    iget-object v1, p0, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/bouncycastle/crypto/params/SkeinParameters;-><init>(Ljava/util/Hashtable;Lorg/bouncycastle/crypto/params/SkeinParameters$1;)V

    return-object v0
.end method

.method public set(I[B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    .locals 2

    const/4 v1, 0x4

    if-nez p2, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter value must not be null."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-eqz p1, :cond_2

    if-le p1, v1, :cond_1

    const/16 v0, 0x3f

    if-ge p1, v0, :cond_1

    const/16 v0, 0x30

    if-ne p1, v0, :cond_2

    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter types must be in the range 0,5..47,49..62."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    if-ne p1, v1, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Parameter type 4 is reserved for internal use."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    iget-object v0, p0, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->parameters:Ljava/util/Hashtable;

    invoke-static {p1}, Lorg/bouncycastle/util/Integers;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p0
.end method

.method public setKey([B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setKeyIdentifier([B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    .locals 1

    const/16 v0, 0x10

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setNonce([B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    .locals 1

    const/16 v0, 0x14

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPersonalisation(Ljava/util/Date;Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "YYYYMMDD"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    const/16 v1, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Byte I/O failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setPersonalisation(Ljava/util/Date;Ljava/util/Locale;Ljava/lang/String;Ljava/lang/String;)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    .locals 4

    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v1, Ljava/io/OutputStreamWriter;

    const-string v2, "UTF-8"

    invoke-direct {v1, v0, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;Ljava/lang/String;)V

    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "YYYYMMDD"

    invoke-direct {v2, v3, p2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    invoke-virtual {v2, p1}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1, p3}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1, p4}, Ljava/io/OutputStreamWriter;->write(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/OutputStreamWriter;->close()V

    const/16 v1, 0x8

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    invoke-virtual {p0, v1, v0}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Byte I/O failed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public setPersonalisation([B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    .locals 1

    const/16 v0, 0x8

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;

    move-result-object v0

    return-object v0
.end method

.method public setPublicKey([B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;
    .locals 1

    const/16 v0, 0xc

    invoke-virtual {p0, v0, p1}, Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;->set(I[B)Lorg/bouncycastle/crypto/params/SkeinParameters$Builder;

    move-result-object v0

    return-object v0
.end method
