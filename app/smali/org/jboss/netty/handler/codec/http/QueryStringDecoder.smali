.class public Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;
.super Ljava/lang/Object;
.source "QueryStringDecoder.java"


# static fields
.field private static final DEFAULT_MAX_PARAMS:I = 0x400


# instance fields
.field private final charset:Ljava/nio/charset/Charset;

.field private final hasPath:Z

.field private final maxParams:I

.field private nParams:I

.field private params:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private path:Ljava/lang/String;

.field private final uri:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;)V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZI)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;ZI)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gtz p4, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: a positive integer)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    const/16 v0, 0x3b

    const/16 v1, 0x26

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    iput p4, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->maxParams:I

    iput-boolean p3, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->hasPath:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0, p2}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Z)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;)V
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/net/URI;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/lang/String;)V
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    invoke-static {p2}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/net/URI;Ljava/nio/charset/Charset;)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/nio/charset/Charset;)V
    .locals 1

    const/16 v0, 0x400

    invoke-direct {p0, p1, p2, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;-><init>(Ljava/net/URI;Ljava/nio/charset/Charset;I)V

    return-void
.end method

.method public constructor <init>(Ljava/net/URI;Ljava/nio/charset/Charset;I)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "uri"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    if-gtz p3, :cond_2

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "maxParams: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " (expected: a positive integer)"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_2
    invoke-virtual {p1}, Ljava/net/URI;->getRawPath()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->hasPath:Z

    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/net/URI;->getRawQuery()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/16 v1, 0x3b

    const/16 v2, 0x26

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    iput p3, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->maxParams:I

    return-void

    :cond_3
    const-string v0, ""

    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->hasPath:Z

    goto :goto_0
.end method

.method private addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    const/4 v1, 0x1

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->nParams:I

    iget v2, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->maxParams:I

    if-lt v0, v2, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p1, p2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->nParams:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->nParams:I

    move v0, v1

    goto :goto_0
.end method

.method public static decodeComponent(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    invoke-static {p0, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;
    .locals 8

    const v7, 0xffff

    const/16 v6, 0x25

    const/4 v2, 0x0

    if-nez p0, :cond_1

    const-string p0, ""

    :cond_0
    :goto_0
    return-object p0

    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    move v0, v2

    move v1, v2

    :goto_1
    if-ge v0, v4, :cond_2

    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_0
    add-int/lit8 v0, v0, 0x1

    :sswitch_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_2
    if-eqz v1, :cond_0

    new-array v5, v4, [B

    move v1, v2

    move v3, v2

    :goto_3
    if-ge v1, v4, :cond_8

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    sparse-switch v0, :sswitch_data_1

    :goto_4
    add-int/lit8 v2, v3, 0x1

    int-to-byte v0, v0

    aput-byte v0, v5, v3

    move v0, v2

    :goto_5
    add-int/lit8 v1, v1, 0x1

    move v3, v0

    goto :goto_3

    :sswitch_2
    add-int/lit8 v0, v3, 0x1

    const/16 v2, 0x20

    aput-byte v2, v5, v3

    goto :goto_5

    :sswitch_3
    add-int/lit8 v0, v4, -0x1

    if-ne v1, v0, :cond_3

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unterminated escape sequence at end of string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3
    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    if-ne v0, v6, :cond_4

    add-int/lit8 v0, v3, 0x1

    aput-byte v6, v5, v3

    goto :goto_5

    :cond_4
    add-int/lit8 v2, v4, -0x1

    if-ne v1, v2, :cond_5

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "partial escape sequence at end of string: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5
    invoke-static {v0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->decodeHexNibble(C)C

    move-result v0

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->decodeHexNibble(C)C

    move-result v2

    if-eq v0, v7, :cond_6

    if-ne v2, v7, :cond_7

    :cond_6
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "invalid escape sequence `%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v3, v1, -0x1

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\' at index "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    add-int/lit8 v1, v1, -0x2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " of: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_7
    mul-int/lit8 v0, v0, 0x10

    add-int/2addr v0, v2

    int-to-char v0, v0

    goto/16 :goto_4

    :cond_8
    :try_start_0
    new-instance p0, Ljava/lang/String;

    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v5, v0, v3, v1}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    :catch_0
    move-exception v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "unsupported encoding: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Ljava/nio/charset/Charset;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x25 -> :sswitch_0
        0x2b -> :sswitch_1
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x25 -> :sswitch_3
        0x2b -> :sswitch_2
    .end sparse-switch
.end method

.method private static decodeHexNibble(C)C
    .locals 1

    const/16 v0, 0x30

    if-gt v0, p0, :cond_0

    const/16 v0, 0x39

    if-gt p0, v0, :cond_0

    add-int/lit8 v0, p0, -0x30

    int-to-char v0, v0

    :goto_0
    return v0

    :cond_0
    const/16 v0, 0x61

    if-gt v0, p0, :cond_1

    const/16 v0, 0x66

    if-gt p0, v0, :cond_1

    add-int/lit8 v0, p0, -0x61

    add-int/lit8 v0, v0, 0xa

    int-to-char v0, v0

    goto :goto_0

    :cond_1
    const/16 v0, 0x41

    if-gt v0, p0, :cond_2

    const/16 v0, 0x46

    if-gt p0, v0, :cond_2

    add-int/lit8 v0, p0, -0x41

    add-int/lit8 v0, v0, 0xa

    int-to-char v0, v0

    goto :goto_0

    :cond_2
    const v0, 0xffff

    goto :goto_0
.end method

.method private decodeParams(Ljava/lang/String;)V
    .locals 8

    const/4 v3, 0x0

    const/4 v0, 0x0

    new-instance v4, Ljava/util/LinkedHashMap;

    invoke-direct {v4}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v4, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->params:Ljava/util/Map;

    iput v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->nParams:I

    move v2, v0

    move v1, v0

    move-object v0, v3

    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_4

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v6, 0x3d

    if-ne v5, v6, :cond_1

    if-nez v0, :cond_1

    if-eq v1, v2, :cond_0

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    :cond_0
    add-int/lit8 v1, v2, 0x1

    move v7, v1

    move-object v1, v0

    move v0, v7

    :goto_1
    add-int/lit8 v2, v2, 0x1

    move v7, v0

    move-object v0, v1

    move v1, v7

    goto :goto_0

    :cond_1
    const/16 v6, 0x26

    if-ne v5, v6, :cond_8

    if-nez v0, :cond_3

    if-eq v1, v2, :cond_3

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v1, v5}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    const-string v5, ""

    invoke-direct {p0, v4, v1, v5}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7

    :cond_2
    :goto_2
    return-void

    :cond_3
    if-eqz v0, :cond_7

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v5, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v1, v5}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v0, v1}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v1, v3

    :goto_3
    add-int/lit8 v0, v2, 0x1

    goto :goto_1

    :cond_4
    if-eq v1, v2, :cond_6

    if-nez v0, :cond_5

    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v0, v1}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-direct {p0, v4, v0, v1}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_5
    invoke-virtual {p1, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->charset:Ljava/nio/charset/Charset;

    invoke-static {v1, v2}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->decodeComponent(Ljava/lang/String;Ljava/nio/charset/Charset;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v4, v0, v1}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_6
    if-eqz v0, :cond_2

    const-string v1, ""

    invoke-direct {p0, v4, v0, v1}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->addParam(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_2

    :cond_7
    move-object v1, v0

    goto :goto_3

    :cond_8
    move v7, v1

    move-object v1, v0

    move v0, v7

    goto :goto_1
.end method


# virtual methods
.method public getParameters()Ljava/util/Map;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->params:Ljava/util/Map;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->hasPath:Z

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-ne v1, v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->decodeParams(Ljava/lang/String;)V

    :cond_1
    :goto_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->params:Ljava/util/Map;

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_3

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v0

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->decodeParams(Ljava/lang/String;)V

    goto :goto_1
.end method

.method public getPath()Ljava/lang/String;
    .locals 3

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->path:Ljava/lang/String;

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->hasPath:Z

    if-nez v0, :cond_0

    const-string v0, ""

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->path:Ljava/lang/String;

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    const/16 v1, 0x3f

    invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-gez v0, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->path:Ljava/lang/String;

    :cond_1
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->path:Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->uri:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/QueryStringDecoder;->path:Ljava/lang/String;

    goto :goto_0
.end method
