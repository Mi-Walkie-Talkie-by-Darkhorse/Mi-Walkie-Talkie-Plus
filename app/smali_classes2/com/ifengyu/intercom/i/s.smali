.class public final synthetic Lcom/ifengyu/intercom/i/s;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/i/v0;

.field public final synthetic b:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

.field public final synthetic c:[B


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/i/v0;Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/i/s;->a:Lcom/ifengyu/intercom/i/v0;

    iput-object p2, p0, Lcom/ifengyu/intercom/i/s;->b:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    iput-object p3, p0, Lcom/ifengyu/intercom/i/s;->c:[B

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/i/s;->a:Lcom/ifengyu/intercom/i/v0;

    iget-object v1, p0, Lcom/ifengyu/intercom/i/s;->b:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    iget-object v2, p0, Lcom/ifengyu/intercom/i/s;->c:[B

    check-cast p1, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    invoke-virtual {v0, v1, v2, p1}, Lcom/ifengyu/intercom/i/v0;->W0(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;[BLcom/ifengyu/intercom/protos/LiteProtos$DevInfo;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p1

    return-object p1
.end method
