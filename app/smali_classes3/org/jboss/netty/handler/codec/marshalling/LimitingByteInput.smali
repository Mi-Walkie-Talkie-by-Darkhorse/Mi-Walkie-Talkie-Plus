.class Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;
.super Ljava/lang/Object;
.source "LimitingByteInput.java"

# interfaces
.implements Lorg/jboss/marshalling/ByteInput;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;
    }
.end annotation


# static fields
.field private static final EXCEPTION:Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;


# instance fields
.field private final input:Lorg/jboss/marshalling/ByteInput;

.field private final limit:J

.field private read:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;

    invoke-direct {v0}, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;-><init>()V

    sput-object v0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->EXCEPTION:Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;

    return-void
.end method

.method public constructor <init>(Lorg/jboss/marshalling/ByteInput;J)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-gtz v0, :cond_0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "The limit MUST be > 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    iput-object p1, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->input:Lorg/jboss/marshalling/ByteInput;

    iput-wide p2, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->limit:J

    return-void
.end method

.method private readable(I)I
    .locals 6

    int-to-long v0, p1

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->limit:J

    iget-wide v4, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->read:J

    sub-long/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    long-to-int v0, v0

    return v0
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->input:Lorg/jboss/marshalling/ByteInput;

    invoke-interface {v0}, Lorg/jboss/marshalling/ByteInput;->available()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->readable(I)I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public read()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->readable(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v0, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->input:Lorg/jboss/marshalling/ByteInput;

    invoke-interface {v0}, Lorg/jboss/marshalling/ByteInput;->read()I

    move-result v0

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->read:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->read:J

    return v0

    :cond_0
    sget-object v0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->EXCEPTION:Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;

    throw v0
.end method

.method public read([B)I
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, v0, v1}, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0, p3}, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->readable(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->input:Lorg/jboss/marshalling/ByteInput;

    invoke-interface {v1, p1, p2, v0}, Lorg/jboss/marshalling/ByteInput;->read([BII)I

    move-result v0

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->read:J

    int-to-long v4, v0

    add-long/2addr v2, v4

    iput-wide v2, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->read:J

    return v0

    :cond_0
    sget-object v0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->EXCEPTION:Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;

    throw v0
.end method

.method public skip(J)J
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    long-to-int v0, p1

    invoke-direct {p0, v0}, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->readable(I)I

    move-result v0

    if-lez v0, :cond_0

    iget-object v1, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->input:Lorg/jboss/marshalling/ByteInput;

    int-to-long v2, v0

    invoke-interface {v1, v2, v3}, Lorg/jboss/marshalling/ByteInput;->skip(J)J

    move-result-wide v0

    iget-wide v2, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->read:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->read:J

    return-wide v0

    :cond_0
    sget-object v0, Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput;->EXCEPTION:Lorg/jboss/netty/handler/codec/marshalling/LimitingByteInput$TooBigObjectException;

    throw v0
.end method
