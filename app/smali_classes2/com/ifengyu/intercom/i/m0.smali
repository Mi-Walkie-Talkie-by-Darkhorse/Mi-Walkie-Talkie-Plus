.class public final synthetic Lcom/ifengyu/intercom/i/m0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Function;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/i/y0;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/i/y0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/i/m0;->a:Lcom/ifengyu/intercom/i/y0;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/i/m0;->a:Lcom/ifengyu/intercom/i/y0;

    check-cast p1, Ljava/lang/String;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/i/y0;->M0(Ljava/lang/String;)Lcom/ifengyu/intercom/device/oldDevice/v/a;

    move-result-object p1

    return-object p1
.end method
