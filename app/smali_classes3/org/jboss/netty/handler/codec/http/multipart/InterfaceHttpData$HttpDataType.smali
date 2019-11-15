.class public final enum Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;
.super Ljava/lang/Enum;
.source "InterfaceHttpData.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "HttpDataType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

.field public static final enum Attribute:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

.field public static final enum FileUpload:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

.field public static final enum InternalAttribute:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    const-string v1, "Attribute"

    invoke-direct {v0, v1, v2}, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;->Attribute:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    const-string v1, "FileUpload"

    invoke-direct {v0, v1, v3}, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;->FileUpload:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    new-instance v0, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    const-string v1, "InternalAttribute"

    invoke-direct {v0, v1, v4}, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;->InternalAttribute:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    const/4 v0, 0x3

    new-array v0, v0, [Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;->Attribute:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    aput-object v1, v0, v2

    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;->FileUpload:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    aput-object v1, v0, v3

    sget-object v1, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;->InternalAttribute:Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    aput-object v1, v0, v4

    sput-object v0, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;->$VALUES:[Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

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

.method public static valueOf(Ljava/lang/String;)Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;
    .locals 1

    const-class v0, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    return-object v0
.end method

.method public static values()[Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;
    .locals 1

    sget-object v0, Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;->$VALUES:[Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    invoke-virtual {v0}, [Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jboss/netty/handler/codec/http/multipart/InterfaceHttpData$HttpDataType;

    return-object v0
.end method
