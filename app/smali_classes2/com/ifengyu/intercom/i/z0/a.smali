.class public final synthetic Lcom/ifengyu/intercom/i/z0/a;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/i/z0/d;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/i/z0/d;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/i/z0/a;->a:Lcom/ifengyu/intercom/i/z0/d;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/i/z0/a;->a:Lcom/ifengyu/intercom/i/z0/d;

    check-cast p1, Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/i/z0/d;->g0(Lcom/ifengyu/intercom/models/DeviceModel;)V

    return-void
.end method
