.class Lcom/ifengyu/intercom/protos/BleProtos$ImportState$a;
.super Ljava/lang/Object;
.source "BleProtos.java"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLiteMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/ifengyu/intercom/protos/BleProtos$ImportState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/protobuf/Internal$EnumLiteMap<",
        "Lcom/ifengyu/intercom/protos/BleProtos$ImportState;",
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
.method public a(I)Lcom/ifengyu/intercom/protos/BleProtos$ImportState;
    .locals 0

    .line 1
    invoke-static {p1}, Lcom/ifengyu/intercom/protos/BleProtos$ImportState;->valueOf(I)Lcom/ifengyu/intercom/protos/BleProtos$ImportState;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic findValueByNumber(I)Lcom/google/protobuf/Internal$EnumLite;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lcom/ifengyu/intercom/protos/BleProtos$ImportState$a;->a(I)Lcom/ifengyu/intercom/protos/BleProtos$ImportState;

    move-result-object p1

    return-object p1
.end method
