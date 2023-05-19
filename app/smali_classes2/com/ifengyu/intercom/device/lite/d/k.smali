.class public final synthetic Lcom/ifengyu/intercom/device/lite/d/k;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/lite/d/t;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/lite/d/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/lite/d/k;->a:Lcom/ifengyu/intercom/device/lite/d/t;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/lite/d/k;->a:Lcom/ifengyu/intercom/device/lite/d/t;

    check-cast p1, Lcom/ifengyu/intercom/device/lite/d/r;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/lite/d/t;->l(Lcom/ifengyu/intercom/device/lite/d/r;)Lcom/ifengyu/intercom/models/DeviceModel;

    move-result-object p1

    return-object p1
.end method
