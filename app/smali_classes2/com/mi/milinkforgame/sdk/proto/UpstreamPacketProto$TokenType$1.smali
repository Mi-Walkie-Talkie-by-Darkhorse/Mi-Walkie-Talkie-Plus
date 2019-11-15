.class final Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType$1;
.super Ljava/lang/Object;
.source "UpstreamPacketProto.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap",
        "<",
        "Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType$1;->findValueByNumber(I)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;

    move-result-object v0

    return-object v0
.end method

.method public findValueByNumber(I)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;
    .locals 1

    invoke-static {p1}, Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;->valueOf(I)Lcom/mi/milinkforgame/sdk/proto/UpstreamPacketProto$TokenType;

    move-result-object v0

    return-object v0
.end method
