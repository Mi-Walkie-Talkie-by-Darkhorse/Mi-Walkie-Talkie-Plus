.class public interface abstract Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;
.super Ljava/lang/Object;
.source "ChannelBufferIndexFinder.java"


# static fields
.field public static final CR:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

.field public static final CRLF:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

.field public static final LF:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

.field public static final LINEAR_WHITESPACE:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

.field public static final NOT_CR:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

.field public static final NOT_CRLF:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

.field public static final NOT_LF:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

.field public static final NOT_LINEAR_WHITESPACE:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

.field public static final NOT_NUL:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

.field public static final NUL:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder$1;

    invoke-direct {v0}, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder$1;-><init>()V

    sput-object v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;->NUL:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    new-instance v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder$2;

    invoke-direct {v0}, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder$2;-><init>()V

    sput-object v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;->NOT_NUL:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    new-instance v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder$3;

    invoke-direct {v0}, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder$3;-><init>()V

    sput-object v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;->CR:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    new-instance v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder$4;

    invoke-direct {v0}, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder$4;-><init>()V

    sput-object v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;->NOT_CR:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    new-instance v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder$5;

    invoke-direct {v0}, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder$5;-><init>()V

    sput-object v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;->LF:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    new-instance v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder$6;

    invoke-direct {v0}, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder$6;-><init>()V

    sput-object v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;->NOT_LF:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    new-instance v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder$7;

    invoke-direct {v0}, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder$7;-><init>()V

    sput-object v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;->CRLF:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    new-instance v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder$8;

    invoke-direct {v0}, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder$8;-><init>()V

    sput-object v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;->NOT_CRLF:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    new-instance v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder$9;

    invoke-direct {v0}, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder$9;-><init>()V

    sput-object v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;->LINEAR_WHITESPACE:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    new-instance v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder$10;

    invoke-direct {v0}, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder$10;-><init>()V

    sput-object v0, Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;->NOT_LINEAR_WHITESPACE:Lorg/jboss/netty/buffer/ChannelBufferIndexFinder;

    return-void
.end method


# virtual methods
.method public abstract find(Lorg/jboss/netty/buffer/ChannelBuffer;I)Z
.end method
