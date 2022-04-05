.class public final synthetic Lcom/ifengyu/intercom/lite/g/m;
.super Ljava/lang/Object;

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field private final synthetic a:Lcom/ifengyu/intercom/lite/g/t;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/lite/g/t;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/lite/g/m;->a:Lcom/ifengyu/intercom/lite/g/t;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/lite/g/m;->a:Lcom/ifengyu/intercom/lite/g/t;

    check-cast p1, Lcom/ifengyu/intercom/lite/g/r;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/lite/g/t;->a(Lcom/ifengyu/intercom/lite/g/r;)Lcom/ifengyu/intercom/lite/models/DeviceModel;

    move-result-object p1

    return-object p1
.end method
