.class final Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;
.super Ljava/lang/Object;
.source "HttpPostBodyUtil.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadOptimize;,
        Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$SeekAheadNoBackArrayException;,
        Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil$TransferEncodingMechanism;
    }
.end annotation


# static fields
.field public static final ATTACHMENT:Ljava/lang/String; = "attachment"

.field public static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field public static final DEFAULT_BINARY_CONTENT_TYPE:Ljava/lang/String; = "application/octet-stream"

.field public static final DEFAULT_TEXT_CONTENT_TYPE:Ljava/lang/String; = "text/plain"

.field public static final FILE:Ljava/lang/String; = "file"

.field public static final FILENAME:Ljava/lang/String; = "filename"

.field public static final FORM_DATA:Ljava/lang/String; = "form-data"

.field public static final ISO_8859_1:Ljava/nio/charset/Charset;

.field public static final MULTIPART_MIXED:Ljava/lang/String; = "multipart/mixed"

.field public static final NAME:Ljava/lang/String; = "name"

.field public static final US_ASCII:Ljava/nio/charset/Charset;

.field public static final chunkSize:I = 0x1fa0


# direct methods
.method static constructor <clinit>()V
    .locals 1

    sget-object v0, Lorg/jboss/netty/util/CharsetUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->ISO_8859_1:Ljava/nio/charset/Charset;

    sget-object v0, Lorg/jboss/netty/util/CharsetUtil;->US_ASCII:Ljava/nio/charset/Charset;

    sput-object v0, Lorg/jboss/netty/handler/codec/http/multipart/HttpPostBodyUtil;->US_ASCII:Ljava/nio/charset/Charset;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static findEndOfString(Ljava/lang/String;)I
    .locals 2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    :goto_0
    if-lez v0, :cond_0

    add-int/lit8 v1, v0, -0x1

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_1

    :cond_0
    return v0

    :cond_1
    add-int/lit8 v0, v0, -0x1

    goto :goto_0
.end method

.method static findNonWhitespace(Ljava/lang/String;I)I
    .locals 1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method

.method static findWhitespace(Ljava/lang/String;I)I
    .locals 1

    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-ge p1, v0, :cond_0

    invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C

    move-result v0

    invoke-static {v0}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return p1

    :cond_1
    add-int/lit8 p1, p1, 0x1

    goto :goto_0
.end method
