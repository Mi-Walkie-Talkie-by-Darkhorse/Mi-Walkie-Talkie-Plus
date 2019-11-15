.class public Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;
.super Ljava/lang/Object;
.source "SpdyStreamStatus.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;",
        ">;"
    }
.end annotation


# static fields
.field public static final CANCEL:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

.field public static final FLOW_CONTROL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

.field public static final FRAME_TOO_LARGE:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

.field public static final INTERNAL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

.field public static final INVALID_CREDENTIALS:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

.field public static final INVALID_STREAM:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

.field public static final PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

.field public static final REFUSED_STREAM:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

.field public static final STREAM_ALREADY_CLOSED:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

.field public static final STREAM_IN_USE:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

.field public static final UNSUPPORTED_VERSION:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;


# instance fields
.field private final code:I

.field private final statusPhrase:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    const/4 v1, 0x1

    const-string v2, "PROTOCOL_ERROR"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    const/4 v1, 0x2

    const-string v2, "INVALID_STREAM"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->INVALID_STREAM:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    const/4 v1, 0x3

    const-string v2, "REFUSED_STREAM"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->REFUSED_STREAM:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    const/4 v1, 0x4

    const-string v2, "UNSUPPORTED_VERSION"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->UNSUPPORTED_VERSION:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    const/4 v1, 0x5

    const-string v2, "CANCEL"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->CANCEL:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    const/4 v1, 0x6

    const-string v2, "INTERNAL_ERROR"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->INTERNAL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    const/4 v1, 0x7

    const-string v2, "FLOW_CONTROL_ERROR"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->FLOW_CONTROL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    const/16 v1, 0x8

    const-string v2, "STREAM_IN_USE"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->STREAM_IN_USE:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    const/16 v1, 0x9

    const-string v2, "STREAM_ALREADY_CLOSED"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->STREAM_ALREADY_CLOSED:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    const/16 v1, 0xa

    const-string v2, "INVALID_CREDENTIALS"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->INVALID_CREDENTIALS:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    const/16 v1, 0xb

    const-string v2, "FRAME_TOO_LARGE"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;-><init>(ILjava/lang/String;)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->FRAME_TOO_LARGE:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "0 is not a valid status code for a RST_STREAM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    if-nez p2, :cond_1

    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "statusPhrase"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    iput p1, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->code:I

    iput-object p2, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->statusPhrase:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(I)Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;
    .locals 3

    if-nez p0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "0 is not a valid status code for a RST_STREAM"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    packed-switch p0, :pswitch_data_0

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UNKNOWN ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;-><init>(ILjava/lang/String;)V

    :goto_0
    return-object v0

    :pswitch_0
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->PROTOCOL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    goto :goto_0

    :pswitch_1
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->INVALID_STREAM:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    goto :goto_0

    :pswitch_2
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->REFUSED_STREAM:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    goto :goto_0

    :pswitch_3
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->UNSUPPORTED_VERSION:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    goto :goto_0

    :pswitch_4
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->CANCEL:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    goto :goto_0

    :pswitch_5
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->INTERNAL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    goto :goto_0

    :pswitch_6
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->FLOW_CONTROL_ERROR:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    goto :goto_0

    :pswitch_7
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->STREAM_IN_USE:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    goto :goto_0

    :pswitch_8
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->STREAM_ALREADY_CLOSED:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    goto :goto_0

    :pswitch_9
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->INVALID_CREDENTIALS:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    goto :goto_0

    :pswitch_a
    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->FRAME_TOO_LARGE:Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    goto :goto_0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method


# virtual methods
.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-virtual {p0, p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->compareTo(Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)I

    move-result v0

    return v0
.end method

.method public compareTo(Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;)I
    .locals 2

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->getCode()I

    move-result v0

    invoke-virtual {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->getCode()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    instance-of v1, p1, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    if-nez v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->getCode()I

    move-result v1

    check-cast p1, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;

    invoke-virtual {p1}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->getCode()I

    move-result v2

    if-ne v1, v2, :cond_0

    const/4 v0, 0x1

    goto :goto_0
.end method

.method public getCode()I
    .locals 1

    iget v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->code:I

    return v0
.end method

.method public getStatusPhrase()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->statusPhrase:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->getCode()I

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    invoke-virtual {p0}, Lorg/jboss/netty/handler/codec/spdy/SpdyStreamStatus;->getStatusPhrase()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
