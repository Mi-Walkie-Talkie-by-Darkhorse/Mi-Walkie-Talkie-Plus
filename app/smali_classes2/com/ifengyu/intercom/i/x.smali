.class public final synthetic Lcom/ifengyu/intercom/i/x;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/i/w0;

.field public final synthetic b:Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

.field public final synthetic c:[B


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/i/w0;Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/i/x;->a:Lcom/ifengyu/intercom/i/w0;

    iput-object p2, p0, Lcom/ifengyu/intercom/i/x;->b:Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    iput-object p3, p0, Lcom/ifengyu/intercom/i/x;->c:[B

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/i/x;->a:Lcom/ifengyu/intercom/i/w0;

    iget-object v1, p0, Lcom/ifengyu/intercom/i/x;->b:Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    iget-object v2, p0, Lcom/ifengyu/intercom/i/x;->c:[B

    check-cast p1, Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;

    invoke-virtual {v0, v1, v2, p1}, Lcom/ifengyu/intercom/i/w0;->a1(Lcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;[BLcom/ifengyu/intercom/protos/BleProtos$DeviceInfo;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p1

    return-object p1
.end method
