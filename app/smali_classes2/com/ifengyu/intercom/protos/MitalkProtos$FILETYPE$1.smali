.class final Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE$1;
.super Ljava/lang/Object;
.source "MitalkProtos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;
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
        "Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;",
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
.method public a(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;
    .locals 1

    invoke-static {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;->valueOf(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    move-result-object v0

    return-object v0
.end method

.method public synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 1

    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE$1;->a(I)Lcom/ifengyu/intercom/protos/MitalkProtos$FILETYPE;

    move-result-object v0

    return-object v0
.end method
