.class public final synthetic Lcom/ifengyu/intercom/l/b/e/l;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/l/b/e/u;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/l/b/e/u;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/l/b/e/l;->a:Lcom/ifengyu/intercom/l/b/e/u;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/l/b/e/l;->a:Lcom/ifengyu/intercom/l/b/e/u;

    check-cast p1, Lcom/ifengyu/intercom/models/DeviceModel;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/l/b/e/u;->J(Lcom/ifengyu/intercom/models/DeviceModel;)V

    return-void
.end method
