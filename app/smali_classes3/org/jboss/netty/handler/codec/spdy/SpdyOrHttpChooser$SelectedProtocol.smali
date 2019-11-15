.class public final enum Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;
.super Ljava/lang/Enum;
.source "SpdyOrHttpChooser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "SelectedProtocol"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

.field public static final enum HttpVersion1_0:Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

.field public static final enum HttpVersion1_1:Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

.field public static final enum None:Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

.field public static final enum SpdyVersion2:Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

.field public static final enum SpdyVersion3:Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    const-string v1, "SpdyVersion2"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;->SpdyVersion2:Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    const-string v1, "SpdyVersion3"

    invoke-direct {v0, v1, v3}, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;->SpdyVersion3:Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    const-string v1, "HttpVersion1_1"

    invoke-direct {v0, v1, v4}, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;->HttpVersion1_1:Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    const-string v1, "HttpVersion1_0"

    invoke-direct {v0, v1, v5}, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;->HttpVersion1_0:Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    new-instance v0, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    const-string v1, "None"

    invoke-direct {v0, v1, v6}, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;->None:Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    const/4 v0, 0x5

    new-array v0, v0, [Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;->SpdyVersion2:Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;->SpdyVersion3:Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;->HttpVersion1_1:Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    aput-object v1, v0, v4

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;->HttpVersion1_0:Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    aput-object v1, v0, v5

    sget-object v1, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;->None:Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    aput-object v1, v0, v6

    sput-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;->$VALUES:[Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    return-object v0
.end method

.method public static values()[Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;->$VALUES:[Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    invoke-virtual {v0}, [Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/handler/codec/spdy/SpdyOrHttpChooser$SelectedProtocol;

    return-object v0
.end method
