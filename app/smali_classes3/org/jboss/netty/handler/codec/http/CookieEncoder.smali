.class public Lorg/jboss/netty/handler/codec/http/CookieEncoder;
.super Ljava/lang/Object;
.source "CookieEncoder.java"


# instance fields
.field private final cookies:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lorg/jboss/netty/handler/codec/http/Cookie;",
            ">;"
        }
    .end annotation
.end field

.field private final server:Z


# direct methods
.method public constructor <init>(Z)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->cookies:Ljava/util/Set;

    iput-boolean p1, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->server:Z

    return-void
.end method

.method private static add(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    if-nez p2, :cond_0

    const-string v0, ""

    invoke-static {p0, p1, v0}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->addQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    :cond_0
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-virtual {p2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    sparse-switch v1, :sswitch_data_0

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :sswitch_0
    invoke-static {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->addQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-static {p0, p1, p2}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->addUnquoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    nop

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_0
        0x20 -> :sswitch_0
        0x22 -> :sswitch_0
        0x28 -> :sswitch_0
        0x29 -> :sswitch_0
        0x2c -> :sswitch_0
        0x2f -> :sswitch_0
        0x3a -> :sswitch_0
        0x3b -> :sswitch_0
        0x3c -> :sswitch_0
        0x3d -> :sswitch_0
        0x3e -> :sswitch_0
        0x3f -> :sswitch_0
        0x40 -> :sswitch_0
        0x5b -> :sswitch_0
        0x5c -> :sswitch_0
        0x5d -> :sswitch_0
        0x7b -> :sswitch_0
        0x7d -> :sswitch_0
    .end sparse-switch
.end method

.method private static addQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    const/16 v3, 0x22

    if-nez p2, :cond_0

    const-string p2, ""

    :cond_0
    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v0, "\\"

    const-string v1, "\\\\"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "\""

    const-string v2, "\\\""

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private static addUnquoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3d

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3b

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    return-void
.end method

.method private encodeClientSide()Ljava/lang/String;
    .locals 7

    const/16 v6, 0x22

    const/4 v5, 0x1

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->cookies:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/Cookie;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getVersion()I

    move-result v3

    if-lt v3, v5, :cond_1

    const-string v3, "$Version"

    invoke-static {v1, v3, v5}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    :cond_1
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_2

    const-string v3, "$Path"

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_3

    const-string v3, "$Domain"

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v3, v4}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getVersion()I

    move-result v3

    if-lt v3, v5, :cond_0

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPorts()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    const/16 v3, 0x24

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const-string v3, "Port"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v3, 0x3d

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPorts()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x2c

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_4
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    invoke-virtual {v1, v0, v6}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/16 v0, 0x3b

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_5
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_6

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_6
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private encodeServerSide()Ljava/lang/String;
    .locals 12

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->cookies:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "encode() can encode only one cookie on server mode: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->cookies:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " cookies added"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->cookies:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/Cookie;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getValue()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getMaxAge()I

    move-result v1

    const/high16 v4, -0x80000000

    if-eq v1, v4, :cond_2

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getVersion()I

    move-result v1

    if-nez v1, :cond_9

    const-string v1, "Expires"

    new-instance v4, Lorg/jboss/netty/handler/codec/http/CookieDateFormat;

    invoke-direct {v4}, Lorg/jboss/netty/handler/codec/http/CookieDateFormat;-><init>()V

    new-instance v5, Ljava/util/Date;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getMaxAge()I

    move-result v8

    int-to-long v8, v8

    const-wide/16 v10, 0x3e8

    mul-long/2addr v8, v10

    add-long/2addr v6, v8

    invoke-direct {v5, v6, v7}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v4, v5}, Lorg/jboss/netty/handler/codec/http/CookieDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->addUnquoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getVersion()I

    move-result v1

    if-lez v1, :cond_a

    const-string v1, "Path"

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_2
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getVersion()I

    move-result v1

    if-lez v1, :cond_b

    const-string v1, "Domain"

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_4
    :goto_3
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->isSecure()Z

    move-result v1

    if-eqz v1, :cond_5

    const-string v1, "Secure"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_5
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->isHttpOnly()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "HTTPOnly"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3b

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_6
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getVersion()I

    move-result v1

    const/4 v4, 0x1

    if-lt v1, v4, :cond_1

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getComment()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_7

    const-string v1, "Comment"

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getComment()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    const-string v1, "Version"

    const/4 v4, 0x1

    invoke-static {v2, v1, v4}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getCommentUrl()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_8

    const-string v1, "CommentURL"

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getCommentUrl()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->addQuoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPorts()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "Port"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x3d

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x22

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPorts()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_4
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x2c

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_4

    :cond_9
    const-string v1, "Max-Age"

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getMaxAge()I

    move-result v4

    invoke-static {v2, v1, v4}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->add(Ljava/lang/StringBuilder;Ljava/lang/String;I)V

    goto/16 :goto_1

    :cond_a
    const-string v1, "Path"

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->addUnquoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_b
    const-string v1, "Domain"

    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v1, v4}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->addUnquoted(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_c
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    const/16 v4, 0x22

    invoke-virtual {v2, v1, v4}, Ljava/lang/StringBuilder;->setCharAt(IC)V

    const/16 v1, 0x3b

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_d
    invoke-interface {v0}, Lorg/jboss/netty/handler/codec/http/Cookie;->isDiscard()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Discard"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v0, 0x3b

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_0

    :cond_e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_f

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    add-int/lit8 v0, v0, -0x2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->setLength(I)V

    :cond_f
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public addCookie(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->cookies:Ljava/util/Set;

    new-instance v1, Lorg/jboss/netty/handler/codec/http/DefaultCookie;

    invoke-direct {v1, p1, p2}, Lorg/jboss/netty/handler/codec/http/DefaultCookie;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addCookie(Lorg/jboss/netty/handler/codec/http/Cookie;)V
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->cookies:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public encode()Ljava/lang/String;
    .locals 2

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->server:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->encodeServerSide()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iget-object v1, p0, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->cookies:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    return-object v0

    :cond_0
    invoke-direct {p0}, Lorg/jboss/netty/handler/codec/http/CookieEncoder;->encodeClientSide()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
