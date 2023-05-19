.class public final synthetic Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/c;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lio/reactivex/functions/Consumer;


# instance fields
.field public final synthetic a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;


# direct methods
.method public synthetic constructor <init>(Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/c;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .locals 1

    iget-object v0, p0, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/c;->a:Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;

    check-cast p1, Ljava/lang/Throwable;

    invoke-virtual {v0, p1}, Lcom/ifengyu/intercom/device/oldDevice/dolphin/update/k;->o(Ljava/lang/Throwable;)V

    return-void
.end method
