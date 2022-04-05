.class public final synthetic Lcom/ifengyu/intercom/lite/e/d;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/e/f;

.field private final synthetic b:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

.field private final synthetic c:[B


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/e/f;Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;[B)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/e/d;->a:Lcom/ifengyu/intercom/lite/e/f;

    iput-object p2, p0, Lcom/ifengyu/intercom/lite/e/d;->b:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    iput-object p3, p0, Lcom/ifengyu/intercom/lite/e/d;->c:[B

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/e/d;->a:Lcom/ifengyu/intercom/lite/e/f;

    iget-object v1, p0, Lcom/ifengyu/intercom/lite/e/d;->b:Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    iget-object v2, p0, Lcom/ifengyu/intercom/lite/e/d;->c:[B

    check-cast p1, Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;

    invoke-virtual {v0, v1, v2, p1}, Lcom/ifengyu/intercom/lite/e/f;->a(Lcom/ifengyu/intercom/protos/LiteProtos$DevInfo;[BLcom/ifengyu/intercom/protos/LiteProtos$DevInfo;)Lcom/ifengyu/intercom/lite/models/DeviceModel;

    move-result-object p1

    return-object p1
.end method
