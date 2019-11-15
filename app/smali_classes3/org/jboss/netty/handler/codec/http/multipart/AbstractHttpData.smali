.class public abstract Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;
.super Ljava/lang/Object;
.source "AbstractHttpData.java"

# interfaces
.implements Lorg/jboss/netty/handler/codec/http/multipart/HttpData;


# static fields
.field private static final REPLACE_PATTERN:Ljava/util/regex/Pattern;

.field private static final STRIP_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field protected charset:Ljava/nio/charset/Charset;

.field protected completed:Z

.field protected definedSize:J

.field protected final name:Ljava/lang/String;

.field protected size:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "(?:^\\s+|\\s+$|\\n)"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->STRIP_PATTERN:Ljava/util/regex/Pattern;

    const-string v0, "[\\r\\t]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->REPLACE_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;J)V
    .locals 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lorg/jboss/netty/handler/codec/http/HttpConstants;->DEFAULT_CHARSET:Ljava/nio/charset/Charset;

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->charset:Ljava/nio/charset/Charset;

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "name"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->REPLACE_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, " "

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->STRIP_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "empty name"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->name:Ljava/lang/String;

    if-eqz p2, :cond_2

    invoke-virtual {p0, p2}, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->setCharset(Ljava/nio/charset/Charset;)V

    :cond_2
    iput-wide p3, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->definedSize:J

    return-void
.end method


# virtual methods
.method public getCharset()Ljava/nio/charset/Charset;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->charset:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public isCompleted()Z
    .locals 1

    iget-boolean v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->completed:Z

    return v0
.end method

.method public length()J
    .locals 2

    iget-wide v0, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->size:J

    return-wide v0
.end method

.method public setCharset(Ljava/nio/charset/Charset;)V
    .locals 2

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "charset"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/http/multipart/AbstractHttpData;->charset:Ljava/nio/charset/Charset;

    return-void
.end method
