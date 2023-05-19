.class public final synthetic Lcom/ifengyu/intercom/i/h0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/i/x0;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/i/x0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/i/h0;->a:Lcom/ifengyu/intercom/i/x0;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/i/h0;->a:Lcom/ifengyu/intercom/i/x0;

    check-cast p1, Lcom/ifengyu/intercom/device/oldDevice/v/a;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/i/x0;->Q0(Lcom/ifengyu/intercom/device/oldDevice/v/a;)V

    return-void
.end method
