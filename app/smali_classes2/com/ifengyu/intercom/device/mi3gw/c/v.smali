.class public final synthetic Lcom/ifengyu/intercom/device/mi3gw/c/v;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/mi3gw/c/d0;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/mi3gw/c/d0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/mi3gw/c/v;->a:Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/mi3gw/c/v;->a:Lcom/ifengyu/intercom/device/mi3gw/c/d0;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/mi3gw/c/d0;->I(Ljava/util/ArrayList;)V

    return-void
.end method
