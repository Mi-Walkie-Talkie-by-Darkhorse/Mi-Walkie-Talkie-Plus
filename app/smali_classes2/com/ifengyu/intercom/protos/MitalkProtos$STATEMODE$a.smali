.class final Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE$a;
.super Ljava/lang/Object;
.source "MitalkProtos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE$a;->findValueByNumber(I)Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object p1

    return-object p1
.end method

.method public findValueByNumber(I)Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;
    .locals 0

    .line 2
    invoke-static {p1}, Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;->valueOf(I)Lcom/ifengyu/intercom/protos/MitalkProtos$STATEMODE;

    move-result-object p1

    return-object p1
.end method
