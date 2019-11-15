.class final Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;
.super Ljava/lang/Object;
.source "UTF8Output.java"


# static fields
.field private static final STATES:[B

.field private static final TYPES:[B

.field private static final UTF8_ACCEPT:I = 0x0

.field private static final UTF8_REJECT:I = 0xc


# instance fields
.field private codep:I

.field private state:I

.field private final stringBuilder:Ljava/lang/StringBuilder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const/16 v0, 0x100

    new-array v0, v0, [B

    fill-array-data v0, :array_0

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->TYPES:[B

    const/16 v0, 0x6c

    new-array v0, v0, [B

    fill-array-data v0, :array_1

    sput-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->STATES:[B

    return-void

    nop

    :array_0
    .array-data 1
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x0t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x1t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0x2t
        0xat
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x3t
        0x4t
        0x3t
        0x3t
        0xbt
        0x6t
        0x6t
        0x6t
        0x5t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
    .end array-data

    :array_1
    .array-data 1
        0x0t
        0xct
        0x18t
        0x24t
        0x3ct
        0x60t
        0x54t
        0xct
        0xct
        0xct
        0x30t
        0x48t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x0t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x0t
        0xct
        0x0t
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x18t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0x24t
        0xct
        0x24t
        0xct
        0xct
        0xct
        0x24t
        0xct
        0xct
        0xct
        0xct
        0xct
        0x24t
        0xct
        0x24t
        0xct
        0xct
        0xct
        0x24t
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
    .end array-data
.end method

.method constructor <init>([B)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->state:I

    new-instance v0, Ljava/lang/StringBuilder;

    array-length v1, p1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iput-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->write([B)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->state:I

    if-eqz v0, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Exception;

    const-string v1, "bytes are not UTF-8"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Exception;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->stringBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public write(I)V
    .locals 3

    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->TYPES:[B

    and-int/lit16 v1, p1, 0xff

    aget-byte v1, v0, v1

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->state:I

    if-eqz v0, :cond_1

    and-int/lit8 v0, p1, 0x3f

    iget v2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->codep:I

    shl-int/lit8 v2, v2, 0x6

    or-int/2addr v0, v2

    :goto_0
    iput v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->codep:I

    sget-object v0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->STATES:[B

    iget v2, p0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->state:I

    add-int/2addr v1, v2

    aget-byte v0, v0, v1

    iput v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->state:I

    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->state:I

    if-nez v0, :cond_2

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->stringBuilder:Ljava/lang/StringBuilder;

    iget v1, p0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->codep:I

    int-to-char v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :cond_0
    return-void

    :cond_1
    const/16 v0, 0xff

    shr-int/2addr v0, v1

    and-int/2addr v0, p1

    goto :goto_0

    :cond_2
    iget v0, p0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->state:I

    const/16 v1, 0xc

    if-ne v0, v1, :cond_0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Exception;

    const-string v1, "bytes are not UTF-8"

    invoke-direct {v0, v1}, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Exception;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public write([B)V
    .locals 3

    array-length v1, p1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    aget-byte v2, p1, v0

    invoke-virtual {p0, v2}, Lorg/jboss/netty/handler/codec/http/websocketx/UTF8Output;->write(I)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method
